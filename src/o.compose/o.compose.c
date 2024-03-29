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
  COPYRIGHT_YEARS: 2009-ll
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

//#include "omax_pd_proxy.h"
//#define proxy_getinlet(x) (((t_ocompose *)(x))->inlet)

#define proxy_getinlet(x) 0

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
#include "opd_textbox.h"
#endif

#define ocompose_MAX_NUM_MESSAGES 128
#define ocompose_MAX_MESSAGE_LENGTH 128
#define BUFLEN 128

#define PD_BOX_COLOR "#17202A"
#define PD_BOX_COLOR_SELECTED "#0000FF"

enum {
    ocompose_U,
    ocompose_S,
};

#ifdef OMAX_PD_VERSION
typedef struct _ocompose {
    t_object ob;
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
    
    //char* stored_bundle_data;
    //long stored_bundle_length;
	int has_errors;
} t_ocompose;

//t_omax_pd_proxy_class *ocompose_class;
//t_omax_pd_proxy_class *ocompose_proxy_class;
t_widgetbehavior ocompose_widgetbehavior;

t_class *ocompose_class;
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
    t_jrgba frame_color, background_color, text_color, flash_color, error_color;
    void *qelem;
    int has_errors;
    int mouse_down;
    int have_new_data;
    int draw_new_data_indicator;
    void *new_data_indicator_clock;
    
	//char* stored_bundle_data;
	//char* stored_bundle_data;
    //long stored_bundle_length;
} t_ocompose;

static t_class *ocompose_class;

void ocompose_paint(t_ocompose *x, t_object *patcherview);
long ocompose_key(t_ocompose *x, t_object *patcherview, long keycode, long modifiers, long textcharacter);
long ocompose_keyfilter(t_ocompose *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter);
void ocompose_mousedown(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers);
void ocompose_mouseup(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers);
void ocompose_select(t_ocompose *x);
void ocompose_jsave(t_ocompose *x, t_dictionary *d);

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
//void omax_util_outletOSC(void *outlet, long len, char *ptr);
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

#ifdef OMAX_PD_VERSION
void ocompose_fullPacket2(t_ocompose *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    ocompose_doFullPacket(x, len, ptr);
}
#endif

void ocompose_doFullPacket(t_ocompose *x, long len, char *ptr)
{
    osc_bundle_s_wrap_naked_message(len, ptr);
    long copylen = len;
    char *copyptr = osc_mem_alloc(len);
    memcpy(copyptr, ptr, len);
    t_osc_bndl_s *b = osc_bundle_s_alloc(copylen, copyptr);
    ocompose_newBundle(x, NULL, b);
#ifdef OMAX_PD_VERSION
    ocompose_drawElements((t_object *)x, 0);
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
	x->has_errors = 0;
        /*
        if (!x->stored_bundle_data) {
            sysmem_freeptr( x->stored_bundle_data );
            x->stored_bundle_data = NULL;
            x->stored_bundle_length = 0;
        }
        t_osc_bndl_s *b = x->bndl_s;
        long len = osc_bundle_s_getLen(b);
        char *ptr = osc_bundle_s_getPtr(b);
        x->stored_bundle_data = sysmem_newptrclear( len );
        x->stored_bundle_length = len;
        printf("%s: copying %ld bytes from %p to %p\n", __func__, len, ptr, x->stored_bundle_data);
        memcpy(x->stored_bundle_data, ptr, len);
        */
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
        x->has_errors = 0;
    }
#endif
    critical_exit(x->lock);
}

void ocompose_output_bundle(t_ocompose *x)
{
    critical_enter(x->lock);                                /// lock
    if(x->bndl_s){
        t_osc_bndl_s *b = x->bndl_s;
        long len = osc_bundle_s_getLen(b);
        char *ptr = osc_bundle_s_getPtr(b);
        char buf[len];
        memcpy(buf, ptr, len);
        critical_exit(x->lock);                             /// unlock
        omax_util_outletOSC(x->outlet, len, buf);
        //OSC_MEM_INVALIDATE(buf);
        return;                                             /// ( return )
    }
    critical_exit(x->lock);                                 /// unlock ( if the above code block is skipped )

    char buf[OSC_HEADER_SIZE];
    memset(buf, '\0', OSC_HEADER_SIZE);
    osc_bundle_s_setBundleID(buf);
    omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, buf);
    //OSC_MEM_INVALIDATE(buf);
}

void ocompose_bundle2text(t_ocompose *x)
{
    if(x->newbndl && x->bndl_s){
        critical_enter(x->lock);                            /// 1st lock in the if block
        long len = osc_bundle_s_getLen(x->bndl_s);
        char ptr[len];
        memcpy(ptr, osc_bundle_s_getPtr(x->bndl_s), len);
        critical_exit(x->lock);                             /// unlock in the if block
        
        long bufpos = osc_bundle_s_nformat(NULL, 0, len, (char *)ptr, 0);
        char *buf = osc_mem_alloc(bufpos + 1);
        osc_bundle_s_nformat(buf, bufpos + 1, len, (char *)ptr, 0);
        if (bufpos == 0) {
            *buf = '\0';
        }
        
#ifndef OMAX_PD_VERSION
        critical_enter(x->lock);                            /// 2nd lock ( after unlock ) in the max version
        
        if(x->text){
            osc_mem_free(x->text);
        }
        
        x->textlen = bufpos;
        x->text = buf;
        critical_exit(x->lock);                             /// 2nd unlock in the max version
        object_method(jbox_get_textfield((t_object *)x), gensym("settext"), buf);
#else
        opd_textbox_resetText(x->textbox, buf);
#endif
        x->newbndl = 0;
    }else{
    }
}

#ifndef OMAX_PD_VERSION
void ocompose_paint(t_ocompose *x, t_object *patcherview)
{
    /* int have_new_data = 0; */
    int draw_new_data_indicator = 0;
    critical_enter(x->lock);
    /* have_new_data = x->have_new_data; */
    draw_new_data_indicator = x->draw_new_data_indicator;
    critical_exit(x->lock);
    /* if(have_new_data){   */
    /*     ocompose_bundle2text(x); */
    /* } */
    
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
    if (x->has_errors == 1) {
        jgraphics_set_source_jrgba(g, &(x->error_color));
    } else {
        jgraphics_set_source_jrgba(g, &(x->frame_color));
    }
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
    ocompose_drawElements((t_object *)x, 0);
#else
    critical_enter(x->lock);
    if(x->have_new_data){
        ocompose_bundle2text(x);
    }
    critical_exit(x->lock);
    jbox_redraw((t_jbox *)x);
#endif
}

#ifndef OMAX_PD_VERSION
void ocompose_clearNewDataIndicator(t_ocompose *x){
    qelem_set(x->qelem);
}

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
    if (x->has_errors != 0) return;
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 6, 14, 4);
    critical_enter(x->lock);
        x->draw_new_data_indicator = 1;
        x->mouse_down = 1;
    critical_exit(x->lock);
    jbox_redraw((t_jbox *)x);
}

void ocompose_mouseup(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers){
    if (x->has_errors != 0) return;
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 5, 15, 5);
    critical_enter(x->lock);
        x->mouse_down = 0;
    critical_exit(x->lock);
    jbox_redraw((t_jbox *)x);
    ocompose_output_bundle(x);
}

void ocompose_jsave(t_ocompose *x, t_dictionary *d)
{
    //post( "jsave ACTIVATE!!!" );
    t_osc_bundle_s* bundle = x->bndl_s;
    long len = osc_bundle_s_getLen(bundle);
    char *ptr = osc_bundle_s_getPtr(bundle);
    
    t_atom *av = (t_atom *)sysmem_newptr(len * sizeof( t_atom ) );
    dictionary_appendlong(d, gensym("saved_bundle_length"), len);
    for ( int i = 0; i < len; ++i ) {
        atom_setlong(av+i, ptr[i]);
    }
    dictionary_appendatoms(d, gensym("saved_bundle_data"), len, av);
    
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
#ifndef OMAX_PD_VERSION
        x->has_errors = 1;
//        x->frame_color.red = x->error_color.red;
//        x->frame_color.green = x->error_color.green;
//        x->frame_color.blue = x->error_color.blue;
//        x->frame_color.alpha = x->error_color.alpha;
#endif
        return;
    } else {
#ifndef OMAX_PD_VERSION
        x->has_errors = 0;
//        x->frame_color.red = x->default_color.red;
//        x->frame_color.green = x->default_color.green;
//        x->frame_color.blue = x->default_color.blue;
//        x->frame_color.alpha = x->default_color.alpha;
#endif
    }
    t_osc_bndl_s *bs = osc_bundle_u_serialize(bndl_u);
    //t_osc_bndl_s *bndl_s = NULL;
    //osc_bundle_s_deepCopy(&bndl_s, bs);
    ocompose_newBundle(x, bndl_u, bs);
#ifdef OMAX_PD_VERSION
    x->have_new_data = 1;
    ocompose_drawElements((t_object *)x, 0);
#else
    x->have_new_data = 1;
    qelem_set(x->qelem);
#endif
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
    object_error((t_object *)x, "o.compose doesn't accept integers");
}

void ocompose_float(t_ocompose *x, double f) {
    if(proxy_getinlet((t_object *)x) == 1) {
        return;
    }
    object_error((t_object *)x, "o.compose doesn't accept floats");
}

void ocompose_list(t_ocompose *x, t_symbol *list_sym, short argc, t_atom *argv)
{
    object_error((t_object *)x, "o.compose doesn't accept lists");
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
            t_osc_bndl_s *bs = osc_bundle_u_serialize(b);
            ocompose_newBundle(x, b, bs);
        }
        break;
    }
    critical_enter(x->lock);
    x->draw_new_data_indicator = 1;
    x->have_new_data = 1;
    critical_exit(x->lock);
#ifdef OMAX_PD_VERSION
    ocompose_drawElements((t_object *)x, 0);
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
		}
	}else{
		ocompose_clear(x);
	}
#ifdef OMAX_PD_VERSION
	ocompose_drawElements((t_object *)x, 0);
#else
	jbox_redraw((t_jbox *)x);
#endif
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
    opd_textbox_motion(x->textbox);

}

void ocompose_drawElements(t_object *ob, int firsttime)
{
    t_ocompose *x = (t_ocompose *)ob;
    t_opd_textbox *t = x->textbox;

    
    if(!opd_textbox_shouldDraw(t))
        return;
    
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
    int cx2 = x2 - t->margin_r;
    int cy2 = y2 - 10; //<< folds into right margin

    t_glist *glist = t->glist;
    t_canvas *canvas = glist_getcanvas(glist);
    
    
//    post("%x %s %d %d\n", x, __func__, firsttime, t->firsttime);

    if (glist_isvisible(glist) && canvas->gl_editor)
    {
        

        if (firsttime)
        {
          //  post("%x %s FIRST VIS height %d y1 %d y2 %d \n", x, __func__, t->height, y1, y2);
            
            //border
            
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d %d %d %d %d %d %d  -outline %s -fill \"white\" -tags %s -width 1 \n",canvas, x1, y1, x2, y1, x2, cy2, cx2, cy2, cx2, cy2, x1, cy2, PD_BOX_COLOR, x->border_tag);
            
            sys_vgui(".x%lx.c create polygon %d %d %d %d %d %d -outline %s -fill \"white\" -tags %s \n",canvas, cx2, cy2, cx2, y2, x2, cy2, PD_BOX_COLOR, x->corner_tag);
            
        }
        else
        {
          //  post("%x %s REDRAW height %d y1 %d y2 %d \n", x, __func__, t->height, y1, y2);

            sys_vgui(".x%lx.c coords %s %d %d %d %d %d %d %d %d %d %d %d %d \n",canvas, x->border_tag, x1, y1, x2, y1, x2, cy2, cx2, cy2, cx2, y2, x1, y2);
            sys_vgui(".x%lx.c coords %s %d %d %d %d %d %d \n",canvas, x->corner_tag, cx2, cy2, cx2, y2, x2, cy2);
            
            
        }
        
        opd_textbox_drawElements(x->textbox, x1,  y1,  x2,  y2,  firsttime);
        
        //sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->border_tag, (x->parse_error?  "red" : "#0066CC" ));
        //sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (x->parse_error? "red" : "blue" ));
        
        sys_vgui(".x%lx.c itemconfigure %s -fill %s \n", canvas, x->corner_tag, (x->draw_new_data_indicator? PD_BOX_COLOR : "white"));


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
    
    if(!x->textbox->mouseDown)
    {
        x->ob.te_xpix += dx;
        x->ob.te_ypix += dy;
        
        t_canvas *canvas = glist_getcanvas(glist);
        
        sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->border_tag, dx, dy);
        sys_vgui(".x%lx.c move %s %d %d\n", canvas, x->corner_tag, dx, dy);
        
        opd_textbox_displace(x->textbox, glist, dx, dy);
    }
}

static void ocompose_select(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    t_ocompose *x = (t_ocompose *)z;
    t_canvas *canvas = glist_getcanvas(glist);

    opd_textbox_select(x->textbox, glist, state);

    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist)){
        char * color = (state? PD_BOX_COLOR_SELECTED : PD_BOX_COLOR);
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->border_tag, color);
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, color);
        sys_vgui(".x%lx.c itemconfigure text%lx -fill %s\n", canvas, (long)x->textbox, color);

        sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->corner_tag, (x->draw_new_data_indicator? color : "white"));
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
    
    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->border_tag, (state? PD_BOX_COLOR_SELECTED : PD_BOX_COLOR));
    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? PD_BOX_COLOR_SELECTED : PD_BOX_COLOR));
    
    sys_vgui(".x%lx.c itemconfigure %s -fill %s\n", canvas, x->corner_tag, (x->draw_new_data_indicator? (state? PD_BOX_COLOR_SELECTED : PD_BOX_COLOR) : "white"));

}

static void ocompose_delete(t_gobj *z, t_glist *glist)
{
//    printf("%s glist %p\n", __func__, glist);
    t_ocompose *x = (t_ocompose *)z;
    t_opd_textbox *t = x->textbox;
    t_canvas *canvas = glist_getcanvas(glist);
    t_object *ob = pd_checkobject(&x->ob.te_pd);

    
    //post("%x %s %d", x, __func__, canvas->gl_editor);
    
    if(!t->firsttime && canvas->gl_editor)
    {
//        opd_textbox_nofocus_callback(t);
        
        sys_vgui(".x%lx.c delete %s\n", canvas, x->border_tag);
        sys_vgui(".x%lx.c delete %s\n", canvas, x->corner_tag);
        
        opd_textbox_delete(t, glist);
        
    }

    if(ob && !t->firsttime && glist_isvisible(glist))
    {
        glist_eraseiofor(glist, ob, t->iolets_tag);
    }
    
    canvas_deletelinesfor(glist, (t_text *)z);

}

static void ocompose_doClick(t_ocompose *x,
                             t_floatarg xpos, t_floatarg ypos, t_floatarg shift,
                             t_floatarg ctrl, t_floatarg alt)
{
    if (glist_isvisible(x->textbox->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -fill %s \n", glist_getcanvas(x->textbox->glist), x->corner_tag, PD_BOX_COLOR);
        
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
    //post("%x %s", x, __func__);
    
    opd_textbox_setHexFromText(t, t->text);
    
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
    /*
    if(x->proxy){
        pd_free(x->proxy[0]);
        pd_free(x->proxy[1]);
        free(x->proxy);
    }
    */
    ocompose_clearBundles(x);
    
    opd_textbox_free(x->textbox);

}


void *ocompose_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_ocompose *x = (t_ocompose *)pd_new(ocompose_class);
    if(x)
    {
        
        t_opd_textbox *t = opd_textbox_new(ocompose_textbox_class);
        
        t->glist = (t_glist *)canvas_getcurrent();;
        t->in_new_flag = 1;
        t->firsttime = 1;
        t->parent = (t_object *)x;

        /* t->draw_fn = (t_gotfn)ocompose_drawElements; */
        /* t->gettext_fn = (t_gotfn)ocompose_gettext; */
        /* t->click_fn = (t_gotfn)ocompose_click; */
        /* t->delete_fn = (t_gotfn)ocompose_delete; */
        t->draw_fn = (t_opd_draw_fn)ocompose_drawElements;
        t->gettext_fn = (t_opd_gettext_fn)ocompose_gettext;
        t->click_fn = (t_opd_click_fn)ocompose_click;
        t->delete_fn = (t_opd_delete_fn)ocompose_delete;

        t->mouseDown = 0;
        t->selected = 0;
        t->editmode = glist_getcanvas(t->glist)->gl_edit;
        t->textediting = 0;
        
        t->margin_t = 1;
        t->margin_l = 1;
        t->margin_b = 1;
        t->margin_r = 10;
        
        t->resizebox_x_offset = 2;
        t->resizebox_y_offset = 2;
        t->resizebox_height = 10;
        t->resizebox_width = 10;
        
        x->textbox = t;
        
       // post("%s %p glist %x canvas %x\n", __func__, x, t->glist, glist_getcanvas(t->glist));
        
        x->outlet = outlet_new(&x->ob, NULL);
     
        inlet_new(&x->ob, &x->ob.ob_pd, gensym("FullPacket"), gensym("f2"));
        
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
        
        opd_textbox_processArgs(t, argc, argv);

        t->in_new_flag = 0;
        t->softlock = 0;

    }
    return (void *)x;
}

void setup_o0x2ecompose(void) {
    
    t_class *c = class_new(gensym("o.compose"), (t_newmethod)ocompose_new, (t_method)ocompose_free, sizeof(t_ocompose),  0L, A_GIMME, 0);

    
    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    class_addbang(c, (t_method)ocompose_bang);
    class_addmethod(c, (t_method)ocompose_set, gensym("set"), A_GIMME, 0);
    class_addmethod(c, (t_method)ocompose_doc, gensym("doc"), 0);
    class_addmethod(c, (t_method)ocompose_fullPacket, gensym("FullPacket"), A_GIMME, 0);
    class_addmethod(c, (t_method)ocompose_fullPacket2, gensym("f2"), A_GIMME, 0);
    
    // error messages:
    class_addfloat(c, (t_method)ocompose_float);
    class_addlist(c, (t_method)ocompose_list);
    class_addanything(c, (t_method)ocompose_anything);
    
    ps_newline = gensym("\n");
    ps_FullPacket = gensym("FullPacket");
    
    ocompose_widgetbehavior.w_getrectfn = ocompose_getrect;
    ocompose_widgetbehavior.w_displacefn = ocompose_displace;
    ocompose_widgetbehavior.w_selectfn = ocompose_select;
    ocompose_widgetbehavior.w_deletefn = ocompose_delete;
    ocompose_widgetbehavior.w_clickfn = ocompose_click;
    ocompose_widgetbehavior.w_activatefn = ocompose_activate;
    ocompose_widgetbehavior.w_visfn = ocompose_vis;
    
    
    class_setsavefn(c, ocompose_save);
    class_setwidget(c, &ocompose_widgetbehavior);
    
    ocompose_class = c;
    ocompose_textbox_class = opd_textbox_classnew();
    
    ODOT_PRINT_VERSION;

    //return 0;
    
}

#else

void ocompose_free(t_ocompose *x)
{
    qelem_free(x->qelem);
    object_free(x->new_data_indicator_clock);
    
    if(x->proxy){
        object_free(x->proxy);
    }
    ocompose_clearBundles(x);   
    critical_free(x->lock);
    
    jbox_free((t_jbox *)x);
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
        x->has_errors = 0;
        critical_new(&(x->lock));
        x->qelem = qelem_new((t_object *)x, (method)ocompose_refresh);
        x->new_data_indicator_clock = clock_new((t_object *)x, (method)ocompose_clearNewDataIndicator);
        x->mouse_down = 0;
        x->have_new_data = 1;
        x->draw_new_data_indicator = 0;
        attr_dictionary_process(x, d);
//        x->frame_color.red = x->default_color.red;
//        x->frame_color.green = x->default_color.green;
//        x->frame_color.blue = x->default_color.blue;
//        x->frame_color.alpha = x->default_color.alpha;
                
        t_object *textfield = jbox_get_textfield((t_object *)x);
        if(textfield){
            object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
            textfield_set_editonclick(textfield, 0);
            textfield_set_textmargins(textfield, 5, 5, 15, 5);
            textfield_set_textcolor(textfield, &(x->text_color));
        }
        
        jbox_ready((t_jbox *)x);
        
        long ac = 0;
        t_atom *av = NULL;
        dictionary_getatoms( d, gensym( "saved_bundle_data" ), &ac, &av );
        if ( ac != 0 ) {
            char* saved_bundle = osc_mem_alloc( ac );
            for ( long i = 0; i < ac; ++i ) {
                saved_bundle[ i ] = (char *)atom_getlong( &av[ i ] );
            }
            //post( "bundle : %s", saved_bundle );
            /* x->bndl_s = osc_bundle_s_alloc( ac, saved_bundle ); */
	    ocompose_doFullPacket(x, ac, saved_bundle);
        } else {
            //post( "no dictionary data" );
            ocompose_gettext(x);
        }
        
        //ocompose_gettext(x);
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
	//printf("%s: %d\n", __func__, __LINE__);
    common_symbols_init();
    t_class *c = class_new("o.compose", (method)ocompose_new, (method)ocompose_free, sizeof(t_ocompose), 0L, A_GIMME, 0);
    alias("o.c");
    
    c->c_flags |= CLASS_FLAG_NEWDICTIONARY;
    jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR);
    
    class_addmethod(c, (method)ocompose_paint, "paint", A_CANT, 0);
    
    class_addmethod(c, (method)ocompose_bang, "bang", 0);
    //class_addmethod(c, (method)ocompose_int, "int", A_LONG, 0);
    //class_addmethod(c, (method)ocompose_float, "float", A_FLOAT, 0);
    //class_addmethod(c, (method)ocompose_list, "list", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_anything, "anything", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_set, "set", A_GIMME, 0);
    class_addmethod(c, (method)ocompose_assist, "assist", A_CANT, 0);
    class_addmethod(c, (method)ocompose_doc, "doc", 0);
    class_addmethod(c, (method)stdinletinfo, "inletinfo", A_CANT, 0);
    class_addmethod(c, (method)ocompose_fullPacket, "FullPacket", A_GIMME, 0);

    // remove this if statement when we stop supporting Max 5
    //if(omax_dict_resolveDictStubs()){
        class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
    //}
    
    class_addmethod(c, (method)ocompose_clear, "clear", 0);
    
    class_addmethod(c, (method)ocompose_key, "key", A_CANT, 0);
    class_addmethod(c, (method)ocompose_keyfilter, "keyfilter", A_CANT, 0);
    class_addmethod(c, (method)ocompose_enter, "enter", A_CANT, 0);
    class_addmethod(c, (method)ocompose_select, "select", 0);
    
    class_addmethod(c, (method)ocompose_mousedown, "mousedown", A_CANT, 0);
    class_addmethod(c, (method)ocompose_mouseup, "mouseup", A_CANT, 0);
    
    class_addmethod(c, (method)ocompose_jsave, "jsave", A_CANT, 0); // saving binary bundles within Max patchers
    
    class_addmethod(c, (method)odot_version, "version", 0);
    
    
    CLASS_ATTR_RGBA(c, "background_color", 0, t_ocompose, background_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "background_color", 0, "1. 1. 1. 1.");
    CLASS_ATTR_STYLE_LABEL(c, "background_color", 0, "rgba", "Background Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "background_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "flash_color", 0, t_ocompose, flash_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "flash_color", 0, ".29 .31 .302 1."); // by default, it's the same as frame colour, but user-settable nonetheless
    CLASS_ATTR_STYLE_LABEL(c, "flash_color", 0, "rgba", "Flash Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "flash_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "error_color", 0, t_ocompose, error_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "error_color", 0, ".7647 .23137 .2392 1.");
    CLASS_ATTR_STYLE_LABEL(c, "error_color", 0, "rgba", "Error Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "error_color", 0, "Color");
    
    CLASS_ATTR_RGBA(c, "frame_color", 0, t_ocompose, frame_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, ".29 .31 .302 1.");
    CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "frame_color", 0, "Color");

#ifdef WIN_VERSION
    CLASS_ATTR_DEFAULT(c, "fontname", 0, "\"Consolas\"");
#else
    CLASS_ATTR_DEFAULT(c, "fontname", 0, "\"Menlo\"");
#endif
CLASS_ATTR_DEFAULT(c, "fontsize", 0, "11");
    
    
    //CLASS_ATTR_CHAR_VARSIZE( c, "data", ATTR_SET_OPAQUE_USER | ATTR_GET_OPAQUE_USER, t_ocompose, stored_bundle_data, stored_bundle_length, 1024 );
    //CLASS_ATTR_SAVE(c, "data", 0 );

    CLASS_ATTR_RGBA(c, "textcolor", 0, t_ocompose, text_color);
    CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "textcolor", 0, "0.188 0.188 0.188 1.");
    CLASS_ATTR_STYLE_LABEL(c, "textcolor", 0, "rgba", "Text Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "textcolor", 0, "Color");
    
    
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
