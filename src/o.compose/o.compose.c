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
  NAME: o.compose
  DESCRIPTION: Message box for OSC bundles
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2009-11
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  VERSION 1.0: using updated lib
  VERSION 1.0.1: newlines now delimit messages
  VERSION 2.0: uses newly refactored libo and has initial support for nested bundles
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

*/

#define OMAX_DOC_NAME "o.compose"
#define OMAX_DOC_SHORT_DESC "Create OSC bundles from text"
#define OMAX_DOC_LONG_DESC "o.compose converts its textual contents to OSC packets."
#define OMAX_DOC_INLETS_DESC (char *[]){"Bang sends the OSC FullPacket out", "Set the contents"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"message", "o.display"}


#include <string.h>
#include "odot_version.h"


#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "m_imp.h"
#include "g_canvas.h"
#include "g_all_guis.h"

#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_ocompose *)(x))->inlet)

#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "jpatcher_api.h"
//#include "jpatcher_syms.h"
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
//#include <mach/mach_time.h>

#include "o.h"

#ifdef OMAX_PD_VERSION
#define OMAX_PD_MAXSTRINGSIZE (1<<16)
#include "opd_textbox.h"
#endif

#define ocompose_MAX_NUM_MESSAGES 128
#define ocompose_MAX_MESSAGE_LENGTH 128
#define BUFLEN 128

enum {
    ocompose_U,
    ocompose_S,
};

#ifdef OMAX_PD_VERSION
typedef struct _ocompose {
    t_object ob;
    t_glist *glist; //the canvas heirarchy
    
    t_opd_textbox *textbox;
    
    long textlen;

    char *border_tag;
    char *corner_tag;
    
    t_clock *m_clock;
    
    void *outlet;
    void **proxy;
    long inlet;
    
    //new version
    int newbndl;
    t_osc_bndl_u *bndl_u;
    t_osc_bndl_s *bndl_s;
    int bndl_has_subs;
    int bndl_has_been_checked_for_subs;

    //t_jrgba frame_color, background_color, text_color;
    
    int have_new_data;
    int draw_new_data_indicator;
    t_clock *new_data_indicator_clock;
    
} t_ocompose;

t_omax_pd_proxy_class *ocompose_class;
t_omax_pd_proxy_class *ocompose_proxy_class;
t_widgetbehavior ocompose_widgetbehavior;

t_class *ocompose_textbox_class;

#else
typedef struct _ocompose{
    t_jbox ob;
    void *outlet;
    void *proxy;
    long inlet;
    t_critical lock;
    int newbndl;
    t_osc_bndl_u *bndl_u;
    t_osc_bndl_s *bndl_s;
    int bndl_has_subs;
    int bndl_has_been_checked_for_subs;
    long textlen;
    char *text;
    t_jrgba frame_color, background_color, text_color, flash_color;
    void *qelem;
    int mouse_down;
    int have_new_data;
    int draw_new_data_indicator;
    void *new_data_indicator_clock;
} t_ocompose;

static t_class *ocompose_class;

void ocompose_paint(t_ocompose *x, t_object *patcherview);
long ocompose_key(t_ocompose *x, t_object *patcherview, long keycode, long modifiers, long textcharacter);
long ocompose_keyfilter(t_ocompose *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter);
void ocompose_mousedown(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers);
void ocompose_mouseup(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers);
void ocompose_select(t_ocompose *x);

#endif

void ocompose_doFullPacket(t_ocompose *x, long len, char *ptr);
void ocompose_set(t_ocompose *x, t_symbol *s, long ac, t_atom *av);
void ocompose_doselect(t_ocompose *x);
void ocompose_enter(t_ocompose *x);
void ocompose_gettext(t_ocompose *x);
void ocompose_clear(t_ocompose *x);
void ocompose_clearBundles(t_ocompose *x);
void ocompose_newBundle(t_ocompose *x, t_osc_bndl_u *bu, t_osc_bndl_s *bs);
void ocompose_output_bundle(t_ocompose *x);
void ocompose_bang(t_ocompose *x);
void ocompose_int(t_ocompose *x, long n);
void ocompose_float(t_ocompose *x, double xx);
void ocompose_list(t_ocompose *x, t_symbol *msg, short argc, t_atom *argv);
void ocompose_anything(t_ocompose *x, t_symbol *msg, short argc, t_atom *argv);
void omax_util_outletOSC(void *outlet, long len, char *ptr);
void ocompose_free(t_ocompose *x);
void ocompose_inletinfo(t_ocompose *x, void *b, long index, char *t);
void *ocompose_new(t_symbol *msg, short argc, t_atom *argv);

#ifdef OMAX_PD_VERSION


/* maybe move this to o.h */
#define qelem_set(x)

static int ocompose_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit);

static void ocompose_displace(t_gobj *z, t_glist *glist,int dx, int dy);

void ocompose_drawElements(t_object *ob, int firsttime);


static void ocompose_save(t_gobj *z, t_binbuf *b);
static void ocompose_delete(t_gobj *z, t_glist *glist);


typedef t_ocompose t_jbox;
void jbox_redraw(t_jbox *x){ ocompose_drawElements((t_object *)x, 0);}

#endif

t_symbol *ps_newline, *ps_FullPacket;


//void ocompose_fullPacket(t_ocompose *x, long len, long ptr)
void ocompose_fullPacket(t_ocompose *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    if(proxy_getinlet((t_object *)x) == 0){
        return;
    }
    ocompose_doFullPacket(x, len, ptr);
}

void ocompose_doFullPacket(t_ocompose *x, long len, char *ptr)
{
    osc_bundle_s_wrap_naked_message(len, ptr);
    long copylen = len;
    char *copyptr = osc_mem_alloc(len);
    memcpy(copyptr, ptr, len);
    t_osc_bndl_s *b = osc_bundle_s_alloc(copylen, copyptr);
    ocompose_newBundle(x, NULL, b);
#ifdef OMAX_PD_VERSION
    jbox_redraw((t_jbox *)x);
#else
    qelem_set(x->qelem);
#endif
}

void ocompose_newBundle(t_ocompose *x, t_osc_bndl_u *bu, t_osc_bndl_s *bs)
{
    critical_enter(x->lock);
    ocompose_clearBundles(x);
    x->bndl_u = bu;
    x->bndl_s = bs;
    x->newbndl = 1;
    x->draw_new_data_indicator = 1;
    x->have_new_data = 1;
    x->bndl_has_been_checked_for_subs = 0;
    critical_exit(x->lock);
}

void ocompose_clearBundles(t_ocompose *x)
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

void ocompose_output_bundle(t_ocompose *x)
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
        return;
    }
    critical_exit(x->lock);

    char buf[OSC_HEADER_SIZE];
    memset(buf, '\0', OSC_HEADER_SIZE);
    osc_bundle_s_setBundleID(buf);
    omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, buf);
}

void ocompose_bundle2text(t_ocompose *x)
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
        opd_textbox_resetText(x->textbox, buf);

#endif
/*
        if(buf){
            osc_mem_free(buf);
        }
*/
        x->newbndl = 0;
    }
    critical_exit(x->lock);
}

#ifndef OMAX_PD_VERSION
void ocompose_paint(t_ocompose *x, t_object *patcherview)
{
    int have_new_data = 0;
    int draw_new_data_indicator = 0;
    critical_enter(x->lock);
    have_new_data = x->have_new_data;
    draw_new_data_indicator = x->draw_new_data_indicator;
    critical_exit(x->lock);
    if(have_new_data){  
        ocompose_bundle2text(x);
    }
    
    t_rect rect;
    t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
    jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
    
    // box
    jgraphics_set_source_jrgba(g, &(x->background_color));
    jgraphics_move_to(g, 0, 0);
    jgraphics_line_to(g, rect.width, 0);
    jgraphics_line_to(g, rect.width, rect.height - 10);
    jgraphics_line_to(g, rect.width - 10, rect.height);
    jgraphics_line_to(g, 0, rect.height);
    jgraphics_line_to(g, 0, 0);
    jgraphics_fill(g);
    
    if (x->draw_new_data_indicator) {
        jgraphics_set_source_jrgba(g, &(x->flash_color));
        jgraphics_move_to(g, rect.width, rect.height - 10);
        jgraphics_line_to(g, rect.width - 10, rect.height);
        jgraphics_line_to(g, rect.width - 10, rect.height - 10);
        jgraphics_line_to(g, rect.width, rect.height - 10);
        jgraphics_fill(g);
        
        if (x->mouse_down == 0) {
            critical_enter(x->lock);
            x->draw_new_data_indicator = 0;
            critical_exit(x->lock);
            clock_delay(x->new_data_indicator_clock, 100);
        }
    }
    
    // outline
    jgraphics_set_source_jrgba(g, &(x->frame_color));
    jgraphics_set_line_width(g, 2.);
    jgraphics_move_to(g, rect.width - 10, rect.height - 1);
    jgraphics_line_to(g, 1, rect.height - 1);
    jgraphics_line_to(g, 1, 1);
    jgraphics_line_to(g, rect.width - 1, 1);
    jgraphics_line_to(g, rect.width - 1, rect.height - 10);
    jgraphics_stroke(g);
    
    // thin diagonal
    jgraphics_set_line_width(g, 1.);
    jgraphics_move_to(g, rect.width, rect.height - 11);
    jgraphics_line_to(g, rect.width - 11, rect.height);
    jgraphics_stroke(g);
    
    // triangle
    jgraphics_set_line_width(g, 2.);
    jgraphics_move_to(g, rect.width - 1, rect.height - 11);
    jgraphics_line_to(g, rect.width - 11, rect.height - 11);
    jgraphics_line_to(g, rect.width - 11, rect.height - 1);
    jgraphics_stroke(g);
}

#endif

void ocompose_refresh(t_ocompose *x)
{
#ifdef OMAX_PD_VERSION
    x->draw_new_data_indicator = 0;
#endif
    jbox_redraw((t_jbox *)x);
}

#ifndef OMAX_PD_VERSION
void ocompose_select(t_ocompose *x){
    defer(x, (method)ocompose_doselect, 0, 0, 0);
}

void ocompose_doselect(t_ocompose *x){
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


long ocompose_key(t_ocompose *x, t_object *patcherview, long keycode, long modifiers, long textcharacter){
    char buff[256];
    buff[0] = textcharacter;  // we know this is just a simple char
    buff[1] = 0; 
    object_method(patcherview, gensym("insertboxtext"), x, buff);
    jbox_redraw((t_jbox *)x);

    return 1; 
}

long ocompose_keyfilter(t_ocompose *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter){
    t_atom arv;
    long rv = 1;
    long k = *keycode;
    
    if (k == JKEY_TAB || k == JKEY_ESC) {
        object_method_typed(patcherview, gensym("endeditbox"), 0, NULL, &arv); 
        rv = 0;     // don't pass those keys to ocompose
    }
    return rv;
}


void ocompose_mousedown(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 6, 14, 4);
    critical_enter(x->lock);
    x->draw_new_data_indicator = 1;
    x->mouse_down = 1;
    critical_exit(x->lock);
    jbox_redraw((t_jbox *)x);
}

void ocompose_mouseup(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 5, 15, 5);
    critical_enter(x->lock);
    x->mouse_down = 0;
    critical_exit(x->lock);
    jbox_redraw((t_jbox *)x);
    ocompose_output_bundle(x);
}
#endif

// enter is triggerd at "endeditbox time"
void ocompose_enter(t_ocompose *x)
{
    ocompose_gettext(x);
}

// we get the text, convert it to an OSC bundle, and then call the paint
// function via qelem_set which converts the OSC bundle back to text.
// We do this so that it's formatted nicely with no unnecessary whitespace
// and tabbed subbundles, etc.
void ocompose_gettext(t_ocompose *x)
{
    long size   = 0;
    char *text  = NULL;
#ifdef OMAX_PD_VERSION
    text = x->textbox->text;
#else
    t_object *textfield = jbox_get_textfield((t_object *)x);
    object_method(textfield, gensym("gettextptr"), &text, &size);
#endif
    
    ocompose_clearBundles(x);
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
        object_error((t_object *)x, "error parsing bundle\n");
        return;
    }
    long bndl_s_len = 0;
    char *bndl_s_ptr = NULL;
    osc_bundle_u_serialize(bndl_u, &bndl_s_len, &bndl_s_ptr);
    t_osc_bndl_s *bndl_s = osc_bundle_s_alloc(bndl_s_len, bndl_s_ptr);
    ocompose_newBundle(x, bndl_u, bndl_s);
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

void ocompose_bang(t_ocompose *x) {
    if(proxy_getinlet((t_object *)x) == 1) {
        return;
    }
    ocompose_output_bundle(x);
}

void ocompose_int(t_ocompose *x, long n) {
    if(proxy_getinlet((t_object *)x) == 1) {
        return;
    }
    object_error((t_object *)x, "o.compose doesn't accept Max atoms");
}

void ocompose_float(t_ocompose *x, double f) {
    if(proxy_getinlet((t_object *)x) == 1) {
        return;
    }
    object_error((t_object *)x, "o.compose doesn't accept Max atoms");
}

void ocompose_list(t_ocompose *x, t_symbol *list_sym, short argc, t_atom *argv)
{
    object_error((t_object *)x, "o.compose doesn't accept Max lists");
    /*
    if(proxy_getinlet((t_object *)x) == 1){
        object_error((t_object *)x, "o.compose doesn't accept non-OSC lists in its right inlet");
        return;
    }
    if(x->bndl_has_been_checked_for_subs && !x->bndl_has_subs){
        if(!x->bndl_s){
            if(x->bndl_u){
                long len = 0;
                char *ptr = NULL;
                critical_enter(x->lock);
                osc_bundle_u_serialize(x->bndl_u, &len, &ptr);
                critical_exit(x->lock);
                x->bndl_s = osc_bundle_s_alloc(len, ptr);
            }else if(x->text){
                // pretty sure this can't happen...
                post("%d\n", __LINE__);
            }else{
                return;
            }
        }
        critical_enter(x->lock);
        long len = osc_bundle_s_getLen(x->bndl_s);
        char *ptr = osc_bundle_s_getPtr(x->bndl_s);
        char copy[len];
        memcpy(copy, ptr, len);
        critical_exit(x->lock);
        omax_util_outletOSC(x->outlet, len, copy);
    } else {
        if(!x->bndl_u){
            if(x->bndl_s){
                critical_enter(x->lock);
                osc_bundle_s_deserialize(osc_bundle_s_getLen(x->bndl_s), osc_bundle_s_getPtr(x->bndl_s), &(x->bndl_u));
                critical_exit(x->lock);
            }else if(x->text){
                // pretty sure this can't happen...
                post("%d\n", __LINE__);
            } else {
                char buf[OSC_HEADER_SIZE];
                memset(buf, '\0', OSC_HEADER_SIZE);
                osc_bundle_s_setBundleID(buf);
                omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, buf);
                jbox_redraw((t_jbox *)x);
                return;
            }
        }
        critical_enter(x->lock);
        t_osc_bndl_u *copy = NULL;
        t_osc_err e = omax_util_copyBundleWithSubs_u(&copy, x->bndl_u, argc, argv, &(x->bndl_has_subs));
        if(e){
            return;
        }
        if(!copy){
            return;
        }
        x->bndl_has_been_checked_for_subs = 1;
        critical_exit(x->lock);
        long len = 0;
        char *copy_s = NULL;
        e = osc_bundle_u_serialize(copy, &len, &copy_s);
        if(e){
            object_error((t_object *)x, "%s\n", osc_error_string(e));
            osc_bundle_u_free(copy);
            return;
        }
        if(copy_s){
            omax_util_outletOSC(x->outlet, len, copy_s);
            osc_mem_free(copy_s);
        }
        osc_bundle_u_free(copy);
    }
    */
}

void ocompose_anything(t_ocompose *x, t_symbol *msg, short argc, t_atom *argv)
{
    t_atom av[argc + 1];
    int ac = argc;

    if(msg){
        ac = argc + 1;
        atom_setsym(av, msg);
        if(argc > 0){
            memcpy(av + 1, argv, argc * sizeof(t_atom));
        }
    }else{
        memcpy(av, argv, argc * sizeof(t_atom));
    }
    switch(proxy_getinlet((t_object *)x)){
    case 0:
        ocompose_list(x, NULL, ac, av);
        break;
    case 1:
        {
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
            ocompose_newBundle(x, b, bs);
        }
        //ocompose_processAtoms(x, ac, av);
        break;
    }
    critical_enter(x->lock);
    x->draw_new_data_indicator = 1;
    x->have_new_data = 1;
    critical_exit(x->lock);
#ifdef OMAX_PD_VERSION
    jbox_redraw((t_jbox *)x);
#else
    qelem_set(x->qelem);
#endif
}

void ocompose_set(t_ocompose *x, t_symbol *s, long ac, t_atom *av)
{
    if(proxy_getinlet((t_object *)x)){
        return;
    }
    if(ac){
        if(atom_gettype(av) == A_SYM){
            t_symbol *sym = atom_getsym(av);
            if(sym == ps_FullPacket && ac == 3){
                ocompose_doFullPacket(x, atom_getlong(av + 1), (char *)atom_getlong(av + 2));
                return;
            }
            //ocompose_processAtoms(x, ac, av);
        }
    }else{
        ocompose_clear(x);
    }
    jbox_redraw((t_jbox *)x);
}

void ocompose_clear(t_ocompose *x)
{
    char buf[OSC_HEADER_SIZE];
    memset(buf, '\0', OSC_HEADER_SIZE);
    osc_bundle_s_setBundleID(buf);
    ocompose_doFullPacket(x, OSC_HEADER_SIZE, buf);
}

void ocompose_doc(t_ocompose *x)
{
    omax_doc_outletDoc(x->outlet);
}

/*
    ...........................................................................................
    ................................  PD VERSION  .............................................
    ...........................................................................................

 */
#ifdef OMAX_PD_VERSION


static void ocompose_getrect(t_gobj *z, t_glist *glist,int *xp1, int *yp1, int *xp2, int *yp2)
{
    t_ocompose *x = (t_ocompose *)z;
    int x1, y1, x2, y2;
    
    x1 = text_xpix(&x->ob, glist);
    y1 = text_ypix(&x->ob, glist);
    x2 = x1 + x->textbox->width;
    y2 = y1 + x->textbox->height;
    *xp1 = x1;
    *yp1 = y1;
    *xp2 = x2;
    *yp2 = y2;
    //post("%s %d %d %d %d", __func__, x1, y1, x2, y2);

}

void ocompose_drawElements(t_object *ob, int firsttime)
{

    t_ocompose *x = (t_ocompose *)ob;
    t_opd_textbox *t = x->textbox;

    int have_new_data = 0;
    int draw_new_data_indicator = 0;
    critical_enter(x->lock);
    have_new_data = x->have_new_data;
    draw_new_data_indicator = x->draw_new_data_indicator;
    critical_exit(x->lock);
    if(have_new_data){
        ocompose_bundle2text(x);
    }
    
   // ocompose_bundle2text(x);
    
    int x1, y1, x2, y2;
    ocompose_getrect((t_gobj *)x, t->glist, &x1, &y1, &x2, &y2);
    int cx1 = x1;// - 2;
    int cy1 = y1;// - 2;
    int cx2 = x2;// + 2;
    int cy2 = y2;// + 2;

    t_glist *glist = t->glist;
    t_canvas *canvas = glist_getcanvas(glist);
    
    
//    post("%x %s %d %d\n", x, __func__, firsttime, t->firsttime);

    if (glist_isvisible(glist) && canvas->gl_editor)
    {
        if(!opd_textbox_drawElements(x->textbox, x1,  y1,  x2,  y2,  firsttime))
           return;

        if (firsttime)
        {
            //post("%x %s FIRST VIS height %d y1 %d y2 %d \n", x, __func__, t->height, y1, y2);
            
            //border
            sys_vgui(".x%lx.c create rectangle %d %d %d %d -outline \"\" -fill \"\" -tags [list %s msg]\n",canvas, x1, y1, x2, y2, x->border_tag);
            
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d %d %d %d %d %d %d  -outline #0066CC -fill \"\" -tags %sBorder -width 2 \n",canvas, cx1, cy1, cx2, cy1, cx2, cy2-10, cx2-10, cy2-10, cx2-10, cy2, cx1, cy2, x->border_tag);
            
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d -outline #0066CC -fill \"white\" -tags %s \n",canvas, cx2-10, cy2-10, cx2-10, cy2, cx2, cy2-10, x->corner_tag);
            
        }
        else
        {
            //post("%x %s REDRAW height %d y1 %d y2 %d \n", x, __func__, t->height, y1, y2);

            sys_vgui(".x%lx.c coords %s %d %d %d %d\n", canvas, x->border_tag, x1, y1, x2, y2);
            sys_vgui(".x%lx.c coords %sBorder %d %d %d %d %d %d %d %d %d %d %d %d \n",canvas, x->border_tag, cx1, cy1, cx2, cy1, cx2, cy2-10, cx2-10, cy2-10, cx2-10, cy2, cx1, cy2);
            sys_vgui(".x%lx.c coords %s %d %d %d %d %d %d \n",canvas, x->corner_tag, cx2-10, cy2-10, cx2-10, cy2, cx2, cy2-10);
            
            
        }

        
        //sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, (x->parse_error?  "red" : "#0066CC" ));
        //sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (x->parse_error? "red" : "blue" ));
        
        sys_vgui(".x%lx.c itemconfigure %s -fill %s \n", canvas, x->corner_tag, (x->draw_new_data_indicator? "#0066CC" : "white"));


        if(draw_new_data_indicator)
            clock_delay(x->new_data_indicator_clock, 100);
        
        /* draw inlets/outlets */
        t_object *ob = pd_checkobject(&x->ob.te_pd);
        if (ob){
            glist_drawiofor(glist, ob, firsttime, t->iolets_tag, x1, y1, x2, y2);
            canvas_fixlinesfor(glist, ob);
        }
        
        if (firsttime) /* raise cords over everything else */
            sys_vgui(".x%lx.c raise cord\n", glist_getcanvas(glist));
        
    }
}


static void ocompose_vis(t_gobj *z, t_glist *glist, int vis)
{
    t_ocompose *x = (t_ocompose *)z;
    opd_textbox_vis(x->textbox, glist, vis);
}

static void ocompose_displace(t_gobj *z, t_glist *glist,int dx, int dy)
{
    
    t_ocompose *x = (t_ocompose *)z;
    x->ob.te_xpix += dx;
    x->ob.te_ypix += dy;
    
    t_canvas *canvas = glist_getcanvas(glist);
    
    sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->border_tag, dx, dy);
    sys_vgui(".x%lx.c move %sBorder %d %d\n", canvas, x->border_tag, dx, dy);
    sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->corner_tag, dx, dy);
    sys_vgui(".x%lx.c move text%lx %d %d\n", canvas, (long)x, dx, dy);

    opd_textbox_displace(x->textbox, glist, dx, dy);

}

static void ocompose_select(t_gobj *z, t_glist *glist, int state)
{
    t_ocompose *x = (t_ocompose *)z;
    t_canvas *canvas = glist_getcanvas(glist);

    opd_textbox_select(x->textbox, glist, state);

    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist)){

         sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, (state? "#006699" : "#0066CC"));
         sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "#006699" : "#0066CC"));
         
         sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->corner_tag, (x->draw_new_data_indicator? (state? "#006699" : "#0066CC") : "white"));
    }
}

static void ocompose_activate(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    
    t_ocompose *x = (t_ocompose *)z;
    t_canvas *canvas = glist_getcanvas(glist);
    
    if(!state)
        ocompose_gettext(x);
    
    opd_textbox_activate(x->textbox, glist, state);
    
    //    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill"));//was "$box_outline"
    sys_vgui(".x%lx.c itemconfigure %sBorder -outline %s\n", canvas, x->border_tag, (state? "#006699" : "#0066CC"));
    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "#006699" : "#0066CC"));
    
    sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->corner_tag, (x->draw_new_data_indicator? (state? "#006699" : "#0066CC") : "white"));

}

static void ocompose_delete(t_gobj *z, t_glist *glist)
{
    
    t_ocompose *x = (t_ocompose *)z;
    t_opd_textbox *t = x->textbox;
    t_canvas *canvas = glist_getcanvas(glist);
    
    //post("%x %s %d", x, __func__, canvas->gl_editor);
    
    if(!t->firsttime && canvas->gl_editor)
    {    
        sys_vgui(".x%lx.c delete %s\n", canvas, x->border_tag);
        sys_vgui(".x%lx.c delete %sBorder\n", canvas, x->border_tag);
        sys_vgui(".x%lx.c delete %s\n", canvas, x->corner_tag);

        opd_textbox_delete(t, glist);
        
        t_object *ob = pd_checkobject(&x->ob.te_pd);
        if(ob && !t->firsttime)
        {
            glist_eraseiofor(glist, ob, t->iolets_tag);
            canvas_deletelinesfor(canvas, ob);
        }
    }
    
}

static void ocompose_doClick(t_ocompose *x,
                             t_floatarg xpos, t_floatarg ypos, t_floatarg shift,
                             t_floatarg ctrl, t_floatarg alt)
{
    if (glist_isvisible(x->textbox->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -fill %s \n", glist_getcanvas(x->textbox->glist), x->corner_tag, "#0066CC");
        
        ocompose_bang(x);
        clock_delay(x->m_clock, 120);
    }
}


static int ocompose_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit)
{
    t_ocompose *x = (t_ocompose *)z;
    {
        if(doit)
        {
            ocompose_doClick(x, (t_floatarg)xpix, (t_floatarg)ypix, (t_floatarg)shift, (t_floatarg)0, (t_floatarg)alt);
        }
        return (1);
    }
}


static void ocompose_tick(t_ocompose *x)
{
    if (glist_isvisible(x->textbox->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -fill \"white\" \n", glist_getcanvas(x->textbox->glist), x->corner_tag);
    }
}


static void ocompose_save(t_gobj *z, t_binbuf *b)
{
 
    t_ocompose *x = (t_ocompose *)z;
    t_opd_textbox *t = x->textbox;
    
    opd_textbox_setHexFromText(t, t->text);
    
    if(!t->firsttime && glist_getcanvas(t->glist)->gl_editor)
        opd_textbox_nofocus_callback(t);
    
    binbuf_addv(b, "ssiisiis", gensym("#X"),gensym("obj"),(t_int)x->ob.te_xpix, (t_int)x->ob.te_ypix, gensym("o.compose"), t->width, t->height, gensym("binhex"));
    
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


void ocompose_free(t_ocompose *x)
{
    free(x->border_tag);
    free(x->corner_tag);
    
    clock_free(x->m_clock);
    clock_free(x->new_data_indicator_clock);
    
    critical_free(x->lock);
    if(x->proxy){
        pd_free(x->proxy[0]);
        pd_free(x->proxy[1]);
        free(x->proxy);
    }
    
    ocompose_clearBundles(x);
    
    opd_textbox_free(x->textbox);
}


void *ocompose_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_ocompose *x = (t_ocompose *)pd_new(ocompose_class->class);
    if(x)
    {
        
        t_opd_textbox *t = opd_textbox_new(ocompose_textbox_class);
        
        t->glist = (t_glist *)canvas_getcurrent();;
        t->in_new_flag = 1;
        t->firsttime = 1;
        t->parent = (t_object *)x;

        t->draw_fn = (t_gotfn)ocompose_drawElements;
        t->gettext_fn = (t_gotfn)ocompose_gettext;
        t->click_fn = (t_gotfn)ocompose_click;
        t->delete_fn = (t_gotfn)ocompose_delete;

        t->mouseDown = 0;
        t->selected = 0;
        t->editmode = glist_getcanvas(t->glist)->gl_edit;
        t->textediting = 0;
        
        x->textbox = t;
        
       // post("%s %p glist %x canvas %x\n", __func__, x, t->glist, glist_getcanvas(t->glist));
        
        x->outlet = outlet_new(&x->ob, NULL);
        
        x->proxy = (void **)malloc(argc * sizeof(t_omax_pd_proxy *));
        x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), ocompose_proxy_class);
        x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), ocompose_proxy_class);
        
        x->bndl_u = NULL;
        x->bndl_s = NULL;
        x->newbndl = 0;
        x->textlen = 0;
        
        critical_new(&(x->lock));
        
        x->m_clock = clock_new(x, (t_method)ocompose_tick);
        
        x->new_data_indicator_clock = clock_new(x, (t_method)ocompose_refresh);
        x->have_new_data = 1;
        x->draw_new_data_indicator = 0;
        
        
        x->border_tag = NULL;
        x->corner_tag = NULL;

        
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
        
        sprintf(buf, "%lxCORNER", (long unsigned int)x);
        x->corner_tag = (char *)malloc(sizeof(char) * (strlen(buf)+1));
        if(!x->corner_tag)
        {
            printf("out of memory %d\n", __LINE__);
            return NULL;
        }
        strcpy(x->corner_tag, buf);
        

        if(argc > 3)
        {
            t->width = atom_getfloat(argv);
            t->height = atom_getfloat(argv+1);
            if(((argv+2)->a_type == A_SYMBOL ) && (atom_getsymbol(argv+2) == gensym("binhex")))
            {
              
                opd_textbox_textbuf(t, NULL, argc-2, (argv+2));
                t_atom done[2];
                atom_setsym(done, gensym("binhex"));
                atom_setsym(done+1, gensym(t->receive_name));
                opd_textbox_textbuf(t, NULL, 2, done);
              
            }
        }
        
//        post("%x %s height %d", x, __func__, x->height);
        t->in_new_flag = 0;
        t->softlock = 0;

    }
    return (void *)x;
}

void setup_o0x2ecompose(void) {
    
    omax_pd_class_new(ocompose_class, gensym("o.compose"), (t_newmethod)ocompose_new, (t_method)ocompose_free, sizeof(t_ocompose),  CLASS_NOINLET, A_GIMME, 0);

    t_omax_pd_proxy_class *c = NULL;
    omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
    omax_pd_class_addbang(c, (t_method)ocompose_bang);
    omax_pd_class_addmethod(c, (t_method)ocompose_set, gensym("set"));
    omax_pd_class_addmethod(c, (t_method)ocompose_doc, gensym("doc"));
    omax_pd_class_addmethod(c, (t_method)ocompose_fullPacket, gensym("FullPacket"));
    
// now that we're not supporting $ substitution I think we can take these out:
//    omax_pd_class_addfloat(c, (t_method)ocompose_float);
//    omax_pd_class_addmethod(c, (t_method)ocompose_list, gensym("list"));
//    omax_pd_class_addanything(c, (t_method)ocompose_anything);
    
    ps_newline = gensym("\n");
    ps_FullPacket = gensym("FullPacket");
    
    ocompose_proxy_class = c;
    
    ODOT_PRINT_VERSION;

    ocompose_widgetbehavior.w_getrectfn = ocompose_getrect;
    ocompose_widgetbehavior.w_displacefn = ocompose_displace;
    ocompose_widgetbehavior.w_selectfn = ocompose_select;
    ocompose_widgetbehavior.w_deletefn = ocompose_delete;
    ocompose_widgetbehavior.w_clickfn = ocompose_click;
    ocompose_widgetbehavior.w_activatefn = ocompose_activate;
    ocompose_widgetbehavior.w_visfn = ocompose_vis;
    
    
    class_setsavefn(ocompose_class->class, ocompose_save);
    class_setwidget(ocompose_class->class, &ocompose_widgetbehavior);
    
    ocompose_textbox_class = opd_textbox_classnew();
    
    //return 0;
    
}

#else

void ocompose_free(t_ocompose *x)
{
    jbox_free((t_jbox *)x);
    if(x->proxy){
        object_free(x->proxy);
    }
    ocompose_clearBundles(x);   
    critical_free(x->lock);
}

OMAX_DICT_DICTIONARY(t_ocompose, x, ocompose_fullPacket);


void ocompose_assist(t_ocompose *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}


/**************************************************
 Object and instance creation functions.
 **************************************************/

void *ocompose_new(t_symbol *msg, short argc, t_atom *argv){
    t_ocompose *x;
    
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
    
    if((x = (t_ocompose *)object_alloc(ocompose_class))){
        jbox_new((t_jbox *)x, boxflags, argc, argv);
        x->ob.b_firstin = (void *)x;
        x->outlet = outlet_new(x, NULL);
        x->proxy = proxy_new(x, 1, &(x->inlet));
        x->bndl_u = NULL;
        x->bndl_s = NULL;
        x->newbndl = 0;
        x->textlen = 0;
        x->text = NULL;
        x->bndl_has_been_checked_for_subs = 0;
        x->bndl_has_subs = 0;
        critical_new(&(x->lock));
        x->qelem = qelem_new((t_object *)x, (method)ocompose_refresh);
        x->new_data_indicator_clock = clock_new((t_object *)x, (method)ocompose_refresh);
        x->mouse_down = 0;
        x->have_new_data = 1;
        x->draw_new_data_indicator = 0;
        attr_dictionary_process(x, d);
        
        t_object *textfield = jbox_get_textfield((t_object *)x);
        if(textfield){
            object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
            textfield_set_editonclick(textfield, 0);
            textfield_set_textmargins(textfield, 5, 5, 15, 5);
            textfield_set_textcolor(textfield, &(x->text_color));
        }
        
        jbox_ready((t_jbox *)x);
        
        ocompose_gettext(x);
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
    t_class *c = class_new("o.compose", (method)ocompose_new, (method)ocompose_free, sizeof(t_ocompose), 0L, A_GIMME, 0);
    alias("o.c");
    
    c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
    jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR);
    
    class_addmethod(c, (method)ocompose_paint, "paint", A_CANT, 0);
    
    class_addmethod(c, (method)ocompose_bang, "bang", 0);
    class_addmethod(c, (method)ocompose_int, "int", A_LONG, 0);
    class_addmethod(c, (method)ocompose_float, "float", A_FLOAT, 0);
    class_addmethod(c, (method)ocompose_list, "list", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_anything, "anything", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_set, "set", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)ocompose_doc, "doc", 0);
    class_addmethod(c, (method)stdinletinfo, "inletinfo", A_CANT, 0);
    class_addmethod(c, (method)ocompose_fullPacket, "FullPacket", A_GIMME, 0);

    // remove this if statement when we stop supporting Max 5
    if(omax_dict_resolveDictStubs()){
        class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
    }
    
    class_addmethod(c, (method)ocompose_clear, "clear", 0);
    
    class_addmethod(c, (method)ocompose_key, "key", A_CANT, 0);
    class_addmethod(c, (method)ocompose_keyfilter, "keyfilter", A_CANT, 0);
    class_addmethod(c, (method)ocompose_enter, "enter", A_CANT, 0);
    class_addmethod(c, (method)ocompose_select, "select", 0);
    
    class_addmethod(c, (method)ocompose_mousedown, "mousedown", A_CANT, 0);
    class_addmethod(c, (method)ocompose_mouseup, "mouseup", A_CANT, 0);
    
    class_addmethod(c, (method)odot_version, "version", 0);
    
    
    CLASS_ATTR_RGBA(c, "background_color", 0, t_ocompose, background_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "background_color", 0, "1. 1. 1. 1.");
    CLASS_ATTR_STYLE_LABEL(c, "background_color", 0, "rgba", "Background Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "background_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "frame_color", 0, t_ocompose, frame_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, ".216 .435 .7137 1.");
    CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "frame_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "flash_color", 0, t_ocompose, flash_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "flash_color", 0, ".216 .435 .7137 1."); // by default, it's the same as frame colour, but user-settable nonetheless
    CLASS_ATTR_STYLE_LABEL(c, "flash_color", 0, "rgba", "Flash Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "flash_color", 0, "Color");

    CLASS_ATTR_RGBA(c, "text_color", 0, t_ocompose, text_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "text_color", 0, "0. 0. 0. 1.");
    //CLASS_ATTR_STYLE_LABEL(c, "text_color", 0, "rgba", "Text Color");
    //CLASS_ATTR_CATEGORY_KLUDGE(c, "text_color", 0, "Color");
    
    CLASS_ATTR_DEFAULT(c, "rect", 0, "0. 0. 150. 20.");
    
    class_register(CLASS_BOX, c);
    ocompose_class = c;
    
    ps_newline = gensym("\n");
    ps_FullPacket = gensym("FullPacket");
    
    ODOT_PRINT_VERSION;
    
    return 0;
}

#endif


/*  PD NOTES

need to not do any binding if canvas is not visible (in subpatcher), it seems to be happening, and I'm not sure why
**update: check status on that
 
to do: add color picker stuff, and make Tcl/TK variable to store like miller does, e.g. :
     //    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill"));//was "$box_outline"
 
*/
