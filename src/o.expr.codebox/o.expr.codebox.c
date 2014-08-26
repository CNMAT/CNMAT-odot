/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2014, The Regents of
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
  NAME: o.expr.codebox
  DESCRIPTION: Textfield interface to o.expr
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2014
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#ifdef NAME
#undef NAME
#endif

#ifdef OMAX_PD_VERSION
#define OMAX_DOC_NAME "oexprcodebox"
#else
#define OMAX_DOC_NAME "o.expr.codebox"
#endif
#define OMAX_DOC_SHORT_DESC "Evaluate a C-like expression containing OSC addresses"
#define OMAX_DOC_LONG_DESC "When it reveives a packet, o.expr substitutes any OSC addresses contained in the expression for the values to which they are bound in the incoming packet.  The expression is then evaluated and the resulting bundle, containing any side effects of the expression, is output."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet containing the results of the expression"}
#define OMAX_DOC_SEEALSO (char *[]){"o.if", "o.cond", "o.when", "o.unless", "expr", "jit.expr"}

#define NAME OMAX_DOC_NAME

#ifndef WIN_VERSION
#include <mach/mach.h>
#include <mach/mach_time.h>
#endif

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
//#include "m_imp.h"
#include "g_canvas.h"
//#include "g_all_guis.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "jpatcher_api.h"
#include "jgraphics.h"
#endif

#include "osc.h"
#include "osc_expr.h"
#include "osc_expr_parser.h"
#include "osc_mem.h"
#include "osc_atom_u.h"
#include "osc_error.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_iterator_s.h"

#include "odot_version.h"

#include "o.h"

#ifdef OMAX_PD_VERSION
#define OMAX_PD_MAXSTRINGSIZE (1<<16)
#include "opd_textbox.h"

typedef struct _jrgba {
	double red;				///< Red component in the range [0.0, 1.0]
	double green;			///< Green component in the range [0.0, 1.0]
	double blue;
	double alpha;			///< Alpha (transparency) component in the range [0.0, 1.0]
} t_jrgba;

typedef struct _oexprcodebox
{
    t_object ob;
    t_opd_textbox *textbox;
    char *border_tag;
    char *update_tag;
    t_critical lock;
    long textlen;
    char *text;
    t_jrgba frame_color, background_color, text_color, default_color, error_color;
    void *outlets[2];
    t_osc_expr *expr;
} t_oexprcodebox;

t_class *oexprcodebox_class;
t_class *oexprcodebox_textbox_class;

t_widgetbehavior oexprcodebox_widgetbehavior;

#else
typedef struct _oexprcodebox
{
    t_jbox ob;
    t_critical lock;
    long textlen;
    char *text;
    t_jrgba frame_color, background_color, text_color, default_color, error_color;
    void *outlets[2];
    t_osc_expr *expr;
} t_oexprcodebox;

void *oexprcodebox_class;
#endif

void oexprcodebox_bang(t_oexprcodebox *x);


void oexprcodebox_fullPacket(t_oexprcodebox *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    if(len <= 0){
        return;
    }
	// we need to make a copy incase the expression contains assignment that will
	// alter the bundle.
	// the copy needs to use memory allocated with osc_mem_alloc in case the
	// bundle has to be resized during assignment
	char *copy = NULL;
	long copylen = len;
	if(strncmp(ptr, "#bundle\0", 8)){
		char alloc = 0;
		osc_bundle_s_wrapMessage(len, ptr, &copylen, &copy, &alloc);
	}else{
		copy = (char *)osc_mem_alloc(len);
		memcpy(copy, ptr, len);
	}
	int ret = 0;
	t_osc_expr *f = x->expr;
	if(!f){
		//t_osc_atom_ar_u *av = NULL;
		//osc_expr_evalLexExprsInBndl(&copylen, &copy, &av);
	}else{
		while(f){
			//int argc = 0;
			t_osc_atom_ar_u *av = NULL;
			ret = osc_expr_eval(f, &copylen, &copy, &av);
			if(av){
				osc_atom_array_u_free(av);
			}
			if(ret){
				break;
			}
			f = osc_expr_next(f);
		}
	}
	if(ret){
		omax_util_outletOSC(x->outlets[1], len, ptr);
	}else{
		omax_util_outletOSC(x->outlets[0], copylen, copy);
	}
	if(copy){
		osc_mem_free(copy);
	}
}

#ifndef OMAX_PD_VERSION
void oexprcodebox_paint(t_oexprcodebox *x, t_object *patcherview)
{
    critical_enter(x->lock);
    critical_exit(x->lock);
    t_rect rect;
    t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
    jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
    
    jgraphics_set_source_jrgba(g, &(x->frame_color));
	jgraphics_rectangle(g, 0, 0, rect.width, rect.height);
	jgraphics_fill(g);

    jgraphics_set_source_jrgba(g, &(x->background_color));
    jgraphics_rectangle(g, 2, 10, rect.width - 4, rect.height - 12);
	jgraphics_fill(g);
}

void oexprcodebox_doselect(t_oexprcodebox *x){
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

void oexprcodebox_select(t_oexprcodebox *x){
    defer(x, (method)oexprcodebox_doselect, 0, 0, 0);
}

long oexprcodebox_key(t_oexprcodebox *x, t_object *patcherview, long keycode, long modifiers, long textcharacter){
    char buff[256];
    buff[0] = textcharacter;  // we know this is just a simple char
    buff[1] = 0; 
    object_method(patcherview, gensym("insertboxtext"), x, buff);
    jbox_redraw((t_jbox *)x);

    return 1; 
}

long oexprcodebox_keyfilter(t_oexprcodebox *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter){
    t_atom arv;
    long rv = 1;
    long k = *keycode;
    
    if (k == JKEY_TAB) {
        char buff[4];
        for ( int i = 0; i < 4; ++i ) {
            buff[i] = ' ';
        }
        object_method(patcherview, gensym("insertboxtext"), x, buff);
        jbox_redraw((t_jbox *)x);
    }
    
    if (k == JKEY_ESC) {
        object_method_typed(patcherview, gensym("endeditbox"), 0, NULL, &arv);
        rv = 0;                // don't pass those keys to oexprcodebox
    }
    return rv;
}


void oexprcodebox_mousedown(t_oexprcodebox *x, t_object *patcherview, t_pt pt, long modifiers){
	textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 14, 6, 6);
    jbox_redraw((t_jbox *)x);
}

void oexprcodebox_mouseup(t_oexprcodebox *x, t_object *patcherview, t_pt pt, long modifiers){
	textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 13, 5, 5);
    jbox_redraw((t_jbox *)x);
    oexprcodebox_bang(x);
}

OMAX_DICT_DICTIONARY(t_oexprcodebox, x, oexprcodebox_fullPacket);

void oexprcodebox_assist(t_oexprcodebox *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}

t_max_err oexprcodebox_notify(t_oexprcodebox *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
    return MAX_ERR_NONE;
    t_symbol *attrname;
    
    if(msg == gensym("attr_modified")){
        attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
    }
    return MAX_ERR_NONE;
}
#endif

void oexprcodebox_gettext(t_oexprcodebox *x)
{
    long size        = 0;
    char *text       = NULL;
#ifdef OMAX_PD_VERSION
    text = x->textbox->text;
#else
    t_object *textfield = jbox_get_textfield((t_object *)x);
    object_method(textfield, gensym("gettextptr"), &text, &size);
#endif
    size = strlen(text); // the value returned in text doesn't make sense
    // free expr
    //oexprcodebox_clearBundles(x);
    if(x->expr){
        critical_enter(x->lock);
        osc_expr_free(x->expr);
        x->expr = NULL;
        // search and replace #n params
        critical_exit(x->lock);
    }
    
    if(size == 0){
        return;
    }  
    
    critical_enter(x->lock);
    // search and replace #n params
    osc_expr_parser_parseExpr(text, &(x->expr));
    
    if(x->expr != NULL) {
        x->frame_color.red = x->default_color.red;
        x->frame_color.green = x->default_color.green;
        x->frame_color.blue = x->default_color.blue;
        x->frame_color.alpha = x->default_color.alpha;
    } else {
        x->frame_color.red = x->error_color.red;
        x->frame_color.green = x->error_color.green;
        x->frame_color.blue = x->error_color.blue;
        x->frame_color.alpha = x->error_color.alpha;
    }
    
    critical_exit(x->lock);
}

// enter is triggerd at "endeditbox time"
void oexprcodebox_enter(t_oexprcodebox *x)
{
    oexprcodebox_gettext(x);
}

void oexprcodebox_postExprAST(t_oexprcodebox *fg)
{
    char *buf = NULL;
    long len = 0;
    t_osc_expr *f = fg->expr;
    //while(f){
    osc_expr_format(f, &len, &buf);
    // the modulo op '%' gets consumed as a format character with cycling's post() function.
    // so go through and escape each one with another %
    char buf2[len * 2];
    char *r = buf, *w = buf2;
    int i;
    for(i = 0; i < len; i++){
        if(*r == '%'){
            *w++ = '%';
        }
        *w++ = *r++;
    }
    *w = '\0';
    post("%s", buf2);
    //f = osc_expr_next(f);
    //
    if(buf){
        osc_mem_free(buf);
    }
}

void oexprcodebox_postFunctionTable(t_oexprcodebox *fg)
{
    char *buf = NULL;
    long len = 0;
    osc_expr_formatFunctionTable(&len, &buf);
    char *ptr1 = buf, *ptr2 = buf;
    while(*ptr2){
            if(*ptr2 == '\n'){
                    *ptr2 = '\0';
                    post("%s", ptr1);
                    ptr1 = ptr2 + 1;
                    ptr2++;
            }
            ptr2++;
    }
    if(buf){
            osc_mem_free(buf);
    }
}

void oexprcodebox_bang(t_oexprcodebox *x)
{
    char buf[16];
    memset(buf, '\0', 16);
    strncpy(buf, "#bundle\0", 8);
    //oexprcodebox_fullPacket(x, 16, (long)buf);
#ifdef OMAX_PD_VERSION
	t_atom a[3];
	omax_util_oscLenAndPtr2Atoms(a, 16, buf);
	oexprcodebox_fullPacket(x, NULL, 3, a);
#else
    t_atom a[2];
    atom_setlong(a, 16);
    atom_setlong(a + 1, (long)buf);
    oexprcodebox_fullPacket(x, NULL, 2, a);
#endif
}

void oexprcodebox_doc_cat(t_oexprcodebox *x, t_symbol *msg, int argc, t_atom *argv)
{
        if(argc == 0){
                t_osc_bndl_s *b = osc_expr_getCategories();
                omax_util_outletOSC(x->outlets[0], osc_bundle_s_getLen(b), osc_bundle_s_getPtr(b));
        }else{
                if(atom_gettype(argv) != A_SYM){
                        object_error((t_object *)x, "doc-cat: argument must be a symbol");
                        return;
                }
                t_symbol *cat = atom_getsym(argv);
                long len = 0;
                char *ptr = NULL;
                osc_expr_getFunctionsForCategory(cat->s_name, &len, &ptr);
                if(ptr){
                        omax_util_outletOSC(x->outlets[0], len, ptr);
                        osc_mem_free(ptr);
                }
        }
}

void oexprcodebox_doc_func(t_oexprcodebox *x, t_symbol *msg, int argc, t_atom *argv)
{
        if(argc != 1){
                object_error((t_object *)x, "doc-func expected an argument--the name of a function");
                return;
        }
        if(atom_gettype(argv) != A_SYM){
                object_error((t_object *)x, "doc-func expected the argument to be a symbol--the name of a function");
                return;
        }
        t_symbol *func = atom_getsym(argv);
        t_osc_bndl_u *bndl = NULL;
        t_osc_err e = osc_expr_getDocForFunction(func->s_name, &bndl);
        if(e){
                object_error((t_object *)x, "%s", osc_error_string(e));
                return;
        }
        if(bndl){
                char *buf = NULL;
                long len = 0;
                osc_bundle_u_serialize(bndl, &len, &buf);
                if(buf){
                        omax_util_outletOSC(x->outlets[0], len, buf);
                        osc_mem_free(buf);
                }
                osc_bundle_u_free(bndl);
        }
}

void oexprcodebox_doc(t_oexprcodebox *x)
{
    omax_doc_outletDoc(x->outlets[0]);
}

void oexprcodebox_free(t_oexprcodebox *x)
{
    if(x->expr){
        osc_expr_free(x->expr);
    }
    
#ifdef OMAX_PD_VERSION
    free(x->border_tag);
    opd_textbox_free(x->textbox);
#else
    jbox_free((t_jbox *)x);
#endif
    
    critical_free(x->lock);
}

//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::
//::::::::::::::::::::::: PD VERSION :::::::::::::::::::::::
//::::::::::::::::::::::::::::::::::::::::::::::::::::::::::

#ifdef OMAX_PD_VERSION
static void oexprcodebox_getrect(t_gobj *z, t_glist *glist,int *xp1, int *yp1, int *xp2, int *yp2)
{
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    int x1, y1, x2, y2;
    
    x1 = text_xpix(&x->ob, glist);
    y1 = text_ypix(&x->ob, glist);
    x2 = x1 + x->textbox->width;
    y2 = y1 + x->textbox->height;
    *xp1 = x1;
    *yp1 = y1;
    *xp2 = x2;
    *yp2 = y2;
    
    opd_textbox_motion(x->textbox);
    
   // post("%s %d %d %d %d", __func__, x1, y1, x2, y2);
    
}

void oexprcodebox_drawElements(t_object *ob, int firsttime)
{
    
    t_oexprcodebox *x = (t_oexprcodebox *)ob;
    t_opd_textbox *t = x->textbox;
    
    if(!opd_textbox_shouldDraw(t))
        return;
    
    oexprcodebox_gettext(x);
    
    int x1, y1, x2, y2;
    oexprcodebox_getrect((t_gobj *)x, t->glist, &x1, &y1, &x2, &y2);
    int rx1 = x1 + t->margin_l;
    int ry1 = y1 + t->margin_t;
    int rx2 = x2 - t->margin_r;
    int ry2 = y2 - t->margin_b;
    
    t_glist *glist = t->glist;
    t_canvas *canvas = glist_getcanvas(glist);
    
    //    post("%x %s %d %d\n", x, __func__, firsttime, t->firsttime);
    
    if (glist_isvisible(glist) && canvas->gl_editor)
    {
        if (firsttime)
        {
           // post("%x %s FIRST VIS height %d y1 %d y2 %d \n", x, __func__, t->height, y1, y2);
            
            //border
            sys_vgui(".x%lx.c create rectangle %d %d %d %d -outline \"#0066CC\" -fill \"#0066CC\" -tags %s \n", canvas, x1, y1, x2, y2, x->border_tag);
            
            sys_vgui(".x%lx.c create rectangle %d %d %d %d -outline \"\" -fill \"white\" -tags %sBorder -width 1 \n",canvas, rx1, ry1, rx2, ry2, x->border_tag);
            
        }
        else
        {
            //post("%x %s REDRAW height %d width %d \n", x, __func__, t->height, t->width );
            sys_vgui(".x%lx.c coords %s %d %d %d %d\n", canvas, x->border_tag, x1, y1, x2, y2);
            sys_vgui(".x%lx.c coords %sBorder %d %d %d %d \n",canvas, x->border_tag, rx1, ry1, rx2, ry2);
        }
        
        
        char *color = (x->textbox->selected? "#006699" : "#0066CC");
        sys_vgui(".x%lx.c itemconfigure %s -outline %s -fill %s \n", canvas, x->border_tag, color, color);
        sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, color);

        
        opd_textbox_drawElements(x->textbox, x1,  y1,  x2,  y2,  firsttime);
        
    //draw IO
     t_object *ob = pd_checkobject(&x->ob.te_pd);
        if (ob){
            glist_drawiofor(glist, ob, firsttime, t->iolets_tag, x1, y1, x2, y2);
            canvas_fixlinesfor(glist, ob);
        }
        
        if (firsttime) // raise cords over everything else
            sys_vgui(".x%lx.c raise cord\n", canvas);

    }
}


static void oexprcodebox_vis(t_gobj *z, t_glist *glist, int vis)
{
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    opd_textbox_vis(x->textbox, glist, vis);
}

static void oexprcodebox_displace(t_gobj *z, t_glist *glist,int dx, int dy)
{
    
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    
    if(!x->textbox->mouseDown)
    {
        x->ob.te_xpix += dx;
        x->ob.te_ypix += dy;
        
        t_canvas *canvas = glist_getcanvas(glist);
        
        sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->border_tag, dx, dy);
        sys_vgui(".x%lx.c move %sBorder %d %d\n", canvas, x->border_tag, dx, dy);
        
        opd_textbox_displace(x->textbox, glist, dx, dy);
    }

}

static void oexprcodebox_select(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    t_canvas *canvas = glist_getcanvas(glist);
    
    opd_textbox_select(x->textbox, glist, state);
    
    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist))
    {
        char *color = (state? "#006699" : "#0066CC");
        sys_vgui(".x%lx.c itemconfigure %s -outline %s -fill %s \n", canvas, x->border_tag, color, color);
        sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, color);
    }
}

static void oexprcodebox_activate(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    t_canvas *canvas = glist_getcanvas(glist);
    
    if(!state)
        oexprcodebox_gettext(x);
    
    opd_textbox_activate(x->textbox, glist, state);
    
    //    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill"));//was "$box_outline"
    char *color = (state? "#006699" : "#0066CC");
    sys_vgui(".x%lx.c itemconfigure %s -outline %s -fill %s \n", canvas, x->border_tag, color, color);
    sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, color);
    
}

static void oexprcodebox_delete(t_gobj *z, t_glist *glist)
{
    //post("%s", __func__);
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    t_opd_textbox *t = x->textbox;
    t_canvas *canvas = glist_getcanvas(glist);
    
    //post("%x %s %d", x, __func__, canvas->gl_editor);
    
    if(!t->firsttime && canvas->gl_editor)
    {
        //        opd_textbox_nofocus_callback(t);
        
        sys_vgui(".x%lx.c delete %s\n", canvas, x->border_tag);
        sys_vgui(".x%lx.c delete %sBorder\n", canvas, x->border_tag);
        
        opd_textbox_delete(t, glist);
        
        t_object *ob = pd_checkobject(&x->ob.te_pd);
        if(ob && !t->firsttime && glist_isvisible(glist))
        {
            glist_eraseiofor(glist, ob, t->iolets_tag);
            canvas_deletelinesfor(canvas, ob);
        }
    }
    
}


static int oexprcodebox_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit)
{
    /*t_oexprcodebox *x = (t_oexprcodebox *)z;
    {
        if(doit && x->textbox->resize_hit)
        {
            oexprcodebox_doClick(x, (t_floatarg)xpix, (t_floatarg)ypix, (t_floatarg)shift, (t_floatarg)0, (t_floatarg)alt);
        }
        return (1);
    }*/
    return 1;
}

static void oexprcodebox_save(t_gobj *z, t_binbuf *b)
{
    t_oexprcodebox *x = (t_oexprcodebox *)z;
    t_opd_textbox *t = x->textbox;
    //post("%x %s", x, __func__);
    
    opd_textbox_setHexFromText(t, t->text);
    
    binbuf_addv(b, "ssiisiis", gensym("#X"),gensym("obj"),(t_int)x->ob.te_xpix, (t_int)x->ob.te_ypix, gensym("o.expr.codebox"), t->width, t->height, gensym("binhex"));
    
    long chunksize = 32;
    char buf[chunksize+3];
    long len = strlen(t->hex);
    long chunks = len / chunksize;
    long chad = len % chunksize;
    long i,k;
    for (k = 0; k < chunks; k++) {
        memset(buf, '\0', chunksize+3 );
        buf[0] = 'b';
        buf[1] = '#';
        for (i = 0; i < chunksize; i++) {
            buf[i+2] = t->hex[i + (k*chunksize) ];
        }
        binbuf_addv(b, "s", gensym(buf));
    }
    memset(buf, '\0', chunksize+3 );
    buf[0] = 'b';
    buf[1] = '#';
    
    for (i = 0; i < chad; i++) {
        buf[i+2] = t->hex[i + (k*chunksize) ];
    }
    binbuf_addv(b, "s", gensym(buf));
    
    binbuf_addsemi(b);
    
}

void *oexprcodebox_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_oexprcodebox *x;
    if((x = (t_oexprcodebox *)object_alloc(oexprcodebox_class)))
    {        
        t_opd_textbox *t = opd_textbox_new(oexprcodebox_textbox_class);
        
        t->glist = (t_glist *)canvas_getcurrent();
        //post("%s %x: glist %x", __func__, x, t->glist);
        t->in_new_flag = 1;
        t->firsttime = 1;
        t->parent = (t_object *)x;
        
        t->draw_fn = (t_gotfn)oexprcodebox_drawElements;
        t->gettext_fn = (t_gotfn)oexprcodebox_gettext;
        t->click_fn = NULL;
        t->delete_fn = (t_gotfn)oexprcodebox_delete;
        
        t->mouseDown = 0;
        t->selected = 0;
        t->editmode = glist_getcanvas(t->glist)->gl_edit;
        t->textediting = 0;

        t->margin_t = 10;
        t->margin_l = 1;
        t->margin_b = 1;
        t->margin_r = 1;
        
        t->resizebox_x_offset = 7;
        t->resizebox_y_offset = 5;
        t->resizebox_height = 10;
        t->resizebox_width = 10;

        
        x->textbox = t;
    
		critical_new(&(x->lock));
		//t_osc_expr *f = NULL;
		x->outlets[0] = outlet_new(&x->ob, gensym("FullPacket"));
		x->outlets[1] = outlet_new(&x->ob, gensym("FullPacket"));
        
        x->border_tag = NULL;
    
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
        
        opd_textbox_processArgs(t, argc, argv);
        
        oexprcodebox_gettext(x);
        
        t->in_new_flag = 0;
        t->softlock = 0;
        
        t->height = 23;

 
    }
    return x;
}


int setup_o0x2eexpr0x2ecodebox(void)
{
    t_class *c = class_new(gensym("o.expr.codebox"), (t_newmethod)oexprcodebox_new, (t_method)oexprcodebox_free, sizeof(t_oexprcodebox), 0L, A_GIMME, 0);

    class_addmethod(c, (t_method)oexprcodebox_fullPacket, gensym("FullPacket"), A_GIMME, 0);
//  class_addmethod(c, (t_method)oexprcodebox_assist, gensym("assist"), A_CANT, 0);
    class_addmethod(c, (t_method)oexprcodebox_bang, gensym("bang"), 0);

    class_addmethod(c, (t_method)oexprcodebox_postExprAST, gensym("post-ast"), 0);

    class_addmethod(c, (t_method)oexprcodebox_doc, gensym("doc"), 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_func, gensym("doc-func"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_func, gensym("doc-function"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_cat, gensym("doc-cat"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_cat, gensym("doc-category"), A_GIMME, 0);

    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);

    oexprcodebox_class = c;

//  common_symbols_init();
//  osc_error_setHandler(omax_util_liboErrorHandler);

    oexprcodebox_widgetbehavior.w_getrectfn = oexprcodebox_getrect;
    oexprcodebox_widgetbehavior.w_displacefn = oexprcodebox_displace;
    oexprcodebox_widgetbehavior.w_selectfn = oexprcodebox_select;
    oexprcodebox_widgetbehavior.w_deletefn = oexprcodebox_delete;
    oexprcodebox_widgetbehavior.w_clickfn = NULL;
    oexprcodebox_widgetbehavior.w_activatefn = oexprcodebox_activate;
    oexprcodebox_widgetbehavior.w_visfn = oexprcodebox_vis;
    class_setsavefn(oexprcodebox_class, oexprcodebox_save);
    class_setwidget(oexprcodebox_class, &oexprcodebox_widgetbehavior);
    
    oexprcodebox_textbox_class = opd_textbox_classnew();

    
    ODOT_PRINT_VERSION;

    return 0;
}

#else
void *oexprcodebox_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oexprcodebox *x;
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
        | JBOX_GROWBOTH
        //| JBOX_HILITE
        //| JBOX_BACKGROUND
        //| JBOX_DRAWBACKGROUND
        //| JBOX_NOFLOATINSPECTOR
        //| JBOX_MOUSEDRAGDELTA
        | JBOX_TEXTFIELD
		;
	if((x = (t_oexprcodebox *)object_alloc(oexprcodebox_class))){
		jbox_new((t_jbox *)x, boxflags, argc, argv);
		x->ob.b_firstin = (void *)x;
        x->text = "\n";
		critical_new(&(x->lock));
		//t_osc_expr *f = NULL;
		x->outlets[1] = outlet_new((t_object *)x, "FullPacket");
		x->outlets[0] = outlet_new((t_object *)x, "FullPacket");
        x->frame_color.red = 0.216;
        x->frame_color.green = 0.435;
        x->frame_color.blue = 0.7137;
        x->frame_color.alpha = 1.0;
		attr_dictionary_process(x, d);
		t_object *textfield = jbox_get_textfield((t_object *)x);
		if(textfield){
			object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
			textfield_set_editonclick(textfield, 0);
			textfield_set_textmargins(textfield, 5, 13, 5, 5);
            x->text_color.red = 0.0;
            x->text_color.blue = 0.0;
            x->text_color.green = 0.0;
            x->text_color.alpha = 1.0;
			textfield_set_textcolor(textfield, &(x->text_color));
		}
		jbox_ready((t_jbox *)x);
		oexprcodebox_gettext(x);
	}
	return x;
}

#define CLASS_ATTR_CATEGORY_KLUDGE(c,attrname,flags,parsestr)		\
	CLASS_ATTR_ATTR_PARSE(c,attrname,"category",USESYM(symbol),flags,parsestr)
int main(void)
{
    common_symbols_init();
    t_class *c = class_new(NAME, (method)oexprcodebox_new, (method)oexprcodebox_free, sizeof(t_oexprcodebox), 0L, A_GIMME, 0);
    alias("o.codebox");
    
    c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
	//jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR);
	jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR);

    //class_addmethod(c, (method)oexprcodebox_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
    class_addmethod(c, (method)oexprcodebox_fullPacket, "FullPacket", A_GIMME, 0);
    class_addmethod(c, (method)oexprcodebox_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)oexprcodebox_bang, "bang", 0);

    class_addmethod(c, (method)oexprcodebox_postExprAST, "post-ast", 0);

    class_addmethod(c, (method)oexprcodebox_doc, "doc", 0);
    class_addmethod(c, (method)oexprcodebox_doc_func, "doc-func", A_GIMME, 0);
    class_addmethod(c, (method)oexprcodebox_doc_func, "doc-function", A_GIMME, 0);
    class_addmethod(c, (method)oexprcodebox_doc_cat, "doc-cat", A_GIMME, 0);
    class_addmethod(c, (method)oexprcodebox_doc_cat, "doc-category", A_GIMME, 0);

    // remove this if statement when we stop supporting Max 5
    if(omax_dict_resolveDictStubs()){
            class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
    }

    class_addmethod(c, (method)odot_version, "version", 0);

    // gui stuff
    class_addmethod(c, (method)oexprcodebox_paint, "paint", A_CANT, 0);

    class_addmethod(c, (method)oexprcodebox_key, "key", A_CANT, 0);
    class_addmethod(c, (method)oexprcodebox_keyfilter, "keyfilter", A_CANT, 0);
    class_addmethod(c, (method)oexprcodebox_enter, "enter", A_CANT, 0);
    class_addmethod(c, (method)oexprcodebox_select, "select", 0);

    class_addmethod(c, (method)oexprcodebox_mousedown, "mousedown", A_CANT, 0);
    class_addmethod(c, (method)oexprcodebox_mouseup, "mouseup", A_CANT, 0);

	CLASS_ATTR_RGBA(c, "background_color", 0, t_oexprcodebox, background_color);
	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "background_color", 0, "1. 1. 1. 1.");
	CLASS_ATTR_STYLE_LABEL(c, "background_color", 0, "rgba", "Background Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "background_color", 0, "Color");
    
    
	//CLASS_ATTR_RGBA(c, "frame_color", 0, t_oexprcodebox, frame_color);
	//CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, ".216 .435 .7137 1.");
	//CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color");
    //CLASS_ATTR_CATEGORY_KLUDGE(c, "frame_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "default_color", 0, t_oexprcodebox, default_color);
	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "default_color", 0, ".216 .435 .7137 1.");
	CLASS_ATTR_STYLE_LABEL(c, "default_color", 0, "rgba", "Default Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "default_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "error_color", 0, t_oexprcodebox, error_color);
	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "error_color", 0, ".7647 .23137 .2392 1.");
	CLASS_ATTR_STYLE_LABEL(c, "error_color", 0, "rgba", "Error Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "error_color", 0, "Color");
    
    CLASS_ATTR_DEFAULT(c, "fontname", 0, "\"Courier New\"");
    
	//CLASS_ATTR_RGBA(c, "textcolor", 0, t_oexprcodebox, text_color);
	//CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "textcolor", 0, "0. 0. 0. 1.");
	//CLASS_ATTR_STYLE_LABEL(c, "text_color", 0, "rgba", "Text Color");
    //CLASS_ATTR_CATEGORY_KLUDGE(c, "text_color", 0, "Color");

    CLASS_ATTR_DEFAULT(c, "rect", 0, "0. 0. 150. 30.");

    class_register(CLASS_BOX, c);
    oexprcodebox_class = c;

    osc_error_setHandler(omax_util_liboErrorHandler);

    ODOT_PRINT_VERSION;
    return 0;
}

#endif
