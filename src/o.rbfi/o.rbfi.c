/*
 Written by John MacCallum, The Center for New Music and Audio Technologies,
 University of California, Berkeley.  Copyright (c) 2009, The Regents of
 the University of California (Regents).
 Permission to use, copy, modify, distribute, and distribute modified versions
 of this software and its documentation without fee and without a signed
 licensing agreement, is hereby granted, provided that the above copyright
 notice, this paragraph and the following two paragraphs appear in all copies,
 modifications, and distributions.
 
 IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
 SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING
 OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS
 BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 
 REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
 HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
 MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
 
 
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 NAME: rbfi
 DESCRIPTION: A 2-D graphical display/editor like pictctrl but supporting multiple points.
 AUTHORS: John MacCallum
 COPYRIGHT_YEARS: 2009
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 VERSION 0.1: Added labels, and the ability to lock the display so that no new points can be added
 VERSION 0.1.1: added critical sections and fixed a memory leak
 VERSION 0.2: points are now output in the order in which they were entered
 VERSION 0.3: Added a middle outlet to output the distances from the current point to all others
 VERSION 0.4: New algorithm, ability to reshape it by dragging concentric circles
 VERSION 0.5: Points are now stored in a linked hashtable so that we can operate on them by name
 VERSION 0.6: Lots of bugfixes and UI features:  dump, add_point, etc.
 VERSION 0.6.1: Now rescales properly and fixes a problem where a black line would appear at the bottom of the window when resizing
 VERSION 0.7: Reworked the mouse interaction to be closer to Ali's js version and more sane than prev versions of this obj
 VERSION 0.7.1: added add_point message and implemented a more sane scheme for choosing colors when none are supplied by the user
 VERSION 0.7.2: got rid of index stuff
 VERSION 0.7.3: uses layers to redraw the background only when needed
 VERSION 0.7.4: mouse stuff works for real this time
 VERSION 0.7.5: preset parameters can be adjusted by name
 VERSION 0.7.6: dump now outputs key value pairs
 VERSION 0.7.7: circle radii are now specified in [0-1]
 VERSION 0.7.8: locked presets are now grayed out and the mouse position outlet works
 VERSION 0.7.9: fixed a bug that would cause a crash in the anything routine
 VERSION 0.7.10: fixed a bug in the way points were being cleared
 VERSION 0.7.11: fixed the coords message which was upside down with respect to the y-axis
 VERSION 0.8: points now saved with patcher
 VERSION 0.8.1: added patchercoords argument to add_point message for faking drag and drop
 VERSION 0.8.2: added getnumpoints message, and fixed capslog bug
 VERSION 0.9: nested spaces--each point can now have it's own space
 VERSION 0.9.1: works properly in pres mode
 VERSION 0.9.2: mouse coords are correct when mouse_active_beyond_rect is off.
 VERSION 0.9.3: got rid of a nipple that would occur when the innner_radius > outer_radius
 VERSION 0.9.4: changed the format of the dump message
 VERSION 0.9.5: middle outlet now works properly
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */

//#include "version.h"
//#include "version.c"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "jpatcher_api.h"
#include "jgraphics.h"
#include "ext_critical.h"
#include "math.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_u.h"

#include "osc_message_s.h"
#include "osc_bundle_s.h"

#include "omax_util.h"
#include "o.h"

#ifdef WIN32
#include "../../../SDK/MaxSDK-5/c74support/max-includes/common/commonsyms.c"
#else
#include <mach/mach_time.h>
#endif

typedef struct _rbfi{
	t_jbox ob;
	void *outlet;
	t_osc_bndl_u *bndl;
    long nweights;
	t_critical lock;
	int font_size;
	t_jrgba xhaircolor, labelcolor;
	t_pt pt;
	double xx, yy;
} t_rbfi;

static t_symbol *l_color, *l_points, *l_xhairs;
static t_class *rbfi_class;

static t_symbol *ps_FullPacket;

static t_osc_bndl_u *rbfi_defaults;
static t_osc_bndl_u *rbfi_required;
#define rbfi_num_req_msgs 2

#define RBFI_NAME_ADDRESS "/name"
#define RBFI_COORDS_ADDRESS "/coords"
#define RBFI_RGB_ADDRESS "/color/rgb"
#define RBFI_IR_ADDRESS "/radius/inner"
#define RBFI_OR_ADDRESS "/radius/outer"
#define RBFI_LOCKED_ADDRESS "/locked"

void rbfi_fullPacket(t_rbfi *x, t_symbol *msg, int argc, t_atom *argv);
static void rbfi_paint(t_rbfi *x, t_object *patcherview);
static void rbfi_bang(t_rbfi *x);
static void rbfi_getDoubleArrayForAddress(t_rbfi *x, t_osc_bndl_u *b, char *address, int n, double *f);
static double rbfi_getDoubleForAddress(t_rbfi *x, t_osc_bndl_u *b, char *address);
static void rbfi_getCoords(t_rbfi *x, t_osc_bndl_u *b, double *xx, double *yy);
static void rbfi_getRGB(t_rbfi *x, t_osc_bndl_u *b, t_jrgba *rgb);
static double rbfi_getInnerRadius(t_rbfi *x, t_osc_bndl_u *b);
static double rbfi_getOuterRadius(t_rbfi *x, t_osc_bndl_u *b);
static void rbfi_computeWeights(t_rbfi *x,
                                double xx,
                                double yy,
                                long n,
                                double *xcoords,
                                double *ycoords,
                                double *inner_radii,
                                double *outer_radii,
                                double *alphas,
                                double *betas,
                                double *weights);

static t_pt rbfi_stow(t_rbfi *x, t_rect s, t_pt sp);
static t_pt rbfi_wtos(t_rbfi *x, t_rect s, t_pt sp);
static double rbfi_computeWeightFromDistances(double d1, double d2);
static double rbfi_computeExponentFromDistances(double d1, double d2);
static double rbfi_scale(double f, double min_in, double max_in, double min_out, double max_out);
static double rbfi_clip(double f, double min, double max);
static void RGBtoHSV( double r, double g, double b, double *h, double *s, double *v );
static void HSVtoRGB( double *r, double *g, double *b, double h, double s, double v );
void *rbfi_new(t_symbol *msg, int argc, t_atom *argv);
static t_max_err rbfi_notify(t_rbfi *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

// errors
void rbfi_postReqArgErr(t_rbfi *x, t_osc_bndl_u *b);

static void rbfi_dofullPacket(t_rbfi *x, long len, long ptr)
{
	t_osc_bndl_u *b = NULL;
	osc_bundle_s_deserialize(len, (char *)ptr, &b);
	if(!b){
		return;
	}
	t_osc_msg_ar_u *p = NULL;
	osc_bundle_u_lookupAddress(b, "/p/*", &p, 1);

	critical_enter(x->lock);
    long count = 0;
	if(p){
		osc_bundle_u_clear(x->bndl);
		int n = osc_message_array_u_getLen(p);
		for(int i = 0; i < n; i++)
        {
			t_osc_msg_u *m = osc_message_array_u_get(p, i);
			t_osc_atom_u *a = NULL;
			osc_message_u_getArg(m, 0, &a);
			if(osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG){
				t_osc_bndl_u *bb = osc_atom_u_getBndl(a);
				t_osc_bndl_u *bbcopy = NULL;
				osc_bundle_u_union(bb, rbfi_defaults, &bbcopy);
				t_osc_bndl_u *intersection = NULL;
				osc_bundle_u_intersection(bbcopy, rbfi_required, &intersection);
				if(osc_bundle_u_getMsgCount(intersection) != rbfi_num_req_msgs){
					rbfi_postReqArgErr(x, intersection);
					osc_bundle_u_free(bbcopy);
					osc_bundle_u_free(b);
					osc_bundle_u_free(intersection);
					osc_message_array_u_free(p);
					return;
				}
				t_osc_msg_u *mm = osc_message_u_alloc();
				osc_message_u_setAddress(mm, osc_message_u_getAddress(m));
				osc_message_u_appendBndl_u(mm, bbcopy);
				osc_bundle_u_addMsgWithoutDups(x->bndl, mm);
				osc_bundle_u_free(intersection);
                
                count++;
			}else{
                
			}
		}
		osc_message_array_u_free(p);
	}
	osc_bundle_u_free(b);
    x->nweights = count;
	critical_exit(x->lock);
	jbox_invalidate_layer((t_object *)x, NULL, l_color);
	jbox_redraw(&(x->ob));
}

void rbfi_fullPacket(t_rbfi *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
    rbfi_dofullPacket(x, len, ptr);
}

static void rbfi_paint(t_rbfi *x, t_object *patcherview)
{
	t_rect rect;
    
	t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
    
	/*
     jgraphics_set_source_jrgba(g, &(x->bordercolor));
     jgraphics_set_line_width(g, 1);
     jgraphics_rectangle(g, 0., 0., rect.width, rect.height);
     jgraphics_stroke(g);
     */
	/*
     jgraphics_set_source_jrgba(g, &(x->bgcolor));
     jgraphics_rectangle(g, 0., 0., rect.width, rect.height);
     jgraphics_fill(g);
     */
    
	t_osc_bndl_u *b = NULL;
	critical_enter(x->lock);
	osc_bundle_u_copy(&b, x->bndl);
	critical_exit(x->lock);
    
	// this has been hoisted out of rbfi_computeWeights().  if left there, it would have to
	// be done for every object on every pixel
	long nmsgs = osc_bundle_u_getMsgCount(b);
	double xcoords[nmsgs];
	double ycoords[nmsgs];
	double inner_radii[nmsgs];
	double outer_radii[nmsgs];
	double alphas[nmsgs];
	double betas[nmsgs];
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(b);
	int i = 0;
	while(osc_bndl_it_u_hasNext(it)){
		t_osc_msg_u *m = osc_bndl_it_u_next(it);
		t_osc_atom_u *a = NULL;
		osc_message_u_getArg(m, 0, &a);
		if(osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG){
			t_osc_bndl_u *bb = osc_atom_u_getBndl(a);
			rbfi_getCoords(x, bb, xcoords + i, ycoords + i);
			inner_radii[i] = rbfi_getInnerRadius(x, bb);
			outer_radii[i] = rbfi_getOuterRadius(x, bb);
			alphas[i] = rbfi_computeWeightFromDistances(inner_radii[i], outer_radii[i]);
			betas[i] = rbfi_computeExponentFromDistances(inner_radii[i], outer_radii[i]);
		}
		i++;
	}
	osc_bndl_it_u_destroy(it);
	{
		t_jgraphics *glayer = jbox_start_layer((t_object *)x, patcherview, l_color, rect.width, rect.height);
        
		if(glayer){
			t_jsurface *s = jgraphics_image_surface_create(JGRAPHICS_FORMAT_ARGB32, rect.width, rect.height);
			t_rect srect = rect;
			t_rect drect = rect;
			srect.x = srect.y = drect.x = drect.y = 0.;
			if(1){
				double s = rect.width / 128.;
				srect.width = 128.;
				srect.height = ceil(rect.height / s);
			}else{
			}
			// color
			{
				int i, j, k;
				int w = srect.width;
				int h = srect.height;
				double sum;
				double weights[nmsgs];
				for(i = 0; i < w; i++){
					for(j = 0; j < h; j++){
						sum = 0;
						t_jrgba color = {0., 0., 0., 1.};
						double ii = (double)i / (double)w;
						double jj = ((double)h - j) / (double)h;
						//rbfi_computeWeights__(x, ii, jj, rect, b, nmsgs, weights);
						rbfi_computeWeights(x, ii, jj, nmsgs, xcoords, ycoords, inner_radii, outer_radii, alphas, betas, weights);
						k = 0;
						t_osc_bndl_it_u *it = osc_bndl_it_u_get(b);
						while(osc_bndl_it_u_hasNext(it)){
							t_osc_msg_u *m = osc_bndl_it_u_next(it);
							t_osc_atom_u *a = NULL;
							osc_message_u_getArg(m, 0, &a);
							if(!a){
								continue;
							}
							if(osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG){
								t_osc_bndl_u *bb = osc_atom_u_getBndl(a);
								t_jrgba rgb;
								rbfi_getRGB(x, bb, &rgb);
								color.red += weights[k] * rgb.red;
								color.green += weights[k] * rgb.green;
								color.blue += weights[k] * rgb.blue;
								sum += weights[k];
							}
							k++;
						}
						osc_bndl_it_u_destroy(it);
						color.red /= sum;
						color.green /= sum;
						color.blue /= sum;
						jgraphics_image_surface_set_pixel(s, i, j, color);
					}
				}
			}
			jgraphics_image_surface_draw(glayer, s, srect, drect);
			if(s){
				jgraphics_surface_destroy(s);
			}
		}
		jbox_end_layer((t_object *)x, patcherview, l_color);
		jbox_paint_layer((t_object *)x, patcherview, l_color, 0, 0);
	}
	{
		printf("%f %f %f %f\n", x->pt.x, x->pt.y, x->xx, x->yy);
		jgraphics_move_to(g, x->pt.x, x->pt.y);
		jgraphics_line_to(g, x->xx, x->yy);
		jgraphics_stroke(g);
	}
	// draw points
	{
		/*
         jgraphics_set_line_width(g, 1);
         t_point *p = x->spaces->points;
         critical_enter(x->lock);
         t_jrgba white = {1., 1., 1., 1.};
         t_jrgba gray = {.75, .75, .75, 1.};
         while(p){
         if(p == x->spaces->selected){
         jgraphics_set_source_jrgba(g, &(white));
         }else{
         jgraphics_set_source_jrgba(g, &(gray));
         }
         t_jrgba color;
         t_pt pt = p->pt;
         pt.x = rbfi_scale(pt.x, x->xmin, x->xmax, 0, rect.width);
         pt.y = rbfi_scale(pt.y, x->ymin, x->ymax, rect.height, 0);
         {
         if(x->always_draw_circles == 1 && (x->modifiers ^ 0x2) && (x->modifiers ^ 0x12)){
         if(p->locked){
         color = gray;
         }else{
         color = white;
         }
         jgraphics_set_dash(g, NULL, 0, 0);
         jgraphics_set_line_width(g, 2.);
         jgraphics_set_source_jrgba(g, &color);
         jgraphics_ellipse(g, pt.x - p->inner_radius * rect.width, pt.y - p->inner_radius * rect.width, p->inner_radius * rect.width * 2, p->inner_radius * rect.width * 2);
         jgraphics_stroke(g);
         }else if(x->modifiers & 0x2){
         if(p == x->spaces->selected){
         if((p->mousestate == INSIDE_INNER_CIRCLE) || (p->mousestate == ON_INNER_CIRCLE)){
         color = white;
         }else{
         color = gray;
         }
         }else{
         color = gray;
         }
         if(p->locked){
         color = gray;
         }
         
         jgraphics_set_dash(g, NULL, 0, 0);
         jgraphics_set_line_width(g, 2.);
         jgraphics_set_source_jrgba(g, &color);
         jgraphics_ellipse(g, pt.x - p->inner_radius * rect.width, pt.y - p->inner_radius * rect.width, p->inner_radius * rect.width * 2, p->inner_radius * rect.width * 2);
         jgraphics_stroke(g);
         }
         
         if(x->always_draw_circles == 1 && (x->modifiers ^ 0x2) && (x->modifiers ^ 0x12)){
         if(p->locked){
         color = gray;
         }else{
         color = white;
         }
         jgraphics_set_dash(g, (double[2]){3., 3.}, 2, 0);
         jgraphics_set_line_width(g, 1.);
         jgraphics_set_source_jrgba(g, &color);
         jgraphics_ellipse(g, pt.x - p->outer_radius * rect.width, pt.y - p->outer_radius * rect.width, p->outer_radius * rect.width * 2, p->outer_radius * rect.width * 2);
         jgraphics_stroke(g);
         }else if(x->modifiers & 0x2){
         if(p == x->spaces->selected){
         if((p->mousestate == INSIDE_INNER_CIRCLE) || (p->mousestate == ON_OUTER_CIRCLE)){
         color = white;
         }else{
         color = gray;
         }
         }else{
         color = gray;
         }
         if(p->locked){
         color = gray;
         }
         jgraphics_set_dash(g, (double[2]){3., 3.}, 2, 0);
         jgraphics_set_line_width(g, 1.);
         jgraphics_set_source_jrgba(g, &color);
         jgraphics_ellipse(g, pt.x - p->outer_radius * rect.width, pt.y - p->outer_radius * rect.width, p->outer_radius * rect.width * 2, p->outer_radius * rect.width * 2);
         jgraphics_stroke(g);
         }
         }
         
         {
         if(x->always_draw_labels && (x->modifiers ^ 0x2) && (x->modifiers ^ 0x12)){
         if(p->locked){
         color = gray;
         }else{
         color = white;
         }
         
         if(p->locked){
         jgraphics_select_font_face(g, "Arial", JGRAPHICS_FONT_SLANT_ITALIC, JGRAPHICS_FONT_WEIGHT_NORMAL);
         }else{
         jgraphics_select_font_face(g, "Arial", JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_NORMAL);
         }
         jgraphics_set_source_jrgba(g, &(color));
         jgraphics_set_font_size(g, x->font_size);
         double w, h;
         jgraphics_text_measure(g, p->label->s_name, &w, &h);
         jgraphics_move_to(g, pt.x - (w / 2.), pt.y + (h / 2.) - 1);
         jgraphics_show_text(g, p->label->s_name);
         }else if(x->modifiers & 0x2){
         if(p == x->spaces->selected){
         if(p->mousestate & 0xful){
         color = white;
         }else{
         color = gray;
         }
         }else{
         color = gray;
         }
         
         if(p->locked){
         jgraphics_select_font_face(g, "Arial", JGRAPHICS_FONT_SLANT_ITALIC, JGRAPHICS_FONT_WEIGHT_NORMAL);
         color = gray;
         }else{
         jgraphics_select_font_face(g, "Arial", JGRAPHICS_FONT_SLANT_NORMAL, JGRAPHICS_FONT_WEIGHT_NORMAL);
         }
         
         jgraphics_set_source_jrgba(g, &(color));
         jgraphics_set_font_size(g, x->font_size);
         double w, h;
         jgraphics_text_measure(g, p->label->s_name, &w, &h);
         jgraphics_move_to(g, pt.x - (w / 2.), pt.y + (h / 2.) - 1);
         jgraphics_show_text(g, p->label->s_name);
         }
         }
         jgraphics_stroke(g);
         
         p = p->next;
         }
         critical_exit(x->lock);
         */
	}
    
	/*
     jgraphics_set_dash(g, NULL, 0, 0);
     // draw mouse cursor
     {
     jgraphics_set_source_jrgba(g, &(x->xhaircolor));
     jgraphics_move_to(g, x->xhairs.x - 4, x->xhairs.y - 4);
     jgraphics_line_to(g, x->xhairs.x + 4, x->xhairs.y + 4);
     jgraphics_move_to(g, x->xhairs.x + 4, x->xhairs.y - 4);
     jgraphics_line_to(g, x->xhairs.x - 4, x->xhairs.y + 4);
     jgraphics_stroke(g);
     }
     */
}

static void rbfi_output(t_rbfi *x)
{
	long len = 0;
	char *p = NULL;
	critical_enter(x->lock);
	osc_bundle_u_serialize(x->bndl, &len, &p);
	if(p){
		omax_util_outletOSC(x->outlet, len, p);
	}
	critical_exit(x->lock);
}

static void rbfi_bang(t_rbfi *x)
{
	rbfi_output(x);
}

/*
 static void rbfi_computeWeights(t_rbfi *x, t_pt coords, t_rect r, t_point *points, int nweights, double *weights)
 {
 critical_enter(x->lock);
 t_point *p = points;
 int i = 0;
 double sum = 0;
 while(p){
 if((p->inner_radius == 0.0) && (p->outer_radius == 0.0)){
 weights[i] = 0;
 p = p->next;
 continue;
 }
 t_pt pt = p->pt;
 pt.x = rbfi_scale(pt.x, x->xmin, x->xmax, 0, r.width);
 pt.y = rbfi_scale(pt.y, x->ymin, x->ymax, r.height, 0);
 if(coords.x == pt.x && coords.y == pt.y){
 if(p->inner_radius > p->outer_radius){
 if(p->outer_radius == 0){
 weights[i] = 1. / p->inner_radius;
 }else{
 weights[i] = 0.0;
 }
 }else if(p->inner_radius == 0){
 weights[i] = 1. / p->outer_radius;
 }else{
 memset(weights, 0, nweights * sizeof(double));
 weights[i] = 1.;
 }
 critical_exit(x->lock);
 return;
 }else{
 
 if(p->outer_radius == 0){
 weights[i] = 1. / p->inner_radius;
 }else if(p->inner_radius == 0){
 weights[i] = 1. / p->outer_radius;
 }else{
 double d = sqrt(pow(coords.x - pt.x, 2.) + pow(coords.y - pt.y, 2.));
 weights[i] = pow(1. / d, p->exponent) * p->weight;
 if(isinf(weights[i])){
 memset(weights, 0, nweights * sizeof(double));
 weights[i] = 1.;
 critical_exit(x->lock);
 return;
 }
 }
 }
 sum += weights[i];
 p = p->next;
 i++;
 }
 critical_exit(x->lock);
 for(i = 0; i < nweights; i++){
 weights[i] /= sum;
 }
 }
 */

static void rbfi_getDoubleArrayForAddress(t_rbfi *x, t_osc_bndl_u *b, char *address, int n, double *f)
{
	t_osc_msg_ar_u *ar = NULL;
	t_osc_msg_u *m = NULL;
	osc_bundle_u_lookupAddress(b, address, &ar, 1);
	if(ar){
		if(osc_message_array_u_getLen(ar) > 0){
			m = osc_message_array_u_get(ar, 0);
		}else{
			object_error((t_object *)x, "couldn't find data at address %s\n", address);
			osc_message_array_u_free(ar);
			return;
		}
	}else{
		object_error((t_object *)x, "couldn't find message for address %s\n", address);
		return;
	}
	long argc = osc_message_u_getArgCount(m);
	if(argc < n){
		object_error((t_object *)x, "expected %d args for message %s but found %d\n", n, address, argc);
		osc_message_array_u_free(ar);
		return;
	}
	for(int i = 0; i < n; i++){
		t_osc_atom_u *a = NULL;
		osc_message_u_getArg(m, i, &a);
		f[i] = osc_atom_u_getDouble(a);
	}
	osc_message_array_u_free(ar);
}

static double rbfi_getDoubleForAddress(t_rbfi *x, t_osc_bndl_u *b, char *address)
{
	double f = 0;
	rbfi_getDoubleArrayForAddress(x, b, address, 1, &f);
	return f;
}

static void rbfi_getCoords(t_rbfi *x, t_osc_bndl_u *b, double *xx, double *yy)
{
	double ar[2];
	rbfi_getDoubleArrayForAddress(x, b, RBFI_COORDS_ADDRESS, 2, ar);
	*xx = ar[0];
	*yy = ar[1];
}

static void rbfi_getRGB(t_rbfi *x, t_osc_bndl_u *b, t_jrgba *rgb)
{
	double ar[3];
	rbfi_getDoubleArrayForAddress(x, b, RBFI_RGB_ADDRESS, 3, ar);
	rgb->red = ar[0];
	rgb->green = ar[1];
	rgb->blue = ar[2];
}

static double rbfi_getInnerRadius(t_rbfi *x, t_osc_bndl_u *b)
{
	return rbfi_getDoubleForAddress(x, b, RBFI_IR_ADDRESS);
}

static double rbfi_getOuterRadius(t_rbfi *x, t_osc_bndl_u *b)
{
	return rbfi_getDoubleForAddress(x, b, RBFI_OR_ADDRESS);
}

static void rbfi_computeWeights(t_rbfi *x,
                                double xx,
                                double yy,
                                long n,
                                double *xcoords,
                                double *ycoords,
                                double *inner_radii,
                                double *outer_radii,
                                double *alphas,
                                double *betas,
                                double *weights)
{
	double sum = 0;
	for(int i = 0; i < n; i++){
		double xxx = xcoords[i];
		double yyy = ycoords[i];
		double ir = inner_radii[i];
		double or = outer_radii[i];
		if(xx == xxx && yy == yyy){
			// we're exactly on a point
			if(ir > or){
				if(or == 0){
					weights[i] = 1. / ir;
				}else{
					weights[i] = 0.;
				}
			}else if(ir == 0){
				weights[i] = 1. / or;
			}else{
				memset(weights, 0, n * sizeof(double));
				weights[i] = 1.;
			}
			return;
		}else{
			if(or == 0){
				weights[i] = 1. / ir;
			}else if(ir == 0){
				weights[i] = 1. / or;
			}else{
				double alpha = alphas[i];
				double beta = betas[i];
				double d = sqrt(pow(xxx - xx, 2.) + pow(yyy - yy, 2.));
				weights[i] = pow(1. / d, beta) * alpha;
				if(isinf(weights[i])){
					memset(weights, 0, n * sizeof(double));
					weights[i] = 1.;
					return;
				}
			}
		}
		sum += weights[i];
	}
	for(int i = 0; i < n; i++){
		weights[i] /= sum;
	}
}

static void rbfi_computeWeights__(t_rbfi *x,
                                  double xx,
                                  double yy,
                                  t_rect r,
                                  t_osc_bndl_u *bndl,
                                  int nweights,
                                  double *weights)
{
	critical_enter(x->lock);
	int i = 0;
	double sum = 0;
	t_osc_bndl_it_u *bit = osc_bndl_it_u_get(bndl);
	while(osc_bndl_it_u_hasNext(bit)){
		t_osc_msg_u *m = osc_bndl_it_u_next(bit);
		t_osc_atom_u *a = NULL;
		osc_message_u_getArg(m, 0, &a);
		if(osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG){
			t_osc_bndl_u *b = osc_atom_u_getBndl(a);
			double xxx, yyy;
			rbfi_getCoords(x, b, &xxx, &yyy);
			double ir = rbfi_getInnerRadius(x, b);
			double or = rbfi_getOuterRadius(x, b);
			if(xx == xxx && yy == yyy){
				// we're exactly on a point
				if(ir > or){
					if(or == 0){
						weights[i] = 1. / ir;
					}else{
						weights[i] = 0.;
					}
				}else if(ir == 0){
					weights[i] = 1. / or;
				}else{
					memset(weights, 0, nweights * sizeof(double));
					weights[i] = 1.;
				}
				critical_exit(x->lock);
				return;
			}else{
				if(or == 0){
					weights[i] = 1. / ir;
				}else if(ir == 0){
					weights[i] = 1. / or;
				}else{
					double weight = rbfi_computeWeightFromDistances(ir, or);
					double exponent = rbfi_computeExponentFromDistances(ir, or);
					double d = sqrt(pow(xxx - xx, 2.) + pow(yyy - yy, 2.));
					weights[i] = pow(1. / d, exponent) * weight;
					if(isinf(weights[i])){
						memset(weights, 0, nweights * sizeof(double));
						weights[i] = 1.;
						critical_exit(x->lock);
						return;
					}
				}
			}
			sum += weights[i];
			i++;
		}
	}
	critical_exit(x->lock);
	for(i = 0; i < nweights; i++){
		weights[i] /= sum;
	}
	osc_bndl_it_u_destroy(bit);
}

static t_osc_bndl_u *rbfi_findClosest(t_rbfi *x, t_pt pt)
{
	double min = DBL_MAX;
	t_osc_bndl_u *b = NULL;
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(x->bndl);
	while(osc_bndl_it_u_hasNext(it)){
		t_osc_msg_u *m = osc_bndl_it_u_next(it);
		t_osc_atom_u *a = NULL;
		osc_message_u_getArg(m, 0, &a);
		if(osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG){
			t_osc_bndl_u *bb = osc_atom_u_getBndl(a);
			double xx, yy;
			rbfi_getCoords(x, bb, &xx, &yy);
			double d = sqrt(pow(xx - pt.x, 2.) + pow(yy - pt.y, 2.));
			if(d < min){
				b = bb;
				min = d;
			}
		}
	}
	osc_bndl_it_u_destroy(it);
	return b;
}

static t_pt rbfi_stow(t_rbfi *x, t_rect s, t_pt sp)
{
	return (t_pt){sp.x / s.width, (s.height - sp.y) / s.height};
}

static t_pt rbfi_wtos(t_rbfi *x, t_rect s, t_pt sp)
{
	return (t_pt){sp.x * s.width, (1 - sp.y) * s.height};
}


static void rbfi_outputWeights(   t_rbfi *x,
                                  double xx,
                                  double yy,
                                  t_rect r )
{
	critical_enter(x->lock);
    
	int i = 0;
	double sum = 0;
    double weights[x->nweights];
    
	t_osc_bndl_it_u *bit = osc_bndl_it_u_get(x->bndl);
    
	while( osc_bndl_it_u_hasNext(bit) )
    {
		t_osc_msg_u *m = osc_bndl_it_u_next(bit);
		t_osc_atom_u *a = NULL;
		osc_message_u_getArg(m, 0, &a);
        
		if( osc_atom_u_getTypetag(a) == OSC_BUNDLE_TYPETAG )
        {
			t_osc_bndl_u *b = osc_atom_u_getBndl(a);
			
            double xxx, yyy;
			rbfi_getCoords(x, b, &xxx, &yyy);

			double ir = rbfi_getInnerRadius(x, b);
			double or = rbfi_getOuterRadius(x, b);
			
            if( xx == xxx && yy == yyy )
            {
				// we're exactly on a point
				if(ir > or)
                {
					if(or == 0)
                    {
						weights[i] = 1. / ir;
					}
                    else
                    {
						weights[i] = 0.;
					}
				}
                else if( ir == 0 )
                {
					weights[i] = 1. / or;
				}
                else
                {
					weights[i] = 1.;
				}
				critical_exit(x->lock);
				return;
			}
            else
            {
				if( or == 0 )
                {
					weights[i] = 1. / ir;
				}
                else if( ir == 0 )
                {
					weights[i] = 1. / or;
				}
                else
                {
					double mult = rbfi_computeWeightFromDistances(ir, or);
					double exponent = rbfi_computeExponentFromDistances(ir, or);
					double d = sqrt(pow(xxx - xx, 2.) + pow(yyy - yy, 2.));
					weights[i] = pow(1. / d, exponent) * mult;
					if(isinf(weights[i])){
						weights[i] = 1.;
						critical_exit(x->lock);
						return;
					}
				}
			}
			sum += weights[i];
			i++;
		}
	}
    
    t_osc_bndl_u *outb = osc_bundle_u_alloc();
    char buf[512];
    
	for(i = 0; i < x->nweights; i++)
    {
		weights[i] /= sum;
        
        sprintf(buf, "/p/%i/weight", i);
        t_osc_msg_u *ww = osc_message_u_allocWithFloat(buf, weights[i]);
        osc_bundle_u_addMsg(outb, ww);
        
	}
    critical_exit(x->lock);
    osc_bndl_it_u_destroy(bit);

    
    long len;
    char *ptr;
    osc_bundle_u_serialize(outb, &len, &ptr);
    omax_util_outletOSC(x->outlet, len, ptr);
    
    if(ptr)
        osc_mem_free(ptr);

}


// 0x10 = no modifiers
// 0x11 = command
// 0x12 = shift
// 0x94 = control
// 0x18 = option

static void rbfi_mousedown(t_rbfi *x, t_object *patcherview, t_pt pt, long modifiers)
{
	t_rect r;
	jbox_get_rect_for_view((t_object *)x, patcherview, &r);
	switch(modifiers)
    {
        case 0x12: // shift
		{
			critical_enter(x->lock);
			t_osc_bndl_u *b = rbfi_findClosest(x, rbfi_stow(x, r, pt));
			char *p = NULL;
			long len = 0;
			osc_bundle_u_format(b, &len, &p);
			printf("%s\n", p);
			critical_exit(x->lock);
			x->pt = pt;
			rbfi_getCoords(x, b, &x->xx, &x->yy);
			x->xx *= r.width;
			x->yy = (1 - x->yy) * r.height;
			//jbox_invalidate_layer((t_object *)x, NULL, l_color);
			jbox_redraw(&(x->ob));
		}
            break;
        default:
        {// no modifiers
            critical_enter(x->lock);
//			double weights[x->spaces->npoints];
            
			critical_exit(x->lock);
            break;
        }
	}
}

static void rbfi_mousedrag(t_rbfi *x, t_object *patcherview, t_pt pt, long modifiers)
{
    t_rect r;
	jbox_get_rect_for_view((t_object *)x, patcherview, &r);
    rbfi_outputWeights(x, (pt.x / r.width), 1.0 - (pt.y / r.height), r);
    
}

static void rbfi_mouseup(t_rbfi *x, t_object *patcherview, t_pt pt, long modifiers)
{
    
}

static void rbfi_mouseleave(t_rbfi *x, t_object *patcherview, t_pt pt, long modifiers)
{
    
}

static void rbfi_mousemove(t_rbfi *x, t_object *patcherview, t_pt pt, long modifiers)
{
    
}

#define THRESH .9
static double rbfi_computeWeightFromDistances(double d1, double d2)
{
	if(d1 == 0){
		return 1. / d2;
	}else if(d2 == 0){
		return 1. / d1;
	}
	double dd1 = d1;
	if(dd1 == 0){
		dd1 = .00000001;
	}
	double dd2 = d2;
	if((dd1 / dd2) <= 1 && (dd1 / dd2) >= THRESH){
		dd1 = THRESH * dd2;
	}else if((dd1 / dd2) >= 1 && (dd1 / dd2) <= (1. / THRESH)){
		dd1 = dd2 / THRESH;
	}
    
	double w = exp(-((log(2.) + log(5.)) * (log(dd1) + log(dd2))) / (log(dd1) - log(dd2)));
	return w;
}

static double rbfi_computeExponentFromDistances(double d1, double d2)
{
	if(d1 == 0 || d2 == 0){
		return 1;
	}
	double dd1 = d1;
	if(dd1 == 0){
		dd1 = .00000001;
	}
	double dd2 = d2;
	if((dd1 / dd2) <= 1 && (dd1 / dd2) >= THRESH){
		dd1 = THRESH * dd2;
	}else if((dd1 / dd2) >= 1 && (dd1 / dd2) <= (1. / THRESH)){
		dd1 = dd2 / THRESH;
	}
    
	double d = (2 * (log(2.) + log(5.))) / (-log(dd1) + log(dd2));
	return d;
}

static void rbfi_free(t_rbfi *x)
{
	jbox_free(&(x->ob));
	critical_free(x->lock);
}

static void rbfi_assist(t_rbfi *x, void *b, long io, long index, char *s)
{
	/*
     switch(io){
     case 2: // outlet
     case 1: // inlet
     }
     */
}

static double rbfi_scale(double f, double min_in, double max_in, double min_out, double max_out)
{
	float m = (max_out - min_out) / (max_in - min_in);
	float b = (min_out - (m * min_in));
	return m * f + b;
}

static double rbfi_clip(double f, double min, double max)
{
	double ff = f;
	if(ff < min){
		ff = min;
	}
	if(ff > max){
		ff = max;
	}
	return ff;
}

#define MIN3(x,y,z)  ((y) <= (z) ?		\
((x) <= (y) ? (x) : (y))	\
:				\
((x) <= (z) ? (x) : (z)))

#define MAX3(x,y,z)  ((y) >= (z) ?		\
((x) >= (y) ? (x) : (y))	\
:				\
((x) >= (z) ? (x) : (z)))

// http://www.cs.rit.edu/~ncs/color/t_convert.html
static void RGBtoHSV( double r, double g, double b, double *h, double *s, double *v )
{
	double min, max, delta;
	min = MIN3( r, g, b );
	max = MAX3( r, g, b );
	*v = max;				// v
	delta = max - min;
	if( max != 0 )
		*s = delta / max;		// s
	else {
		// r = g = b = 0		// s = 0, v is undefined
		*s = 0;
		*h = -1;
		return;
	}
	if( r == max )
		*h = ( g - b ) / delta;		// between yellow & magenta
	else if( g == max )
		*h = 2 + ( b - r ) / delta;	// between cyan & yellow
	else
		*h = 4 + ( r - g ) / delta;	// between magenta & cyan
	*h *= 60;				// degrees
	if( *h < 0 )
		*h += 360;
}
static void HSVtoRGB( double *r, double *g, double *b, double h, double s, double v )
{
	int i;
	double f, p, q, t;
	if( s == 0 ) {
		// achromatic (grey)
		*r = *g = *b = v;
		return;
	}
	h /= 60;			// sector 0 to 5
	i = floor( h );
	f = h - i;			// factorial part of h
	p = v * ( 1 - s );
	q = v * ( 1 - s * f );
	t = v * ( 1 - s * ( 1 - f ) );
	switch( i ) {
        case 0:
            *r = v;
            *g = t;
            *b = p;
            break;
        case 1:
            *r = q;
            *g = v;
            *b = p;
            break;
        case 2:
            *r = p;
            *g = v;
            *b = t;
            break;
        case 3:
            *r = p;
            *g = q;
            *b = v;
            break;
        case 4:
            *r = t;
            *g = p;
            *b = v;
            break;
        default:		// case 5:
            *r = v;
            *g = p;
            *b = q;
            break;
	}
}

void *rbfi_new(t_symbol *msg, int argc, t_atom *argv)
{
	t_rbfi *x;
    
 	t_dictionary *d = NULL;
 	long boxflags;
    
	// box setup
	if(!(d = object_dictionaryarg(argc, argv))){
		return NULL;
	}
    
	boxflags = 0
    | JBOX_DRAWFIRSTIN
    //| JBOX_NODRAWBOX
    | JBOX_DRAWINLAST
    //| JBOX_TRANSPARENT
    //      | JBOX_NOGROW
    | JBOX_GROWY
    //| JBOX_GROWBOTH
    //      | JBOX_HILITE
    | JBOX_BACKGROUND
    | JBOX_DRAWBACKGROUND
    //      | JBOX_NOFLOATINSPECTOR
    //      | JBOX_MOUSEDRAGDELTA
    //      | JBOX_TEXTFIELD
    ;
    
	if((x = (t_rbfi *)object_alloc(rbfi_class)))
    {
		jbox_new((t_jbox *)x, boxflags, argc, argv);
 		x->ob.b_firstin = (void *)x;
        
		x->outlet = outlet_new(x, "FullPacket");
		critical_new(&(x->lock));
		x->bndl = osc_bundle_u_alloc();
		attr_dictionary_process(x, d);
 		jbox_ready((t_jbox *)x);
        
        x->nweights = 0;
        
		return x;
	}
	return NULL;
}

int main(void)
{
	t_class *c = class_new("o.rbfi", (method)rbfi_new, (method)rbfi_free, sizeof(t_rbfi), 0L, A_GIMME, 0);
    
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
 	jbox_initclass(c, JBOX_FIXWIDTH | JBOX_COLOR | JBOX_FONTATTR);
    
	class_addmethod(c, (method)rbfi_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)rbfi_paint, "paint", A_CANT, 0);
	class_addmethod(c, (method)rbfi_bang, "bang", 0);
	class_addmethod(c, (method)rbfi_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)rbfi_mousedown, "mousedown", A_CANT, 0);
	class_addmethod(c, (method)rbfi_mousedrag, "mousedrag", A_CANT, 0);
	class_addmethod(c, (method)rbfi_mouseup, "mouseup", A_CANT, 0);
	class_addmethod(c, (method)rbfi_mousemove, "mousemove", A_CANT, 0);
	class_addmethod(c, (method)rbfi_mouseleave, "mouseleave", A_CANT, 0);
	class_addmethod(c, (method)rbfi_notify, "notify", A_CANT, 0);
    
	CLASS_STICKY_ATTR(c, "category", 0, "Color");
    
 	CLASS_ATTR_RGBA(c, "labelcolor", 0, t_rbfi, labelcolor);
 	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "labelcolor", 0, "0. 0. 0. 1.");
 	CLASS_ATTR_STYLE_LABEL(c, "labelcolor", 0, "rgba", "Label Color");
    
 	CLASS_ATTR_RGBA(c, "xhaircolor", 0, t_rbfi, xhaircolor);
 	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "xhaircolor", 0, "1. 1. 1. 1.");
 	CLASS_ATTR_STYLE_LABEL(c, "xhaircolor", 0, "rgba", "Crosshair Color");
    
	CLASS_STICKY_ATTR_CLEAR(c, "category");
    
	CLASS_ATTR_LONG(c, "font_size", 0, t_rbfi, font_size);
	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "font_size", 0, "11");
    
	CLASS_ATTR_DEFAULT(c, "patching_rect", 0, "0. 0. 200. 200.");
    
	class_register(CLASS_BOX, c);
	rbfi_class = c;
    
	l_color = gensym("l_color");
	l_points = gensym("l_points");
	l_xhairs = gensym("l_xhairs");
    
	common_symbols_init();
    
	ps_FullPacket = gensym("FullPacket");
    
	rbfi_defaults = osc_bundle_u_alloc();
	t_osc_msg_u *ir = osc_message_u_alloc();
	osc_message_u_setAddress(ir, RBFI_IR_ADDRESS);
	osc_message_u_appendDouble(ir, .05);
	osc_bundle_u_addMsg(rbfi_defaults, ir);
    
	t_osc_msg_u *or = osc_message_u_alloc();
	osc_message_u_setAddress(or, RBFI_OR_ADDRESS);
	osc_message_u_appendDouble(or, .2);
	osc_bundle_u_addMsg(rbfi_defaults, or);
    
	t_osc_msg_u *locked = osc_message_u_alloc();
	osc_message_u_setAddress(locked, RBFI_LOCKED_ADDRESS);
	osc_message_u_appendInt32(locked, 1);
	osc_bundle_u_addMsg(rbfi_defaults, locked);
    
	rbfi_required = osc_bundle_u_alloc();
	t_osc_msg_u *coords = osc_message_u_alloc();
	osc_message_u_setAddress(coords, RBFI_COORDS_ADDRESS);
	osc_bundle_u_addMsg(rbfi_required, coords);
    
	t_osc_msg_u *rgb = osc_message_u_alloc();
	osc_message_u_setAddress(rgb, RBFI_RGB_ADDRESS);
	osc_bundle_u_addMsg(rbfi_required, rgb);
    
//	version(0);
    
	return 0;
}

t_max_err rbfi_notify(t_rbfi *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
	if(msg == gensym("attr_modified")){
		jbox_invalidate_layer((t_object *)x, NULL, l_color);
		jbox_invalidate_layer((t_object *)x, NULL, l_points);
		jbox_invalidate_layer((t_object *)x, NULL, l_xhairs);
		jbox_redraw(&(x->ob));
	}
	return 0;
}

void rbfi_postReqArgErr(t_rbfi *x, t_osc_bndl_u *b)
{
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(b);
	while(osc_bndl_it_u_hasNext(it)){
		t_osc_msg_u *m = osc_bndl_it_u_next(it);
		object_error((t_object *)x, "missing required address %s\n", osc_message_u_getAddress(m));
	}
	osc_bndl_it_u_destroy(it);
}
