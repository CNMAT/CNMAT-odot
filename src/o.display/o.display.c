/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2009-11, The Regents of
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
  NAME: o.display
  DESCRIPTION: Message box for OSC bundles
  AUTHORS: Ilya Y. Rostovtsev, John MacCallum
  COPYRIGHT_YEARS: 2009-14
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: Inherited from o.message
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

*/

#define OMAX_DOC_NAME "o.display"
#define OMAX_DOC_SHORT_DESC "Display incoming OSC bundles"
#define OMAX_DOC_LONG_DESC "o.display displays OSC in text form and passes them through to its outlet."
#define OMAX_DOC_INLETS_DESC (char *[]){"An OSC packet is displayed and passed through"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"o.compose"}


#include <string.h>
#include "odot_version.h"


#ifdef OMAX_PD_VERSION
    #include "m_pd.h"
    #include "m_imp.h"
    #include "g_canvas.h"
    #include "g_all_guis.h"
    #include "omax_pd_proxy.h"
    #define OMAX_PD_MAXSTRINGSIZE (1<<16)
#else
    #include "ext.h"
    #include "ext_obex.h"
    #include "ext_obex_util.h"
    #include "ext_critical.h"
    #include "jpatcher_api.h"
    #include "jgraphics.h"
#endif

#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_parser.h"
#include "osc_bundle_u.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_iterator_s.h"
#include "osc_message_iterator_u.h"
#include "osc_message_u.h"
#include "osc_message_s.h"
#include "osc_atom_u.h"
#include "osc_atom_s.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

enum {
	odisplay_U,
	odisplay_S,
};

#ifdef OMAX_PD_VERSION
typedef struct _odisplay {
    t_object    ob;
    t_glist     *glist; //the canvas heirarchy
    
    char        *text;
    long        textlen;

    char        *hex;
    char        *tk_text;
    char        *border_tag;
    char        *corner_tag;
    char        *iolets_tag;
    char        *updatedot_tag;
    char        *tcl_namespace;
    int         streamflag;
    
    t_clock     *m_clock;
    
    uint16_t    textediting;
    uint16_t    c_bind;
    
    uint16_t    editmode;
    uint16_t    selected;
    uint16_t    displacing;
    uint16_t    firsttime;
    uint16_t    firstdisplace;
    
    uint16_t    forceredraw;
    
    uint16_t    parse_error;
    uint16_t    cmdDown;
    
    uint16_t    mouseDown;
    int         xref;
    
    int         yscroll;
    
    char        *receive_name;
    
    uint32_t    longestline;
    
    uint32_t    width;
    uint32_t    height;

    void *outlet;
	void **proxy;
	long inlet;
    
    //new version
    int newbndl;
	t_osc_bndl_u *bndl_u;
	t_osc_bndl_s *bndl_s;
	int bndl_has_subs;
	int bndl_has_been_checked_for_subs;

    int     in_new_flag;
	//t_jrgba frame_color, background_color, text_color;
    
    int have_new_data;
	int draw_new_data_indicator;
	t_clock *new_data_indicator_clock;
    
    int     softlock;
    
} t_odisplay;

t_omax_pd_proxy_class *odisplay_class;
t_omax_pd_proxy_class *odisplay_proxy_class;
t_widgetbehavior odisplay_widgetbehavior;

#else
typedef struct _odisplay{
	t_jbox ob;
	void *outlet;
	t_critical lock;
	int newbndl;
	t_osc_bndl_u *bndl_u;
	t_osc_bndl_s *bndl_s;
//	int bndl_has_subs;
//	int bndl_has_been_checked_for_subs;
	long textlen;
	char *text;
	t_jrgba frame_color, background_color, text_color, flash_color;
	void *qelem;
	int have_new_data;
	int draw_new_data_indicator;
	void *new_data_indicator_clock;
} t_odisplay;

static t_class *odisplay_class;

void odisplay_paint(t_odisplay *x, t_object *patcherview);
void odisplay_mousedown(t_odisplay *x, t_object *patcherview, t_pt pt, long modifiers);
void odisplay_mouseup(t_odisplay *x, t_object *patcherview, t_pt pt, long modifiers);
void odisplay_select(t_odisplay *x);

#endif

void odisplay_doFullPacket(t_odisplay *x, long len, char *ptr);
void odisplay_set(t_odisplay *x, t_symbol *s, long ac, t_atom *av);
void odisplay_doselect(t_odisplay *x);
void odisplay_enter(t_odisplay *x);
void odisplay_gettext(t_odisplay *x);
void odisplay_clear(t_odisplay *x);
void odisplay_clearBundles(t_odisplay *x);
void odisplay_newBundle(t_odisplay *x, t_osc_bndl_u *bu, t_osc_bndl_s *bs);
void odisplay_output_bundle(t_odisplay *x);
void odisplay_bang(t_odisplay *x);
void odisplay_int(t_odisplay *x, long n);
void odisplay_float(t_odisplay *x, double xx);
void odisplay_list(t_odisplay *x, t_symbol *msg, short argc, t_atom *argv);
void odisplay_anything(t_odisplay *x, t_symbol *msg, short argc, t_atom *argv);
void omax_util_outletOSC(void *outlet, long len, char *ptr);
void odisplay_free(t_odisplay *x);
void odisplay_inletinfo(t_odisplay *x, void *b, long index, char *t);
void *odisplay_new(t_symbol *msg, short argc, t_atom *argv);

#ifdef OMAX_PD_VERSION


/* maybe move this to o.h */
#define qelem_set(x)

static int odisplay_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit);
void odisplay_insideclick_callback(t_odisplay *x);
void odisplay_outsideclick_callback(t_odisplay *x);
static void odisplay_displace(t_gobj *z, t_glist *glist,int dx, int dy);
void odisplay_drawElements(t_odisplay *x, t_glist *glist, int width2, int height2, int firsttime);
void odisplay_storeTextAndExitEditor(t_odisplay *x);
void odisplay_resetText(t_odisplay *x, char *s);
void odisplay_setTextFromString(t_odisplay *x, char *str);
void odisplay_storeTextAndExitEditorTick(t_odisplay *x);
void odisplay_getRectAndDraw(t_odisplay *x, int forceredraw);
static void odisplay_save(t_gobj *z, t_binbuf *b);
static void odisplay_delete(t_gobj *z, t_glist *glist);


typedef t_odisplay t_jbox;
void jbox_redraw(t_jbox *x){ odisplay_drawElements((t_odisplay *)x, x->glist, x->width, x->height, 0);}

#endif

t_symbol *ps_newline, *ps_FullPacket;

void odisplay_fullPacket(t_odisplay *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	odisplay_doFullPacket(x, len, ptr);
    odisplay_output_bundle(x);
}

void odisplay_doFullPacket(t_odisplay *x, long len, char *ptr)
{
	osc_bundle_s_wrap_naked_message(len, ptr);
	long copylen = len;
	char *copyptr = osc_mem_alloc(len);
	memcpy(copyptr, ptr, len);
	t_osc_bndl_s *b = osc_bundle_s_alloc(copylen, copyptr);
	odisplay_newBundle(x, NULL, b);
#ifdef OMAX_PD_VERSION
    jbox_redraw((t_jbox *)x);
#else
	qelem_set(x->qelem);
#endif
}

void odisplay_newBundle(t_odisplay *x, t_osc_bndl_u *bu, t_osc_bndl_s *bs)
{
	critical_enter(x->lock);
	odisplay_clearBundles(x);
	x->bndl_u = bu;
	x->bndl_s = bs;
	x->newbndl = 1;
	//x->bndl_has_been_checked_for_subs = 0;
    x->draw_new_data_indicator = 1;
	x->have_new_data = 1;
	critical_exit(x->lock);
}

void odisplay_clearBundles(t_odisplay *x)
{
	critical_enter(x->lock);
	if(x->bndl_u){
		osc_bundle_u_free(x->bndl_u);
		x->bndl_u = NULL;
	}
	if(x->bndl_s){
		osc_bundle_s_deepFree(x->bndl_s);
		x->bndl_s = NULL;
	}
#ifndef OMAX_PD_VERSION
	if(x->text){
		x->textlen = 0;
		osc_mem_free(x->text);
		x->text = NULL;
	}
#endif
	critical_exit(x->lock);
}

void odisplay_output_bundle(t_odisplay *x)
{
	// the use of critical sections is a little weird here, but correct.
	critical_enter(x->lock);
	if(x->bndl_s){
		t_osc_bndl_s *b = x->bndl_s;
		long len = osc_bundle_s_getLen(b);
		char *ptr = osc_bundle_s_getPtr(b);
		char buf[len];
		memcpy(buf, ptr, len);
		critical_exit(x->lock);
		omax_util_outletOSC(x->outlet, len, buf);
        OSC_MEM_INVALIDATE(buf);
		return;
	}
	critical_exit(x->lock);

	char buf[OSC_HEADER_SIZE];
	memset(buf, '\0', OSC_HEADER_SIZE);
	osc_bundle_s_setBundleID(buf);
	omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, buf);
    OSC_MEM_INVALIDATE(buf);
}

void odisplay_bundle2text(t_odisplay *x)
{
    critical_enter(x->lock);
	if(x->newbndl && x->bndl_s){
		long len = osc_bundle_s_getLen(x->bndl_s);
		char ptr[len];
		memcpy(ptr, osc_bundle_s_getPtr(x->bndl_s), len);
		critical_exit(x->lock);
		long bufpos = osc_bundle_s_nformat(NULL, 0, len, (char *)ptr, 0);
		char *buf = osc_mem_alloc(bufpos + 1);
        osc_bundle_s_nformat(buf, bufpos + 1, len, (char *)ptr, 0);
        if (bufpos != 0) {
		/*
            if(buf[bufpos - 2] == '\n'){
                buf[bufpos - 2] = '\0';
            }
		*/
        } else {
            *buf = '\0';
        }
		
#ifndef OMAX_PD_VERSION
		critical_enter(x->lock);
		if(x->text){
			osc_mem_free(x->text);
		}
		x->textlen = bufpos;
        x->text = buf;
		critical_exit(x->lock);
        object_method(jbox_get_textfield((t_object *)x), gensym("settext"), buf);
#else
        odisplay_resetText(x, buf);

#endif
		if(buf){
			//osc_mem_free(buf);
		}
		x->newbndl = 0;
	}
	critical_exit(x->lock);
}

#ifndef OMAX_PD_VERSION
void odisplay_paint(t_odisplay *x, t_object *patcherview)
{
	int have_new_data = 0;
	int draw_new_data_indicator = 0;
	critical_enter(x->lock);
	have_new_data = x->have_new_data;
	draw_new_data_indicator = x->draw_new_data_indicator;
	critical_exit(x->lock);
	if(have_new_data){	
        odisplay_bundle2text(x);
	}
    
	t_rect rect;
	t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);

	jgraphics_set_source_jrgba(g, &(x->background_color));
    jgraphics_rectangle_rounded(g, 0, 0, rect.width, rect.height - 10, 8, 8);
    jgraphics_rectangle(g, 0, rect.height - 14, 4, 4);
    jgraphics_rectangle(g, rect.width - 4, rect.height - 14, 4, 4);
    jgraphics_fill(g);

    jgraphics_set_source_jrgba(g, &(x->frame_color));
    jgraphics_rectangle_rounded(g, 0, rect.height - 10, rect.width, 10, 8, 8);
    jgraphics_rectangle(g, 0, rect.height - 10, 4, 4);
    jgraphics_rectangle(g, rect.width - 4, rect.height - 10, 4, 4);
    jgraphics_fill(g);
    
    jgraphics_set_source_jrgba(g, &(x->frame_color));
    jgraphics_rectangle_rounded(g, 1, 1, rect.width - 2, rect.height - 2, 8, 8);
    jgraphics_set_line_width(g, 2.);
    jgraphics_stroke(g);
    
    if (draw_new_data_indicator) {
        jgraphics_set_source_jrgba(g, &(x->flash_color));
		jgraphics_ellipse(g, rect.width - 12, 6, 6, 6);
		jgraphics_fill(g);
		critical_enter(x->lock);
		x->draw_new_data_indicator = 0;
		critical_exit(x->lock);
		clock_delay(x->new_data_indicator_clock, 100);
    }
}

#endif

void odisplay_refresh(t_odisplay *x)
{
#ifdef OMAX_PD_VERSION
    x->draw_new_data_indicator = 0;
#endif
	jbox_redraw((t_jbox *)x);
}

#ifndef OMAX_PD_VERSION
void odisplay_select(t_odisplay *x){
	defer(x, (method)odisplay_doselect, 0, 0, 0);
}

void odisplay_doselect(t_odisplay *x){
	t_object *p = NULL; 
	object_obex_lookup(x,gensym("#P"), &p);
	if (p) {
		t_atom rv; 
		long ac = 1; 
		t_atom av[1]; 
		atom_setobj(av, x); 
		object_method_typed(p, gensym("selectbox"), ac, av, &rv); 
	}
}

void odisplay_mousedown(t_odisplay *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 6, 5, 15);
	jbox_redraw((t_jbox *)x);
}

void odisplay_mouseup(t_odisplay *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 5, 5, 15);
	jbox_redraw((t_jbox *)x);
	odisplay_output_bundle(x);
}
#endif

// we get the text, convert it to an OSC bundle, and then call the paint
// function via qelem_set which converts the OSC bundle back to text.
// We do this so that it's formatted nicely with no unnecessary whitespace
// and tabbed subbundles, etc.
void odisplay_gettext(t_odisplay *x)
{
	long size	= 0;
	char *text	= NULL;
#ifdef OMAX_PD_VERSION
	text = x->text;
#else
	t_object *textfield = jbox_get_textfield((t_object *)x);
	object_method(textfield, gensym("gettextptr"), &text, &size);
#endif
    
	odisplay_clearBundles(x);
	size = strlen(text); // the value returned in text doesn't make sense
	if(size == 0){
		return;
	}
	char *buf = text;

	if(text[size - 1] != '\n'){
		buf = alloca(size + 2);
		memcpy(buf, text, size);
		buf[size] = '\n';
		buf[size + 1] = '\0';
		size += 2;
	}

	t_osc_bndl_u *bndl_u = NULL;
	t_osc_err e = osc_parser_parseString(size, buf, &bndl_u);
	if(e){
#ifdef OMAX_PD_VERSION
		x->parse_error = 1;
#endif
		object_error((t_object *)x, "error parsing bundle\n");
		return;
	}
	long bndl_s_len = 0;
	char *bndl_s_ptr = NULL;
	osc_bundle_u_serialize(bndl_u, &bndl_s_len, &bndl_s_ptr);
	t_osc_bndl_s *bndl_s = osc_bundle_s_alloc(bndl_s_len, bndl_s_ptr);
	odisplay_newBundle(x, bndl_u, bndl_s);
#ifdef OMAX_PD_VERSION
    x->have_new_data = 1;
	jbox_redraw((t_jbox *)x);
#else
	x->have_new_data = 1;
	qelem_set(x->qelem);
#endif
	/*
	if(size > 2){
		int i;
		char *r = text + 1;
		char *w = text + 1;
		char *rm1 = text;
		for(i = 0; i <= size; i++){
			if(*rm1 == ' ' && *r == ' '){
				r++;
			}else{
				*w++ = *r++;
			}
			rm1++;
		}
	}
	*/
}

void odisplay_bang(t_odisplay *x){
//	odisplay_output_bundle(x);
}

void odisplay_int(t_odisplay *x, long n){
	t_atom a;
	atom_setlong(&a, n);
	odisplay_list(x, NULL, 1, &a);
}

void odisplay_float(t_odisplay *x, double f){
	t_atom a;
	atom_setfloat(&a, f);
	odisplay_list(x, NULL, 1, &a);
}

void odisplay_list(t_odisplay *x, t_symbol *list_sym, short argc, t_atom *argv)
{
    object_error((t_object *)x, "o.display doesn't accept non-OSC lists in its inlet");
}

void odisplay_anything(t_odisplay *x, t_symbol *msg, short argc, t_atom *argv)
{
	t_atom av[argc + 1];
	int ac = argc;

	if (msg) {
        ac = argc + 1;
        atom_setsym(av, msg);
        if (argc > 0) {
            memcpy(av + 1, argv, argc * sizeof(t_atom));
        }
	} else {
        memcpy(av, argv, argc * sizeof(t_atom));
	}

    t_osc_msg_u *m = NULL;
    t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&m, msg, argc, argv);
    if(e){
        return;
    }
    t_osc_bndl_u *b = osc_bundle_u_alloc();
    osc_bundle_u_addMsg(b, m);
    long len = 0;
    char *ptr = NULL;
    osc_bundle_u_serialize(b, &len, &ptr);
    t_osc_bndl_s *bs = osc_bundle_s_alloc(len, ptr);
    odisplay_newBundle(x, b, bs);

#ifdef OMAX_PD_VERSION
    x->draw_new_data_indicator = 1;
    x->have_new_data = 1;
    jbox_redraw((t_jbox *)x);
#else
    x->draw_new_data_indicator = 1;
    x->have_new_data = 1;
    qelem_set(x->qelem);
#endif
}

void odisplay_set(t_odisplay *x, t_symbol *s, long ac, t_atom *av)
{
    // at present there's nothing to be done here ...
}

void odisplay_clear(t_odisplay *x)
{
    char buf[OSC_HEADER_SIZE];
    memset(buf, '\0', OSC_HEADER_SIZE);
    osc_bundle_s_setBundleID(buf);
    odisplay_doFullPacket(x, OSC_HEADER_SIZE, buf);
}

void odisplay_doc(t_odisplay *x)
{
    omax_doc_outletDoc(x->outlet);
}

/*
    ...........................................................................................
    ................................  PD VERSION  .............................................
    ...........................................................................................

 */
#ifdef OMAX_PD_VERSION

void odisplay_setHeight(t_odisplay *x, float y)
{
    int h = ((int)y - text_ypix(&x->ob, x->glist) + 5);
    h = (h > 23) ? h : 23;

    //post("%x %s y %f te_ypix %d ", x, __func__, y, x->ob.te_ypix);
    x->softlock = 0;
    
    if((h != x->height) || x->forceredraw)
    {
        x->height = h;
//        post("%x %s height set to %d x->firsttime %d", x, __func__, x->height, x->firsttime);
        odisplay_drawElements(x, x->glist, x->width, x->height, x->firsttime);
        x->forceredraw = 0;
        
    } else {
        ;
        //post("%x %s height == h && !redraw ", x, __func__);
    }
}

void odisplay_getRectAndDraw(t_odisplay *x, int forceredraw)
{
    x->forceredraw = forceredraw;
    x->softlock = 1;
   // post("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", x->receive_name, glist_getcanvas(x->glist), (long)x);

    sys_vgui("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", x->receive_name, glist_getcanvas(x->glist), (long)x);
//    sys_vgui("::pdwindow::post \"%x %s Tk bbox y2 px: [lindex [%s bbox text%lx] 3]\n\"\n", x, __func__, x->canvas_id, (long)x);

}

void odisplay_resize_mousedown(t_odisplay *x)
{
    //  post("%s", __func__);
    x->mouseDown = 1;
    x->xref = x->width;
}

void odisplay_resize_mousemove(t_odisplay *x, float dx, float dy)
{
    if(x->mouseDown && x->editmode)
    {
        int width = (dx + x->xref);
        width = (width < 50) ? 50 : width;
        x->width = width;
        
        odisplay_getRectAndDraw(x, 1);
        
    }
}

void odisplay_resize_mouseup(t_odisplay *x)
{
    x->mouseDown = 0;
    sys_vgui("focus .x%lx.c\n", glist_getcanvas(x->glist));
}

int hex_to_int(char c){
    if(c >=97)
        c=c-32;
    int first = c / 16 - 3;
    int second = c % 16;
    int result = first*10 + second;
    if(result > 9) result--;
    return result;
}

int hex_to_ascii(char c, char d){
    int high = hex_to_int(c) * 16;
    int low = hex_to_int(d);
    return high+low;
}

void odisplay_setTextFromHex(t_odisplay *x, char *hex)
{
    // called when text comes in from TCL/TK or from the saved PD file
    int hexlen = strlen(hex);
    int length = hexlen / 2;
    
    if(length >= OMAX_PD_MAXSTRINGSIZE){
        post("max o_message string size = %d", OMAX_PD_MAXSTRINGSIZE);
        return;
    }
    
    //    memset(x->hex, '\0', OMAX_PD_MAXSTRINGSIZE * 2);
    //    strcpy(x->hex, hex);
    
    int j, k;
    int c;
    
    char buf[length*2];
    memset(buf, '\0', length*2);
    
    for(j = 0, k = 0; j < length; j++, k=j*2){
        c = hex_to_ascii(hex[k], hex[k+1]);
        buf[j] = (char)c;
        
    }
    buf[length] = '\0'; //<< not sure if this is necessary
    
    
    memset(x->tk_text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(x->tk_text, buf);
    
    omax_util_hashBrackets2Curlies(buf);
    memset(x->text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(x->text, buf);
    
 //   post("%s tk_text %s", __func__, x->tk_text);
 //   post("%s text %s", __func__, x->text);
    
}

void odisplay_setTextFromString(t_odisplay *x, char *str)
{
    if(strlen(str) >= OMAX_PD_MAXSTRINGSIZE){
        post("max o_message string size = %d", OMAX_PD_MAXSTRINGSIZE);
        return;
    }
    
    memset(x->text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(x->text, str);
    
    memset(x->tk_text, '\0', OMAX_PD_MAXSTRINGSIZE);
    strcpy(x->tk_text, str);
    omax_util_curlies2hashBrackets(&x->tk_text, OMAX_PD_MAXSTRINGSIZE);

    //n.b. convertion to hex done on save
}

void odisplay_setHexFromText(t_odisplay *x, char *str)
{
    
    memset(x->hex, '\0', OMAX_PD_MAXSTRINGSIZE*2);

    int length = strlen(str);
    if(length == 0)
        return;
    
//    post("%s %s %d", __func__, str, strlen(str));
    
    char *pin = str;
    const char * hex = "0123456789ABCDEF";
    char *pout = x->hex;
    int i = 0;
    for(; i < strlen(str)-1; ++i)
    {
        *pout++ = hex[(*pin>>4)&0xF];
        *pout++ = hex[(*pin++)&0xF];
    }
    *pout++ = hex[(*pin>>4)&0xF];
    *pout++ = hex[(*pin)&0xF];
    *pout = 0;
    
  //  post("%s %s %d\n", __func__, pout, strlen(pout));
        
    /*
    int i, k;
    char h1, h2;
    for( i = 0, k = 0; i < length; i++, k=i*2 )
    {
        h1 = x->text[i] / 16;
        if(h1 <= 9) h1 += '0';
        else h1 = h1-10 + 'A';
        x->hex[k] = h1;
        
        h2 = x->text[i] % 16;
        if(h2 <= 9) h2 += '0';
        else h2 = h2-10 + 'A';
        x->hex[k+1] = h2;
        
    }
    x->hex[k] = '\0';
     
     */
    //    post("%s %s", __func__, x->hex);
    
}


void odisplay_textbuf(t_odisplay *x, t_symbol *msg, int argc, t_atom *argv)
{
//    post("%p %s \n", x, __func__);
//    printargs(argc, argv);
    
    if(argc >= 2)
    {
        if(argv->a_type == A_SYMBOL)
        {
            t_symbol *s = atom_getsymbol(argv);
            
            if(s == gensym("hex"))
            {
                
                int i, charcount = 0;
                if(!x->streamflag)
                {
                    x->streamflag = 1;
                    memset(x->hex, '\0', OMAX_PD_MAXSTRINGSIZE * 2);
                }
                char *buf = NULL;
                
                for( i = 1; i < argc; i++ )
                {
                    if(atom_getsymbol(argv+i) != gensym(x->receive_name))
                    {
                        
                        buf = atom_getsymbol(argv+i)->s_name;
                        
                        charcount = strlen(buf) + strlen(x->hex);

                        if(charcount < (OMAX_PD_MAXSTRINGSIZE * 2))
                        {
                            strcat(x->hex, buf);
                        }
                        else
                        {
                            error("maximum hex buffers size is set to %d", OMAX_PD_MAXSTRINGSIZE*2);
                            return;
                        }
                        
                    } else {
                        if(x->textediting)
                            odisplay_storeTextAndExitEditorTick(x);

                        odisplay_setTextFromHex(x, x->hex);
                        odisplay_gettext(x); //converts to text to bundle, reformats after parsing
                        x->streamflag = 0;
                        break;
                        
                    }
                }
                
//                post("%s %s %d", __func__, x->hex, __LINE__);
                
                
            }
            else if(s == gensym("binhex"))
            {
                
                int i, charcount = 0;
                if(!x->streamflag)
                {
                    x->streamflag = 1;
                    memset(x->hex, '\0', OMAX_PD_MAXSTRINGSIZE * 2);
                }
                char *buf = NULL;
                
                for( i = 1; i < argc; i++ )
                {
                    if(atom_getsymbol(argv+i) != gensym(x->receive_name))
                    {
                        
                        buf = atom_getsymbol(argv+i)->s_name;
                        
                        if(buf[0] == 'b' && buf[1] == '#')
                        {
                            buf += 2;
                            charcount = strlen(buf) + strlen(x->hex);
                            //post("%s %d", __func__, strlen(x->hex));
                            if(charcount < (OMAX_PD_MAXSTRINGSIZE * 2))
                            {
                                strcat(x->hex, buf);
                            }
                            else
                            {
                                error("maximum hex buffers size is set to %d", OMAX_PD_MAXSTRINGSIZE*2);
                                return;
                            }
                        }
                        
                    } else {
                        if(x->textediting)
                            odisplay_storeTextAndExitEditorTick(x);
                        
                        odisplay_setTextFromHex(x, x->hex);
                        odisplay_gettext(x);
                        x->streamflag = 0;
                        break;
                        
                    }
                }
                
//                post("%s %s %d", __func__, x->hex, __LINE__);
                
                
            }
            
            else if (s == gensym("text"))
            {
                //this probably could go back to the pre-concat version since textFromString is always within C (so no socket size issue)
                int i, charcount = 0;
                char text[OMAX_PD_MAXSTRINGSIZE];
                memset(text, '\0', OMAX_PD_MAXSTRINGSIZE );
                
                char *buf = NULL;
                
                for( i = 1; i < argc; i++ )
                {
                    buf = atom_getsymbol(argv+i)->s_name;
                    charcount += strlen(buf);
                    if(charcount < (OMAX_PD_MAXSTRINGSIZE ))
                    {
                        strcat(text, buf);
                    }
                    else
                    {
                        error("maximum hex buffers size is set to %d", OMAX_PD_MAXSTRINGSIZE);
                        return;
                    }
                    
                }
                
                odisplay_setTextFromString(x, text);
                //                post("%s %d %s", __func__, x->textediting, text);
                
            }
            else
            {}//error
        }
    }
    
}


void odisplay_insideclick_callback(t_odisplay *x)
{
//    post("%p %s", x, __func__);

    t_canvas *canvas = glist_getcanvas(x->glist);
    if(canvas->gl_edit)
    {
        //this might be "activate" versus "select"
        //activate is text edit mode and select is move or delete mode (resize too)
        
        sys_vgui("focus .x%lx.t%lxTEXT\n", canvas, (long)x);
        glist_noselect(x->glist);
        gobj_select((t_gobj *)x, x->glist, 1);
        if(!x->c_bind)
        {
            sys_vgui("bind .x%lx.c <Button-1> {+pdsend {%s outsideclick }}\n", canvas, x->receive_name);
            x->c_bind = 1;
        }
    } else {
        sys_vgui("focus .x%lx.c\n", canvas);
        odisplay_storeTextAndExitEditor(x);
        odisplay_click((t_gobj *)x, x->glist, 0, 0, 0, 0, 0, 0);
    }
    
}

void odisplay_outsideclick_callback(t_odisplay *x)
{
//    post("%p %s", x, __func__);
    x->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(x->glist);

    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, x->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas,x->tcl_namespace, canvas );

    sys_vgui("focus .x%lx.c\n", canvas);
    gobj_select((t_gobj *)x, x->glist, 0); //    odisplay_storeTextAndExitEditor(x); called from select function

    
    //same for <Key>
    x->selected = 0;
    x->cmdDown = 0; //in case of esc exit
    
    
}

//called when clicking from one object to another without clicking on the empty canvas first
void odisplay_pdnofocus_callback(t_odisplay *x)
{
//    post("%p %s", x, __func__);
    x->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(x->glist);
    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, x->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas,x->tcl_namespace, canvas );

    gobj_select((t_gobj *)x, x->glist, 0);
}

void odisplay_mousewheel_callback(t_odisplay *x)
{
    odisplay_pdnofocus_callback(x);
}

void odisplay_keyup_callback(t_odisplay *x, t_symbol *s, int argc, t_atom *argv)
{
    
    if(argc == 1)
    {
        if(argv->a_type == A_FLOAT)
        {
            int k = (int)atom_getfloat(argv);
            
            if(k == 65511)
            {
                x->cmdDown = 0;
            }
        }
    }
}

void odisplay_key_callback(t_odisplay *x, t_symbol *s, int argc, t_atom *argv)
{
 // in order to expand textbox when typing carrige return, need to *not trim trailing newline*
 //
    
    if(argc == 1)
    {
        if(argv->a_type == A_FLOAT)
        {
            //post("%x %s %d", x,  __func__, (int)atom_getfloat(argv));
            int k = (int)atom_getfloat(argv);
            switch (k) {
                case 65307: //esc
                    odisplay_outsideclick_callback(x);
                    return;
                    break;
                case 65511: // cmd
                    x->cmdDown = 1;
                    break;
//                case 65293: // return
//                    break;
                default:
                    break;
            }
            
            if(x->cmdDown){
                if(k >= 49 && k <= 53)
                {
                    odisplay_outsideclick_callback(x);
                    return;
                }
                else
                {
                    switch (k) {
                        case 66:
                        case 84:
                        case 78:
                        case 86:
                        case 72:
                        case 68:
                        case 73:
                        case 85:
                        case 67:
                            odisplay_outsideclick_callback(x);
                            break;
                        default:
                            break;
                    }
                }
            } else {
                sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [regsub -all -line {^[ \t]+|[ \t]+$} [.x%lx.t%lxTEXT get 0.0 end-1c] \"\" ]] \n", glist_getcanvas(x->glist), x, x->width-10, glist_getcanvas(x->glist), (long)x);
                odisplay_getRectAndDraw(x, 0);
            }
            
            
        }
        
    }
    
}



void odisplay_bind_text_events(t_odisplay *x)
{
    t_canvas *canvas = glist_getcanvas(x->glist);
    sys_vgui("bind .x%lx.t%lxTEXT <Key> {+pdsend {%s key %%N }}\n", canvas, (long)x, x->receive_name);
    sys_vgui("bind .x%lx.t%lxTEXT <KeyRelease> {+pdsend {%s keyup %%N }}\n",  canvas, (long)x, x->receive_name);
    
  //  sys_vgui("namespace eval ::%s [list set canvas%lxBUTTONBINDING [bind %s <Button-1>]] \n", x->tcl_namespace, glist_getcanvas(x->glist), x->canvas_id);
  //  sys_vgui("namespace eval ::%s [list set canvas%lxKEYBINDING [bind %s <Key>]] \n", x->tcl_namespace, glist_getcanvas(x->glist), x->canvas_id);
    
    //focusout for clicking to other windows other than the main canvas
    sys_vgui("bind .x%lx.t%lxTEXT <FocusOut> {+pdsend {%s pdnofocus }}\n", canvas, (long)x, x->receive_name);
    
    if(!x->c_bind)
    {
//        post("%p %s no bind", x, __func__);
        sys_vgui("bind .x%lx.c <Button-1> {+pdsend {%s outsideclick }}\n", canvas, x->receive_name);
        sys_vgui("bind .x%lx.c <MouseWheel> {+pdsend {%s mousewheel %%D }}\n", canvas, x->receive_name);
        
        x->c_bind = 1;
    }
    
}


void odisplay_storeTextAndExitEditorTick(t_odisplay *x)
{
    
    t_canvas *canvas = glist_getcanvas(x->glist);
//    error("%p %s", x, __func__);
    sys_vgui(".x%lx.c itemconfigure text%lx -fill black -width %d -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", canvas, (long)x, x->width-10, x->tk_text);
    sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)x);
    
    x->textediting = 0;
    
    odisplay_getRectAndDraw(x, 1);

    //        post("%s %d", __func__, x->textediting);
    

    
}

void odisplay_storeTextAndExitEditor(t_odisplay *x)
{
    if(x->textediting){
        sys_vgui("sendchunks [.x%lx.t%lxTEXT get 0.0 end] %s \n", glist_getcanvas(x->glist),(long)x, x->receive_name); //sendchunks
        //receive happens on next tick
    }
    
}

void odisplay_getTextAndCreateEditor(t_odisplay *x, int firsttime)
{
    int x1 = x->ob.te_xpix;
    int y1 = x->ob.te_ypix;
    
    //post("%x %s %d x1 %d y1 %d x2 %d y2 %d", x, __func__, firsttime, x1, y1, x1+x->width, y1+x->height);
   t_canvas *canvas = glist_getcanvas(x->glist);
 
    if(firsttime)
    {
        //        sys_vgui("%s delete text%lx\n", x->canvas_id, (long)x);
        glist_noselect(x->glist);
        sys_vgui(".x%lx.c itemconfigure text%lx -fill white \n", canvas, (long)x);
        sys_vgui("text .x%lx.t%lxTEXT -font {{%s} %d %s} -undo true -fg \"black\" -bg #f8f8f6 -takefocus 1 -state normal -highlightthickness 0 -wrap word -spacing3 0\n", canvas, (long)x, sys_font, glist_getfont(x->glist), sys_fontweight );
        
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x1+4, canvas, y1+4, canvas, x->width-6, x->height-6);
       
//        sys_vgui("::pdwindow::post \"checkexpr [expr %d + [expr [lindex [%s xview] 0] * [expr [expr 1 / [expr [lindex [%s xview] 1] - [lindex [%s xview] 0]]] * [winfo width %s]]]] \n\"\n", x->ob.te_xpix, x->canvas_id, x->canvas_id, x->canvas_id, x->canvas_id);

//        sys_vgui("::pdwindow::post \"scrollivew [%s cget -scrollregion ] \n\"\n",  x->canvas_id);

       // sys_vgui("::pdwindow::post \"text lines: [%s count -lines 1.0 end] \n\"\n", x->text_id);
        
        if(x->tk_text)
            sys_vgui(".x%lx.t%lxTEXT insert 1.0 [subst -nobackslash -nocommands -novariables [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]] \n", canvas, (long)x, x->tk_text);
        
        sys_vgui("event generate .x%lx.t%lxTEXT <1> -x %d -y %d \n", canvas, (long)x, x1 + 10, y1 + 5);
        sys_vgui("event generate .x%lx.t%lxTEXT <ButtonRelease-1> -x %d -y %d \n", canvas, (long)x, x1 + 10, y1 + 5);
        sys_vgui(".x%lx.t%lxTEXT tag add sel 0.0 end\n", canvas, (long)x);
        
        odisplay_bind_text_events(x);
        
    }
    else
    { // pretty sure that this never gets called
        //        post("%s not first time", __func__);
        sys_vgui("place .x%lx.t%lxTEXT -x %d -y %d -width %d -height %d\n", canvas, (long)x, x1+4, y1+4, x->width-10, x->height-10);
    }
    
    {
        //this should be somewhere else
        x->editmode = glist_getcanvas(x->glist)->gl_edit;
        if(x->editmode && !x->selected)
        {
            sys_vgui(".x%lx.t%lxTEXT configure -cursor hand2\n", canvas, (long)x);
        } else if(x->editmode && x->selected) {
            sys_vgui(".x%lx.t%lxTEXT configure -cursor xterm\n", canvas, (long)x);
        } else if(!x->editmode){
            sys_vgui(".x%lx.t%lxTEXT configure -cursor center_ptr\n", canvas, (long)x);
        }
    }
    
    x->textediting = 1;
//    odisplay_getRectAndDraw(x, 0);
}


void odisplay_resetText(t_odisplay *x, char *s)
{
    x->parse_error = 0;
    
    if(!x->firsttime)
        canvas_dirty(x->glist, 1);
    
    odisplay_setTextFromString(x, s);
    
    if(x->textediting)
    {
        //do what if reset comes while editing?
        //probably throw out your text, as punishment for editing while sending stuff to your object
        odisplay_storeTextAndExitEditorTick(x);
    }
    else if(glist_isvisible(x->glist))
    {
        //post("%s %d", __func__, glist_isvisible(x->glist));
        sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", glist_getcanvas(x->glist), (long)x, x->width-10, x->tk_text);
        
        odisplay_getRectAndDraw(x, 1);
    }
}


static void odisplay_getrect(t_gobj *z, t_glist *glist,int *xp1, int *yp1, int *xp2, int *yp2)
{
    t_odisplay *x = (t_odisplay *)z;
    int x1, y1, x2, y2;
    
    //    post("%d",     glist_getcanvas(glist)->gl_pixheight);
    //    sys_vgui("::pdwindow::post \"[%s cget -scrollregion ] \n\" \n", x->canvas_id);
    
    //do this in the text editing part maybe?  or at least coordinate them better
    /*
     int font = glist_getfont(glist);
     int fontwidth = sys_fontwidth(font), fontheight = sys_fontheight(font);
     x->width = (x->width > 0 ? x->width : 6) * fontwidth + 2;
     x->height = fontheight + 3;
     */
    
    x1 = text_xpix(&x->ob, glist);
    y1 = text_ypix(&x->ob, glist);
    x2 = x1 + x->width;
    y2 = y1 + x->height;
    *xp1 = x1;
    *yp1 = y1;
    *xp2 = x2;
    *yp2 = y2;
    //post("%s %d %d %d %d", __func__, x1, y1, x2, y2);

}


void odisplay_drawElements(t_odisplay *x, t_glist *glist, int width2, int height2, int firsttime)
{
    
   // post("%x %s glist %x canvas %x", x, __func__, glist, glist_getcanvas(glist));
    if(x->in_new_flag || x->softlock)
    {
        //post("%x %s new bounce ---", x, __func__);
        return;
    }

    int have_new_data = 0;
	int draw_new_data_indicator = 0;
	critical_enter(x->lock);
	have_new_data = x->have_new_data;
	draw_new_data_indicator = x->draw_new_data_indicator;
	critical_exit(x->lock);
	if(have_new_data){
        odisplay_bundle2text(x);
	}
    
    
   // odisplay_bundle2text(x);
    
    int x1, y1, x2, y2;
    odisplay_getrect((t_gobj *)x, glist, &x1, &y1, &x2, &y2);
    int cx1 = x1;// - 2;
    int cy1 = y1;// - 2;
    int cx2 = x2;// + 2;
    int cy2 = y2;// + 2;
    int c_width = x->width * 0.75;
    //    int c_height = x->height * 0.75;
    int c_linewidth = 0;
    
    t_canvas *canvas = glist_getcanvas(glist);
    
    //post("%x %s isvisible %d isgraph %d", x, __func__, glist_isvisible(glist), glist_isgraph(glist));
    
    if (glist_isvisible(glist) && canvas->gl_editor)
    {
      //  post("%x %s %d %d\n", x, __func__, firsttime, x->firsttime);

        if (firsttime)
        {
            //post("%x %s FIRST VIS height %d y1 %d y2 %d \n", x, __func__, x->height, y1, y2);

            //fist time: create canvas elements, then add text, then get text height, and re-draw
            //post("%s drawing firsttime", __func__);
            sys_vgui("namespace eval ::%s [list set canvas%lxBUTTONBINDING [bind .x%lx.c <Button-1>]] \n", x->tcl_namespace, canvas, canvas);
            sys_vgui("namespace eval ::%s [list set canvas%lxKEYBINDING [bind .x%lx.c <Key>]] \n", x->tcl_namespace, canvas, canvas);
            sys_vgui("namespace eval ::%s [list set canvas%lxSCROLLBINDING [bind .x%lx.c <MouseWheel>]] \n", x->tcl_namespace, canvas, canvas);

            //border
            sys_vgui(".x%lx.c create rectangle %d %d %d %d -outline #f8f8f6 -fill #f8f8f6 -tags [list %s msg]\n",canvas, x1, y1, x2, y2, x->border_tag);
            
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d %d %d %d %d %d %d -outline \"black\" -fill #f8f8f6 -tags %s \n",canvas,
                     cx2-c_width, cy2, cx2, cy2, cx2, cy2-5, cx2-c_linewidth, cy2-5, cx2-c_linewidth, cy2-c_linewidth, cx2-c_width, cy2-c_linewidth, x->corner_tag);
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d %d %d %d %d %d %d -outline \"black\" -fill #f8f8f6 -tags %sTL \n",canvas, cx1+c_width, cy1, cx1, cy1, cx1, cy1+5, cx1-c_linewidth, cy1+5, cx1-c_linewidth, cy1-c_linewidth, cx1+c_width, cy1-c_linewidth, x->corner_tag);
            
            //update dot
            sys_vgui(".x%lx.c create oval %d %d %d %d -fill #f8f8f6 -outline #f8f8f6 -tags %s \n", canvas, x1+5, y1+5, x1+10, y1+10, x->updatedot_tag);

            
            //handle
            sys_vgui("canvas .x%lx.h%lxHANDLE -width 5 -height 5 \n", canvas, (long)x);
            sys_vgui(".x%lx.h%lxHANDLE create rectangle %d %d %d %d -outline \"blue\" -fill \"blue\" -tags %lxHANDLE \n",canvas, (long)x, 0, 0, 5, 5, (long)x);
            sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-5, canvas, y2-5, canvas, 5, 5);
            sys_vgui("bind .x%lx.h%lxHANDLE <Button-1> {+pdsend {%s resize_mousedown}} \n", canvas, (long)x, x->receive_name);
            sys_vgui("bind .x%lx.h%lxHANDLE <Motion> {+pdsend {%s resize_mousemove %%x %%y }} \n", canvas, (long)x, x->receive_name);
            sys_vgui("bind .x%lx.h%lxHANDLE <ButtonRelease-1> {+pdsend {%s resize_mouseup }} \n", canvas, (long)x, x->receive_name);
            
            if (x->tk_text)
            {
                sys_vgui(".x%lx.c create text %d %d -anchor nw -width %d -font {{%s} %d %s} -tags text%lx -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", canvas, text_xpix(&x->ob, x->glist)+5, text_ypix(&x->ob, x->glist)+5, x->width-10, sys_font, glist_getfont(x->glist), sys_fontweight, (long)x, x->tk_text );
                
                
// get height of text bbox, send to "setheight" to set height and redraw in the case of cmd-d duplicate, this gets called first, and then is displaced, so the bbox value is actually pre-displacement, see setheight function above
                odisplay_getRectAndDraw(x, 1);


            }
            x->firsttime = 0;

        }
        else
        {
            // post("%x %s REDRAW height %d y1 %d y2 %d \n", x, __func__, x->height, y1, y2);

            sys_vgui(".x%lx.c coords %s %d %d %d %d\n", canvas, x->border_tag, x1, y1, x2, y2);
            sys_vgui(".x%lx.c coords %s %d %d %d %d %d %d %d %d %d %d %d %d \n",canvas, x->corner_tag,
                     cx2-c_width, cy2, cx2, cy2, cx2, cy2-5, cx2-c_linewidth, cy2-5, cx2-c_linewidth, cy2-c_linewidth, cx2-c_width, cy2-c_linewidth);
            sys_vgui(".x%lx.c coords %sTL %d %d %d %d %d %d %d %d %d %d %d %d \n",canvas, x->corner_tag, cx1+c_width, cy1, cx1, cy1, cx1, cy1+5, cx1-c_linewidth, cy1+5, cx1-c_linewidth, cy1-c_linewidth, cx1+c_width, cy1-c_linewidth);
            
            //sys_vgui("%s coords %s %d %d %d %d \n",x->canvas_id, x->updatedot_tag, x1+5, y1+5, y1+10, y2+10);

            
            if (!x->mouseDown)
            {
                sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-5, canvas, y2-5, canvas, 5, 5);

            }
            
            if (x->textediting)
            {
                sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x1+4, canvas, y1+4, canvas, x->width-6, x->height-6);
            }
            else if (x->tk_text)
            {
                sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", canvas, (long)x, x->width-10, x->tk_text);
                
                
                
                //do syntax highlighting here?
            }
            
        }
        
        /* draw inlets/outlets */
        t_object *ob = pd_checkobject(&x->ob.te_pd);
        if (ob){
            glist_drawiofor(glist, ob, firsttime, x->iolets_tag, x1, y1, x2, y2);
        }
        if (firsttime) /* raise cords over everything else */
            sys_vgui(".x%lx.c raise cord\n", glist_getcanvas(glist));
                
        if(!x->editmode)
            sys_vgui(".x%lx.h%lxHANDLE configure -cursor left_ptr \n", canvas, (long)x);
        else if(x->editmode && !x->selected)
            sys_vgui(".x%lx.h%lxHANDLE configure -cursor hand2 \n", canvas, (long)x);
        else if(x->textediting || x->selected)
            sys_vgui(".x%lx.h%lxHANDLE configure -cursor fleur \n", canvas, (long)x);
        
        
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (x->parse_error?  "red" : "black" ));
        sys_vgui(".x%lx.c itemconfigure %sTL -outline %s\n", canvas, x->corner_tag, (x->parse_error? "red" : "black" ));
        
        sys_vgui(".x%lx.c itemconfigure %s -fill %s \n", canvas, x->updatedot_tag, (draw_new_data_indicator?  "black" : "#f8f8f6" ));

//        post("%x %s drawnew %d", x, __func__, draw_new_data_indicator);
        if(draw_new_data_indicator)
            clock_delay(x->new_data_indicator_clock, 100);
        
        if(glist_isselected(x->glist, &x->ob.te_g))
            gobj_select(&x->ob.te_g, x->glist, 1);
       
        canvas_fixlinesfor(glist, &x->ob);

    }
    else
    {
      //  post("%s not isvisible \n", __func__);
    }
    
}


static void odisplay_vis(t_gobj *z, t_glist *glist, int vis)
{
    t_odisplay *x = (t_odisplay *)z;
    
//    post("%x %s vis %d firsttime %d visable %d", x, __func__, vis, x->firsttime, glist_isvisible(glist));
    
    if(vis)
    {
        
        if(!x->firsttime && glist_isgraph(glist))
        {
            //post("GOP vis");
            odisplay_delete(z, glist); //<< necessary for GOP? keep an eye on this
            x->firsttime = 1;
        }

        if (glist_isvisible(glist))
        {//not visible when loading from disk (and from subpatcher?)
            //post("%x %s vis and isvisble", x, __func__);
            odisplay_drawElements(x, glist, x->width, x->height, 1);
        }
        else
        {
            //post("%x %s vis but not isvisible", x, __func__);
            x->firsttime = 1;
            odisplay_getRectAndDraw(x, 1);
        }
        
        if(x->textediting)
        {
            odisplay_getTextAndCreateEditor(x, 1);
        }

    }
    else
    {
        //if(!x->firsttime)
        {
            odisplay_delete(z, glist);
        }
    }
}

static void odisplay_displace(t_gobj *z, t_glist *glist,int dx, int dy)
{
    
    t_odisplay *x = (t_odisplay *)z;
    
    
    x->ob.te_xpix += dx;
    x->ob.te_ypix += dy;
    //x->ob.te_xpix = x->ob.te_xpix < 0 ? 0 : x->ob.te_xpix;
    //x->ob.te_ypix = x->ob.te_ypix < 0 ? 0 : x->ob.te_ypix;
    
    //post("%x %s %d %d height %d\n", x, __func__, x->ob.te_xpix, x->ob.te_ypix, x->height );
    
//    sys_vgui("::pdwindow::post \"width [winfo width %s] \n xview [%s xview]\n rootx [winfo rootx %s] \n canvasx [%s canvasx 0] \n\"\n", x->canvas_id, x->canvas_id, x->canvas_id, x->canvas_id  );
//    sys_vgui("::pdwindow::post \"scrollivew [%s cget -scrollregion ] \n\"\n",  x->canvas_id);
//    sys_vgui("::pdwindow::post \"check [expr [lindex [%s xview] 0] * [expr [expr 1 / [expr [lindex [%s xview] 1] - [lindex [%s xview] 0]]] * [winfo width %s]]] \n\"\n",  x->canvas_id, x->canvas_id, x->canvas_id, x->canvas_id); //[expr %d - [%s canvasx 0] + x->ob.te_xpix,

    
    int x2 = x->ob.te_xpix+x->width;
    int y2 = x->ob.te_ypix+x->height;
    
    t_canvas *canvas = glist_getcanvas(glist);
    
    sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->border_tag, dx, dy);
    sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->corner_tag, dx, dy);
    sys_vgui(".x%lx.c move %sTL %d %d\n", canvas, x->corner_tag, dx, dy);
    sys_vgui(".x%lx.c move text%lx %d %d\n", canvas, (long)x, dx, dy);
    sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->updatedot_tag, dx, dy);
    
    
    if (!x->mouseDown)
        sys_vgui("place .x%lx.h%lxHANDLE -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x2-5, canvas, y2-5, canvas, 5, 5);
    
    if(x->textediting)
    {
        sys_vgui("place .x%lx.t%lxTEXT -x [expr %d - [.x%lx.c canvasx 0]] -y [expr %d - [.x%lx.c canvasy 0]] -width %d -height %d\n", canvas, (long)x, x->ob.te_xpix+4, canvas, x->ob.te_ypix+4, canvas, x->width-10, x->height-10);
        //sys_vgui("place %s -x %d -y %d -width %d -height %d\n", x->text_id, x->ob.te_xpix+4, x->ob.te_ypix+4, x->width-10, x->height-10);
        
    }
    
    t_object *ob = pd_checkobject(&x->ob.te_pd);
    if (ob){
        glist_drawiofor(glist, ob, 0, x->iolets_tag, x->ob.te_xpix, x->ob.te_ypix, x2, y2);
    }
    
    canvas_fixlinesfor(glist, &x->ob);
    
    if(x->firstdisplace)
    {
        odisplay_getRectAndDraw(x, 1);
        x->firstdisplace = 0;
    }
    
    
}

static void odisplay_select(t_gobj *z, t_glist *glist, int state)
{
    t_odisplay *x = (t_odisplay *)z;
    
//    post("%p %s state %d selected %d textediting %d <<pre", x, __func__, state, x->selected, x->textediting);
    t_canvas *canvas = glist_getcanvas(glist);
    if(state)
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor fleur \n", canvas, (long)x);
    
    
    if(state && !x->selected)
    {
        x->selected = 1;
    }
    else if(state && x->selected)
    {
        {
            //odisplay_getTextAndCreateEditor(x, 1); //this is actually activate()
        }
    }
    else if(!state)
    {
        if(x->textediting)
            odisplay_storeTextAndExitEditor(x);
        
        x->selected = 0;
        
    }
    
    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist)){
        //       sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill" )); //was "$box_outline"
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
        sys_vgui(".x%lx.c itemconfigure %sTL -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));

        sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->updatedot_tag, (x->draw_new_data_indicator? (state? "blue" : "black") : "#f8f8f6"));

        
        if(!x->textediting){
            sys_vgui(".x%lx.c itemconfigure text%lx -fill %s\n", canvas, (long)x, (state? "blue" : "black"));
        }
    }
//    post("%p %s state %d selected %d textediting %d  << post", x, __func__, state, x->selected, x->textediting);

}

static void odisplay_activate(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    
    t_odisplay *x = (t_odisplay *)z;
    t_canvas *canvas = glist_getcanvas(glist);
    if(state)
    {
        odisplay_getTextAndCreateEditor(x, 1);
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor fleur \n", canvas, (long)x);
    }
    else
    {
        odisplay_storeTextAndExitEditor(x);
        odisplay_gettext(x);
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor $cursor_editmode_nothing\n", canvas, (long)x);
        
    }
    
    //    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill"));//was "$box_outline"
    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
    sys_vgui(".x%lx.c itemconfigure %sTL -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
    sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->updatedot_tag, (x->draw_new_data_indicator? (state? "blue" : "black") : "#f8f8f6"));

}

static void odisplay_delete(t_gobj *z, t_glist *glist)
{
    t_odisplay *x = (t_odisplay *)z;
   // odisplay_pdnofocus_callback(x);

  //    post("%s %d %p \n",__func__, x->firsttime, glist->gl_editor);
    
    t_canvas *canvas = glist_getcanvas(glist);
    if(!x->firsttime && canvas->gl_editor)
    {
        sys_vgui("destroy .x%lx.h%lxHANDLE\n", canvas, (long)x);

        //post("deleting\n");
        sys_vgui(".x%lx.c delete %s\n", canvas, x->border_tag);
        sys_vgui(".x%lx.c delete %s\n", canvas, x->corner_tag);
        sys_vgui(".x%lx.c delete %sTL\n", canvas, x->corner_tag);
        sys_vgui(".x%lx.c delete text%lx \n", canvas, (long)x);
        sys_vgui(".x%lx.c delete %s\n", canvas, x->updatedot_tag);
        
        if(x->textediting)
            sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)x);
        
        glist_eraseiofor(glist, &x->ob, x->iolets_tag);
    }
    
    canvas_deletelinesfor(canvas, &x->ob);
    
}

static void odisplay_doClick(t_odisplay *x,
                             t_floatarg xpos, t_floatarg ypos, t_floatarg shift,
                             t_floatarg ctrl, t_floatarg alt)
{
    if (glist_isvisible(x->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -width 5\n", glist_getcanvas(x->glist), x->border_tag);
        odisplay_bang(x);
        clock_delay(x->m_clock, 120);
    }
}


static int odisplay_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit)
{
    t_odisplay *x = (t_odisplay *)z;
    {
        if(doit)
        {
            odisplay_doClick(x, (t_floatarg)xpix, (t_floatarg)ypix, (t_floatarg)shift, (t_floatarg)0, (t_floatarg)alt);
        }
        return (1);
    }
}


static void odisplay_tick(t_odisplay *x)
{
    if (glist_isvisible(x->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -width 1\n", glist_getcanvas(x->glist), x->border_tag);
    }
}


static void odisplay_save(t_gobj *z, t_binbuf *b)
{
    
    /*
     //prints current pd file text in binbuf
     int argc = binbuf_getnatom(b);
     if(argc > 0){
     t_atom *at = binbuf_getvec(b);
     printargs(argc, at);
     }
     */
    
    t_odisplay *x = (t_odisplay *)z;

    odisplay_setHexFromText(x, x->text);
    
//    post("%x %s height %d", x, __func__, x->height);
    
    if(!x->firsttime && glist_getcanvas(x->glist)->gl_editor)
        odisplay_pdnofocus_callback(x);
    
    binbuf_addv(b, "ssiisiis", gensym("#X"),gensym("obj"),(t_int)x->ob.te_xpix, (t_int)x->ob.te_ypix, gensym("o.display"), x->width, x->height, gensym("binhex"));
    
    long chunksize = 32;
    char buf[chunksize+3];
    long len = strlen(x->hex);
    long chunks = len / chunksize;
    long chad = len % chunksize;
    long i,k;
    for (k = 0; k < chunks; k++) {
        memset(buf, '\0', chunksize+3 );
        buf[0] = 'b';
        buf[1] = '#';
        for (i = 0; i < chunksize; i++) {
            buf[i+2] = x->hex[i + (k*chunksize) ];
        }
        binbuf_addv(b, "s", gensym(buf));
    }
    memset(buf, '\0', chunksize+3 );
    buf[0] = 'b';
    buf[1] = '#';
    
    for (i = 0; i < chad; i++) {
        buf[i+2] = x->hex[i + (k*chunksize) ];
    }
    binbuf_addv(b, "s", gensym(buf));
    
    binbuf_addsemi(b);
    
}

void odisplay_free(t_odisplay *x)
{
//    printf("%s\n", __func__);
    free(x->text);
    free(x->tk_text);
    free(x->hex);
    free(x->tcl_namespace);
    free(x->updatedot_tag);
    free(x->border_tag);
    free(x->corner_tag);
    free(x->iolets_tag);
    pd_unbind(&x->ob.ob_pd, gensym(x->receive_name));
    free(x->receive_name);
    
    clock_free(x->m_clock);
    clock_free(x->new_data_indicator_clock);
    
    
    {
        
        critical_free(x->lock);
        if(x->proxy){
            pd_free(x->proxy[0]);
            pd_free(x->proxy[1]);
            free(x->proxy);
        }
        /*
        if(x->bndl){
            switch(x->bndltype){
                case odisplay_S:
                    osc_bundle_s_deepFree((t_osc_bndl_s *)x->bndl);
                    break;
                case odisplay_U:
                    osc_bundle_u_free((t_osc_bndl_u *)x->bndl);
                    break;
            }
        }
         */
        
        odisplay_clearBundles(x);
        
    }
    
}


void *odisplay_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_odisplay *x = (t_odisplay *)pd_new(odisplay_class->class);
    if(x)
    {
        x->in_new_flag = 1;
        
        x->glist = (t_glist *)canvas_getcurrent();
      //  post("%s %p %d glist %x canvas %x\n", __func__, x, __LINE__, x->glist, glist_getcanvas(x->glist));
   
        x->outlet = outlet_new(&x->ob, NULL);
        
        //            x->ob.b_firstin = (void *)x;
        
        x->proxy = (void **)malloc(argc * sizeof(t_omax_pd_proxy *));
        x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), odisplay_proxy_class);
        x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), odisplay_proxy_class);
        
        x->bndl_u = NULL;
		x->bndl_s = NULL;
		x->newbndl = 0;
		x->textlen = 0;
        
        critical_new(&(x->lock));
        //        x->qelem = qelem_new((t_object *)x, (method)odisplay_refresh);
        
        x->m_clock = clock_new(x, (t_method)odisplay_tick);
        
        x->new_data_indicator_clock = clock_new(x, (t_method)odisplay_refresh);
        x->have_new_data = 1;
        x->draw_new_data_indicator = 0;
        
        x->text = NULL;
        x->text = (char *)malloc(OMAX_PD_MAXSTRINGSIZE * sizeof(char));
        if(x->text == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
            
        x->tk_text = NULL;
        x->tk_text = (char *)malloc(OMAX_PD_MAXSTRINGSIZE * sizeof(char));
        if(x->tk_text == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        
        x->hex = NULL;
        x->hex = (char *)malloc(OMAX_PD_MAXSTRINGSIZE * 2 * sizeof(char));
        if(x->hex == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        
        
        // NOTE: in Graph On Parent (GOP) situation, the canvas is created AFTER the new function so we need to do this once we know we are in the right canvas context
        
        x->border_tag = NULL;
        x->updatedot_tag = NULL;
        x->corner_tag = NULL;
        x->iolets_tag = NULL;

        
        //object name heirarchy:
        char buf[MAXPDSTRING];

        sprintf(buf, "%lxBORDER", (long unsigned int)x);
        x->border_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(x->border_tag == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->border_tag, buf);
        
        sprintf(buf, "%lxDOT", (long unsigned int)x);
        x->updatedot_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(x->updatedot_tag == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->updatedot_tag, buf);
        
        sprintf(buf, "%lxCORNER", (long unsigned int)x);
        x->corner_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(!x->corner_tag)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->corner_tag, buf);
        
        sprintf(buf, "%lxIOLETS", (long unsigned int)x);
        x->iolets_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(x->iolets_tag == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->iolets_tag, buf);
        
        
        sprintf(buf,"omess%lx",(long unsigned int)x);
        x->tcl_namespace = NULL;
        x->tcl_namespace = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(x->tcl_namespace == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->tcl_namespace, buf);
        sprintf(buf,"#%s", x->tcl_namespace);
        
        x->receive_name = NULL;
        x->receive_name = (char *)malloc(sizeof(char) * (strlen(buf)+1));

//        printf("%p %s %d %s\n", x, __func__, __LINE__, buf);
        
        if(x->receive_name == NULL)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->receive_name, buf);

        pd_bind(&x->ob.ob_pd, gensym(x->receive_name));

//        printargs(argc, argv);
        
        x->width = 100;
        x->height = -1;
        x->firsttime = 1;
        x->firstdisplace = 1;
        x->forceredraw = 0;
        x->parse_error = 0;
        x->streamflag = 0;
        x->yscroll = 0;
        

        if(argc > 3)
        {
            x->width = atom_getfloat(argv);
            x->height = atom_getfloat(argv+1);
            if(((argv+2)->a_type == A_SYMBOL ) && (atom_getsymbol(argv+2) == gensym("binhex")))
            {
              
                odisplay_textbuf(x, NULL, argc-2, (argv+2));
                t_atom done[2];
                atom_setsym(done, gensym("binhex"));
                atom_setsym(done+1, gensym(x->receive_name));
                odisplay_textbuf(x, NULL, 2, done);
              
            }
        }
        
        //post("%x %s height %d", x, __func__, x->height);


        sys_vgui("namespace eval ::%s [list set textbuf%lx \"\"] \n", x->tcl_namespace, (long)x);
        sys_vgui("namespace eval ::%s set textheight%lx 10 \n", x->tcl_namespace, (long)x);
        
        sys_vgui("proc string2hex s {\n\
                 binary scan $s H* hex\n\
                 # regsub -all (..) $hex {\\x\1} \n\
                 return $hex\n\
                 }\n");
        
        sys_vgui("proc sendchunks {str sendto} {\n\
                 binary scan $str H* hex\n\
                 set k 0 ; set chunksize 512 ; set len [string length $hex] ; set nchunks [expr $len / $chunksize] ; set chad [expr $len %% $chunksize] \n\
                 if { $nchunks > 0 } { \n\
                    for {set k 0} {$k < $nchunks} {incr k} {\n\
                        set hexchunk \"\" \n\
                        for {set i 0} {$i < $chunksize} {incr i} {\n\
                            append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n\
                        }\n\
                        pdsend \"$sendto textbuf hex $hexchunk \"\n\
                    }\n\
                 }\n\
                 set hexchunk \"\" \n\
                 for {set i 0} {$i < $chad} {incr i} {\n\
                    append hexchunk [string index $hex [expr $i + [expr $k * $chunksize]]]\n\
                 }\n\
                 pdsend \"$sendto textbuf hex $hexchunk \"\n\
                 pdsend \"$sendto textbuf hex $sendto \"\n\
                 }\n");//, x->receive_name, x->receive_name, x->receive_name, x->receive_name);
        
        sys_vgui("proc string2bytes s {\n\
                 binary scan $s B* hex\n\
                 return $hex\n\
                 }\n");
        
        sys_vgui("proc string2ascii s {\n\
                 binary scan $s c* c_int\n\
                 return $c_int\n\
                 }\n");
        
        
        
        // sys_vgui("namespace eval ::%s [list set textbuf%lx \"/foo 1\"] \n", x->tcl_namespace, glist_getcanvas(x->glist));
        
        x->mouseDown = 0;
        x->selected = 0;
        x->editmode = glist_getcanvas(x->glist)->gl_edit;
        x->textediting = 0;
        
        x->in_new_flag = 0;
        //printf("%s %p %d\n", __func__, x, __LINE__);
        
        x->softlock = 0;
        
    }
    return (void *)x;
}

void setup_o0x2edisplay(void) {
    
    omax_pd_class_new(odisplay_class, gensym("o.display"), (t_newmethod)odisplay_new, (t_method)odisplay_free, sizeof(t_odisplay),  CLASS_NOINLET, A_GIMME, 0);
    
    class_addmethod(odisplay_class->class, (t_method)odisplay_textbuf,gensym("textbuf"), A_GIMME, 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_insideclick_callback, gensym("insideclick"), 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_outsideclick_callback, gensym("outsideclick"), 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_pdnofocus_callback, gensym("pdnofocus"), 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_key_callback, gensym("key"), A_GIMME, 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_keyup_callback, gensym("keyup"), A_GIMME, 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_resize_mousedown, gensym("resize_mousedown"), 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_resize_mousemove, gensym("resize_mousemove"), A_DEFFLOAT, A_DEFFLOAT, 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_resize_mouseup, gensym("resize_mouseup"), 0);
    class_addmethod(odisplay_class->class, (t_method)odisplay_mousewheel_callback, gensym("mousewheel"), 0);
    
    class_addmethod(odisplay_class->class, (t_method)odisplay_setHeight, gensym("setheight"), A_DEFFLOAT, 0);
    
    //t_omax_pd_proxy_class *c = NULL;
    //omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
    omax_pd_class_addbang(c, (t_method)odisplay_bang);
    
	omax_pd_class_addfloat(c, (t_method)odisplay_float);
	omax_pd_class_addmethod(c, (t_method)odisplay_list, gensym("list"));
	omax_pd_class_addanything(c, (t_method)odisplay_anything);
	omax_pd_class_addmethod(c, (t_method)odisplay_set, gensym("set"));
    omax_pd_class_addmethod(c, (t_method)odisplay_doc, gensym("doc"));

    
	omax_pd_class_addmethod(c, (t_method)odisplay_fullPacket, gensym("FullPacket"));
    
    odisplay_widgetbehavior.w_getrectfn = odisplay_getrect;
    odisplay_widgetbehavior.w_displacefn = odisplay_displace;
    odisplay_widgetbehavior.w_selectfn = odisplay_select;
    odisplay_widgetbehavior.w_deletefn = odisplay_delete;
    odisplay_widgetbehavior.w_clickfn = odisplay_click;
    odisplay_widgetbehavior.w_activatefn = odisplay_activate;
    odisplay_widgetbehavior.w_visfn = odisplay_vis;
    
    
    class_setsavefn(odisplay_class->class, odisplay_save);
    class_setwidget(odisplay_class->class, &odisplay_widgetbehavior);
    
    ps_newline = gensym("\n");
	ps_FullPacket = gensym("FullPacket");
    
    odisplay_proxy_class = c;
    
    ODOT_PRINT_VERSION;

    //return 0;
    
}

#else

void odisplay_free(t_odisplay *x)
{
	jbox_free((t_jbox *)x);
    odisplay_clearBundles(x);
	critical_free(x->lock);
}

OMAX_DICT_DICTIONARY(t_odisplay, x, odisplay_fullPacket);


void odisplay_assist(t_odisplay *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}


/**************************************************
 Object and instance creation functions.
 **************************************************/

void *odisplay_new(t_symbol *msg, short argc, t_atom *argv){
	t_odisplay *x;
    
	t_dictionary *d = NULL;
 	long boxflags;
    
	// box setup
	if(!(d = object_dictionaryarg(argc, argv))){
		return NULL;
	}
    
	boxflags = 0
    | JBOX_DRAWFIRSTIN
    | JBOX_NODRAWBOX
    | JBOX_DRAWINLAST
    | JBOX_TRANSPARENT
    //| JBOX_NOGROW
    //| JBOX_GROWY
    //| JBOX_GROWBOTH
    //| JBOX_HILITE
    //| JBOX_BACKGROUND
    //| JBOX_DRAWBACKGROUND
    //| JBOX_NOFLOATINSPECTOR
    //| JBOX_MOUSEDRAGDELTA
    | JBOX_TEXTFIELD
    ;
    
	if((x = (t_odisplay *)object_alloc(odisplay_class))){
		jbox_new((t_jbox *)x, boxflags, argc, argv);
 		x->ob.b_firstin = (void *)x;
		x->outlet = outlet_new(x, NULL);
		//x->proxy = proxy_new(x, 1, &(x->inlet));
		x->bndl_u = NULL;
		x->bndl_s = NULL;
		x->newbndl = 0;
		x->textlen = 0;
		x->text = NULL;
		//x->bndl_has_been_checked_for_subs = 0;
		//x->bndl_has_subs = 0;
		critical_new(&(x->lock));
		x->qelem = qelem_new((t_object *)x, (method)odisplay_refresh);
		x->new_data_indicator_clock = clock_new((t_object *)x, (method)odisplay_refresh);
		x->have_new_data = 1;
		x->draw_new_data_indicator = 0;
		attr_dictionary_process(x, d);
        
		t_object *textfield = jbox_get_textfield((t_object *)x);
		if(textfield){
			object_attr_setchar(textfield, gensym("editwhenunlocked"), 0);
            textfield_set_readonly(textfield, '1');
            textfield_set_selectallonedit(textfield, '1');
			textfield_set_textmargins(textfield, 5, 5, 5, 15);
			textfield_set_textcolor(textfield, &(x->text_color));
		}
        
 		jbox_ready((t_jbox *)x);
		//odisplay_gettext(x);
        odisplay_clear(x);
		return x;
	}
	return NULL;
}

// CLASS_ATTR_STYLE_LABEL as defined in ext_obex_util.h uses gensym_tr() which isn't included in the SDK causing
// compilation to fail.  This kludge just replaces gensym_tr() with gensym()
/*
 #define CLASS_ATTR_STYLE_LABEL_KLUDGE(c,attrname,flags,stylestr,labelstr) \
 { CLASS_ATTR_ATTR_PARSE(c,attrname,"style",USESYM(symbol),flags,stylestr); CLASS_ATTR_ATTR_FORMAT(c,attrname,"label",USESYM(symbol),flags,"s",gensym(labelstr)); }
 */
#define CLASS_ATTR_CATEGORY_KLUDGE(c,attrname,flags,parsestr) \
CLASS_ATTR_ATTR_PARSE(c,attrname,"category",USESYM(symbol),flags,parsestr)


int main(void){
	common_symbols_init();
	t_class *c = class_new("o.display", (method)odisplay_new, (method)odisplay_free, sizeof(t_odisplay), 0L, A_GIMME, 0);
	alias("o.d");
    
	c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
 	jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR);
    
	class_addmethod(c, (method)odisplay_paint, "paint", A_CANT, 0);
    
//	class_addmethod(c, (method)odisplay_bang, "bang", 0);
//	class_addmethod(c, (method)odisplay_int, "int", A_LONG, 0);
//	class_addmethod(c, (method)odisplay_float, "float", A_FLOAT, 0);
//	class_addmethod(c, (method)odisplay_list, "list", A_GIMME, 0);
//	class_addmethod(c, (method)odisplay_anything, "anything", A_GIMME, 0);
//	class_addmethod(c, (method)odisplay_set, "set", A_GIMME, 0);
	class_addmethod(c, (method)odisplay_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)odisplay_doc, "doc", 0);
	class_addmethod(c, (method)odisplay_fullPacket, "FullPacket", A_GIMME, 0);

	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
    
//	class_addmethod(c, (method)odisplay_clear, "clear", 0);
	class_addmethod(c, (method)odisplay_select, "select", 0);
//	class_addmethod(c, (method)odisplay_mousedown, "mousedown", A_CANT, 0);
//	class_addmethod(c, (method)odisplay_mouseup, "mouseup", A_CANT, 0);
	class_addmethod(c, (method)odot_version, "version", 0);
    
    
 	CLASS_ATTR_RGBA(c, "background_color", 0, t_odisplay, background_color);
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "background_color", 0, ".884 .884 .884 1.");
 	CLASS_ATTR_STYLE_LABEL(c, "background_color", 0, "rgba", "Background Color");
	CLASS_ATTR_CATEGORY_KLUDGE(c, "background_color", 0, "Color");
    
 	CLASS_ATTR_RGBA(c, "frame_color", 0, t_odisplay, frame_color);
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, ".216 .435 .7137 1.");
 	CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color");
	CLASS_ATTR_CATEGORY_KLUDGE(c, "frame_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "flash_color", 0, t_odisplay, flash_color);
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "flash_color", 0, ".761 .349 .306 1.");
 	CLASS_ATTR_STYLE_LABEL(c, "flash_color", 0, "rgba", "Flash Color");
	CLASS_ATTR_CATEGORY_KLUDGE(c, "flash_color", 0, "Color");
    
 	CLASS_ATTR_RGBA(c, "text_color", 0, t_odisplay, text_color);
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "text_color", 0, "0. 0. 0. 1.");
    CLASS_ATTR_DEFAULT(c, "fontname", 0, "\"Courier New\"");
 	//CLASS_ATTR_STYLE_LABEL(c, "text_color", 0, "rgba", "Text Color"); /* this line & next make two Text Color fields in the inspector - remove them for justice */
	//CLASS_ATTR_CATEGORY_KLUDGE(c, "text_color", 0, "Color");
    
	CLASS_ATTR_DEFAULT(c, "rect", 0, "0. 0. 150. 18.");
    
	class_register(CLASS_BOX, c);
	odisplay_class = c;
    
	ps_newline = gensym("\n");
	ps_FullPacket = gensym("FullPacket");
    
	ODOT_PRINT_VERSION;
    
	return 0;
}

#endif


/*  PD NOTES

need to not do any binding if canvas is not visible (in subpatcher), it seems to be happening, and I'm not sure why
**update: check status on that
 
new: duplication seems to alwasy be off by 10px not sure where that is yet
 
 
*/
