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
  AUTHORS: Ilya Rostovtsev, John MacCallum
  COPYRIGHT_YEARS: 2009-11
  VERSION 0.0: Inherited from v2.0 of o.message
  VERSION 0.D: Dev copy with multiple visual looks
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

*/

#define OMAX_DOC_NAME "o.compose"
#define OMAX_DOC_SHORT_DESC "Produce OSC bundles from text"
#define OMAX_DOC_LONG_DESC "o.compose allows you to edit and store  OSC packets in text form."
#define OMAX_DOC_INLETS_DESC (char *[]){"Bang sends out an OSC  packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"o.display", "o.message"}


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

//#define ocompose_MAX_NUM_MESSAGES 128
//#define ocompose_MAX_MESSAGE_LENGTH 128
// #define BUFLEN 128

/*
#ifdef WIN_VERSION
// currently we have to compile windows versions with gcc 3 on cygwin and i'm getting undefined
// refs to strsep, so here it is.
char * strsep(stringp, delim)
     register char **stringp;
     register const char *delim;
{
	register char *s;
	register const char *spanp;
	register int c, sc;
	char *tok;

	if ((s = *stringp) == NULL)
		return (NULL);
	for (tok = s;;) {
		c = *s++;
		spanp = delim;
		do {
			if ((sc = *spanp++) == c) {
				if (c == 0) {
					s = NULL;
				} else {
					s[-1] = 0;
                }
				*stringp = s;
				return (tok);
			}
		} while (sc != 0);
	}
	// NOTREACHED
}
#endif
*/

enum {
	ocompose_U,
	ocompose_S,
};

#ifdef OMAX_PD_VERSION
typedef struct _ocompose {
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
	t_clock *new_data_indicator_clock;
    
    int     softlock;
    
} t_ocompose;

t_omax_pd_proxy_class *ocompose_class;
t_omax_pd_proxy_class *ocompose_proxy_class;
t_widgetbehavior ocompose_widgetbehavior;

#else // MAX:
typedef struct _ocompose{
	t_jbox ob;
	void *outlet;
	t_critical lock;
	int newbndl;
	t_osc_bndl_u *bndl_u;
	t_osc_bndl_s *bndl_s;
	int bndl_has_subs;
	int bndl_has_been_checked_for_subs;
	long textlen;
	char *text;
	t_jrgba frame_color, background_color, text_color;
	void *qelem;
	int have_new_data;
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
void *ocompose_new(t_symbol *msg, short argc, t_atom *argv);

#ifdef OMAX_PD_VERSION


/* maybe move this to o.h */
#define qelem_set(x)

static int ocompose_click(t_gobj *z, struct _glist *glist,
                          int xpix, int ypix, int shift, int alt, int dbl, int doit);
void ocompose_insideclick_callback(t_ocompose *x);
void ocompose_outsideclick_callback(t_ocompose *x);
static void ocompose_displace(t_gobj *z, t_glist *glist,int dx, int dy);
void ocompose_drawElements(t_ocompose *x, t_glist *glist, int width2, int height2, int firsttime);
void ocompose_storeTextAndExitEditor(t_ocompose *x);
void ocompose_resetText(t_ocompose *x, char *s);
void ocompose_setTextFromString(t_ocompose *x, char *str);
void ocompose_storeTextAndExitEditorTick(t_ocompose *x);
void ocompose_getRectAndDraw(t_ocompose *x, int forceredraw);
static void ocompose_save(t_gobj *z, t_binbuf *b);
static void ocompose_delete(t_gobj *z, t_glist *glist);


typedef t_ocompose t_jbox;
void jbox_redraw(t_jbox *x){ ocompose_drawElements((t_ocompose *)x, x->glist, x->width, x->height, 0);}

#endif

t_symbol *ps_newline, *ps_FullPacket;


void ocompose_fullPacket(t_ocompose *x, t_symbol *msg, int argc, t_atom *argv)
{
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
	x->have_new_data = 1;
    jbox_redraw((t_jbox *)x);
#else
	x->have_new_data = 1;
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
		long bufpos = 0;
		char *buf = NULL;
		t_osc_err e = osc_bundle_s_format(len, (char *)ptr, &bufpos, &buf);
		if(e){
			object_error((t_object *)x, "%s", osc_error_string(e));
			if(buf){
				osc_mem_free(buf);
			}
			return;
		}
		if(buf[bufpos - 2] == '\n'){
			buf[bufpos - 2] = '\0';
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
        ocompose_resetText(x, buf);

#endif
		if(buf){
			//osc_mem_free(buf);
		}
		x->newbndl = 0;
	}
	critical_exit(x->lock);
}

#ifndef OMAX_PD_VERSION
void ocompose_paint(t_ocompose *x, t_object *patcherview)
{
	int have_new_data = 0;
	critical_enter(x->lock);
	have_new_data = x->have_new_data;
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
    jgraphics_line_to(g, rect.width - 10, 0);
    jgraphics_line_to(g, rect.width, 10);
    jgraphics_line_to(g, rect.width, rect.height);
    jgraphics_line_to(g, 0, rect.height);
    jgraphics_line_to(g, 0, 0);
    jgraphics_fill(g);
    
    // outline
    jgraphics_set_source_jrgba(g, &(x->frame_color));
    jgraphics_set_line_width(g, 2.);
    jgraphics_move_to(g, rect.width - 1, 10);
    jgraphics_line_to(g, rect.width - 1, rect.height - 1);
    jgraphics_line_to(g, 1, rect.height - 1);
    jgraphics_line_to(g, 1, 1);
    jgraphics_line_to(g, rect.width - 10, 1);
    jgraphics_stroke(g);
    
    // thin diagonal
    jgraphics_set_line_width(g, 1.);
    jgraphics_move_to(g, rect.width - 10, 0);
    jgraphics_line_to(g, rect.width, 10);
    jgraphics_stroke(g);
    
    // triangle
//    jgraphics_set_source_jrgba(g, &(x->frame_color));
    jgraphics_set_line_width(g, 2.);
    jgraphics_move_to(g, rect.width - 11, 0);
    jgraphics_line_to(g, rect.width - 11, 11);
    jgraphics_line_to(g, rect.width, 11);
    jgraphics_stroke(g);
}

#endif

void ocompose_refresh(t_ocompose *x)
{
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
		rv = 0;		// don't pass those keys to ocompose
	}
	return rv;
}


void ocompose_mousedown(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 6, 10, 5);
	jbox_redraw((t_jbox *)x);
}

void ocompose_mouseup(t_ocompose *x, t_object *patcherview, t_pt pt, long modifiers){
    textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 5, 10, 5);
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
	long size	= 0;
	char *text	= NULL;
#ifdef OMAX_PD_VERSION
	text = x->text;
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
	ocompose_newBundle(x, bndl_u, bndl_s);
#ifdef OMAX_PD_VERSION
    x->have_new_data = 1;
	jbox_redraw((t_jbox *)x);
#else
	x->have_new_data = 1;
	qelem_set(x->qelem);
#endif
}

void ocompose_bang(t_ocompose *x){
	ocompose_output_bundle(x);
}

void ocompose_int(t_ocompose *x, long n){
	t_atom a;
	atom_setlong(&a, n);
	ocompose_list(x, NULL, 1, &a);
}

void ocompose_float(t_ocompose *x, double f){
	t_atom a;
	atom_setfloat(&a, f);
	ocompose_list(x, NULL, 1, &a);
}

void ocompose_list(t_ocompose *x, t_symbol *list_sym, short argc, t_atom *argv)
{
	if (x->bndl_has_been_checked_for_subs && !x->bndl_has_subs) {
		if (!x->bndl_s) {
			if (x->bndl_u) {
				long len = 0;
				char *ptr = NULL;
				critical_enter(x->lock);
				osc_bundle_u_serialize(x->bndl_u, &len, &ptr);
				critical_exit(x->lock);
				x->bndl_s = osc_bundle_s_alloc(len, ptr);
			} else if (x->text) {
				// pretty sure this can't happen...
				post("%d\n", __LINE__);
			} else {
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
		if (!x->bndl_u) {
			if (x->bndl_s) {
				critical_enter(x->lock);
				osc_bundle_s_deserialize(osc_bundle_s_getLen(x->bndl_s), osc_bundle_s_getPtr(x->bndl_s), &(x->bndl_u));
				critical_exit(x->lock);
			} else if (x->text) {
				// pretty sure this can't happen...
				post("%d\n", __LINE__);
			} else {
				return;
			}
		}
		critical_enter(x->lock);
		t_osc_bndl_u *copy = NULL;
		t_osc_err e = omax_util_copyBundleWithSubs_u(&copy, x->bndl_u, argc, argv, &(x->bndl_has_subs));
		if (e) {
			return;
		}
		if (!copy) {
			return;
		}
		x->bndl_has_been_checked_for_subs = 1;
		critical_exit(x->lock);
		long len = 0;
		char *copy_s = NULL;
		e = osc_bundle_u_serialize(copy, &len, &copy_s);
		if (e) {
			object_error((t_object *)x, "%s\n", osc_error_string(e));
			osc_bundle_u_free(copy);
			return;
		}
		if (copy_s) {
			omax_util_outletOSC(x->outlet, len, copy_s);
			osc_mem_free(copy_s);
		}
		osc_bundle_u_free(copy);
	}
}

void ocompose_anything(t_ocompose *x, t_symbol *msg, short argc, t_atom *argv)
{
	t_atom av[argc + 1];
	int ac = argc;

	if (msg) {
		ac = argc + 1;
		atom_setsym(av, msg);
		if(argc > 0){
			memcpy(av + 1, argv, argc * sizeof(t_atom));
		}
	} else {
		memcpy(av, argv, argc * sizeof(t_atom));
	}
    ocompose_list(x, NULL, ac, av);

#ifdef OMAX_PD_VERSION
	x->have_new_data = 1;
	jbox_redraw((t_jbox *)x);
#else
	x->have_new_data = 1;
	qelem_set(x->qelem);
#endif
}

void ocompose_set(t_ocompose *x, t_symbol *s, long ac, t_atom *av)
{
	if (ac) {
		if (atom_gettype(av) == A_SYM) {
			t_symbol *sym = atom_getsym(av);
			if (sym == ps_FullPacket && ac == 3) {
				ocompose_doFullPacket(x, atom_getlong(av + 1), (char *)atom_getlong(av + 2));
				return;
			}
		}
	} else {
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

void ocompose_setHeight(t_ocompose *x, float y)
{
    int h = ((int)y - text_ypix(&x->ob, x->glist) + 5);
    h = (h > 23) ? h : 23;

    //post("%x %s y %f te_ypix %d ", x, __func__, y, x->ob.te_ypix);
    x->softlock = 0;
    
    if((h != x->height) || x->forceredraw)
    {
        x->height = h;
//        post("%x %s height set to %d x->firsttime %d", x, __func__, x->height, x->firsttime);
        ocompose_drawElements(x, x->glist, x->width, x->height, x->firsttime);
        x->forceredraw = 0;
        
    } else {
        ;
        //post("%x %s height == h && !redraw ", x, __func__);
    }
}

void ocompose_getRectAndDraw(t_ocompose *x, int forceredraw)
{
    x->forceredraw = forceredraw;
    x->softlock = 1;
   // post("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", x->receive_name, glist_getcanvas(x->glist), (long)x);

    sys_vgui("pdsend \"%s setheight [lindex [.x%lx.c bbox text%lx] 3]\" \n", x->receive_name, glist_getcanvas(x->glist), (long)x);
//    sys_vgui("::pdwindow::post \"%x %s Tk bbox y2 px: [lindex [%s bbox text%lx] 3]\n\"\n", x, __func__, x->canvas_id, (long)x);

}

void ocompose_resize_mousedown(t_ocompose *x)
{
    //  post("%s", __func__);
    x->mouseDown = 1;
    x->xref = x->width;
}

void ocompose_resize_mousemove(t_ocompose *x, float dx, float dy)
{
    if(x->mouseDown && x->editmode)
    {
        int width = (dx + x->xref);
        width = (width < 50) ? 50 : width;
        x->width = width;
        
        ocompose_getRectAndDraw(x, 1);
        
    }
}

void ocompose_resize_mouseup(t_ocompose *x)
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

void ocompose_setTextFromHex(t_ocompose *x, char *hex)
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

void ocompose_setTextFromString(t_ocompose *x, char *str)
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

void ocompose_setHexFromText(t_ocompose *x, char *str)
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


void ocompose_textbuf(t_ocompose *x, t_symbol *msg, int argc, t_atom *argv)
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
                            ocompose_storeTextAndExitEditorTick(x);

                        ocompose_setTextFromHex(x, x->hex);
                        ocompose_gettext(x); //converts to text to bundle, reformats after parsing
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
                            ocompose_storeTextAndExitEditorTick(x);
                        
                        ocompose_setTextFromHex(x, x->hex);
                        ocompose_gettext(x);
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
                
                ocompose_setTextFromString(x, text);
                //                post("%s %d %s", __func__, x->textediting, text);
                
            }
            else
            {}//error
        }
    }
    
}


void ocompose_insideclick_callback(t_ocompose *x)
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
        ocompose_storeTextAndExitEditor(x);
        ocompose_click((t_gobj *)x, x->glist, 0, 0, 0, 0, 0, 0);
    }
    
}

void ocompose_outsideclick_callback(t_ocompose *x)
{
//    post("%p %s", x, __func__);
    x->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(x->glist);

    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, x->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas,x->tcl_namespace, canvas );

    sys_vgui("focus .x%lx.c\n", canvas);
    gobj_select((t_gobj *)x, x->glist, 0); //    ocompose_storeTextAndExitEditor(x); called from select function

    
    //same for <Key>
    x->selected = 0;
    x->cmdDown = 0; //in case of esc exit
    
    
}

//called when clicking from one object to another without clicking on the empty canvas first
void ocompose_pdnofocus_callback(t_ocompose *x)
{
//    post("%p %s", x, __func__);
    x->c_bind = 0;
    t_canvas *canvas = glist_getcanvas(x->glist);
    sys_vgui("bind .x%lx.c <Button-1> $::%s::canvas%lxBUTTONBINDING\n", canvas, x->tcl_namespace, canvas);
    sys_vgui("bind .x%lx.c <MouseWheel> $::%s::canvas%lxSCROLLBINDING \n", canvas,x->tcl_namespace, canvas );

    gobj_select((t_gobj *)x, x->glist, 0);
}

void ocompose_mousewheel_callback(t_ocompose *x)
{
    ocompose_pdnofocus_callback(x);
}

void ocompose_keyup_callback(t_ocompose *x, t_symbol *s, int argc, t_atom *argv)
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

void ocompose_key_callback(t_ocompose *x, t_symbol *s, int argc, t_atom *argv)
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
                    ocompose_outsideclick_callback(x);
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
                    ocompose_outsideclick_callback(x);
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
                            ocompose_outsideclick_callback(x);
                            break;
                        default:
                            break;
                    }
                }
            } else {
                sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [regsub -all -line {^[ \t]+|[ \t]+$} [.x%lx.t%lxTEXT get 0.0 end-1c] \"\" ]] \n", glist_getcanvas(x->glist), x, x->width-10, glist_getcanvas(x->glist), (long)x);
                ocompose_getRectAndDraw(x, 0);
            }
        }
    }
}



void ocompose_bind_text_events(t_ocompose *x)
{
    t_canvas *canvas = glist_getcanvas(x->glist);
    sys_vgui("bind .x%lx.t%lxTEXT <Key> {+pdsend {%s key %%N }}\n", canvas, (long)x, x->receive_name);
    sys_vgui("bind .x%lx.t%lxTEXT <KeyRelease> {+pdsend {%s keyup %%N }}\n",  canvas, (long)x, x->receive_name);
    
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


void ocompose_storeTextAndExitEditorTick(t_ocompose *x)
{
    
    t_canvas *canvas = glist_getcanvas(x->glist);
//    error("%p %s", x, __func__);
    sys_vgui(".x%lx.c itemconfigure text%lx -fill black -width %d -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", canvas, (long)x, x->width-10, x->tk_text);
    sys_vgui("destroy .x%lx.t%lxTEXT\n", canvas, (long)x);
    
    x->textediting = 0;
    
    ocompose_getRectAndDraw(x, 1);

    //        post("%s %d", __func__, x->textediting);
    

    
}

void ocompose_storeTextAndExitEditor(t_ocompose *x)
{
    if(x->textediting){
        sys_vgui("sendchunks [.x%lx.t%lxTEXT get 0.0 end] %s \n", glist_getcanvas(x->glist),(long)x, x->receive_name); //sendchunks
        //receive happens on next tick
    }
    
}

void ocompose_getTextAndCreateEditor(t_ocompose *x, int firsttime)
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
        
        ocompose_bind_text_events(x);
        
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
//    ocompose_getRectAndDraw(x, 0);
}


void ocompose_resetText(t_ocompose *x, char *s)
{
    x->parse_error = 0;
    
    if(!x->firsttime)
        canvas_dirty(x->glist, 1);
    
    ocompose_setTextFromString(x, s);
    
    if(x->textediting)
    {
        //do what if reset comes while editing?
        //probably throw out your text, as punishment for editing while sending stuff to your object
        ocompose_storeTextAndExitEditorTick(x);
    }
    else if(glist_isvisible(x->glist))
    {
        //post("%s %d", __func__, glist_isvisible(x->glist));
        sys_vgui(".x%lx.c itemconfigure text%lx -width %d -text [subst -nobackslash -nocommands -novariables [string trimright [regsub -all -line {^[ \t]+|[ \t]+$}  {%s} \"\" ]]] \n", glist_getcanvas(x->glist), (long)x, x->width-10, x->tk_text);
        
        ocompose_getRectAndDraw(x, 1);
    }
}


static void ocompose_getrect(t_gobj *z, t_glist *glist,int *xp1, int *yp1, int *xp2, int *yp2)
{
    t_ocompose *x = (t_ocompose *)z;
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


void ocompose_drawElements(t_ocompose *x, t_glist *glist, int width2, int height2, int firsttime)
{
    
   // post("%x %s glist %x canvas %x", x, __func__, glist, glist_getcanvas(glist));
    if(x->in_new_flag || x->softlock)
    {
        //post("%x %s new bounce ---", x, __func__);
        return;
    }

    int have_new_data = 0;
	critical_enter(x->lock);
	have_new_data = x->have_new_data;
	critical_exit(x->lock);
	if(have_new_data){
        ocompose_bundle2text(x);
	}
    
    
   // ocompose_bundle2text(x);
    
    int x1, y1, x2, y2;
    ocompose_getrect((t_gobj *)x, glist, &x1, &y1, &x2, &y2);
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
                ocompose_getRectAndDraw(x, 1);


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

//        post("%x %s drawnew %d", x, __func__, draw_new_data_indicator);
        
        if(glist_isselected(x->glist, &x->ob.te_g))
            gobj_select(&x->ob.te_g, x->glist, 1);
       
        canvas_fixlinesfor(glist, &x->ob);

    }
    else
    {
      //  post("%s not isvisible \n", __func__);
    }
    
}


static void ocompose_vis(t_gobj *z, t_glist *glist, int vis)
{
    t_ocompose *x = (t_ocompose *)z;
    
//    post("%x %s vis %d firsttime %d visable %d", x, __func__, vis, x->firsttime, glist_isvisible(glist));
    
    if(vis)
    {
        
        if(!x->firsttime && glist_isgraph(glist))
        {
            //post("GOP vis");
            ocompose_delete(z, glist); //<< necessary for GOP? keep an eye on this
            x->firsttime = 1;
        }

        if (glist_isvisible(glist))
        {//not visible when loading from disk (and from subpatcher?)
            //post("%x %s vis and isvisble", x, __func__);
            ocompose_drawElements(x, glist, x->width, x->height, 1);
        }
        else
        {
            //post("%x %s vis but not isvisible", x, __func__);
            x->firsttime = 1;
            ocompose_getRectAndDraw(x, 1);
        }
        
        if(x->textediting)
        {
            ocompose_getTextAndCreateEditor(x, 1);
        }

    }
    else
    {
        //if(!x->firsttime)
        {
            ocompose_delete(z, glist);
        }
    }
}

static void ocompose_displace(t_gobj *z, t_glist *glist,int dx, int dy)
{
    
    t_ocompose *x = (t_ocompose *)z;
    
    
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
        ocompose_getRectAndDraw(x, 1);
        x->firstdisplace = 0;
    }
    
    
}

static void ocompose_select(t_gobj *z, t_glist *glist, int state)
{
    t_ocompose *x = (t_ocompose *)z;
    
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
            //ocompose_getTextAndCreateEditor(x, 1); //this is actually activate()
        }
    }
    else if(!state)
    {
        if(x->textediting)
            ocompose_storeTextAndExitEditor(x);
        
        x->selected = 0;
        
    }
    
    if (glist_isvisible(glist) && gobj_shouldvis(&x->ob.te_g, glist)){
        //       sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill" )); //was "$box_outline"
        sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
        sys_vgui(".x%lx.c itemconfigure %sTL -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
        
        if(!x->textediting){
            sys_vgui(".x%lx.c itemconfigure text%lx -fill %s\n", canvas, (long)x, (state? "blue" : "black"));
        }
    }
//    post("%p %s state %d selected %d textediting %d  << post", x, __func__, state, x->selected, x->textediting);

}

static void ocompose_activate(t_gobj *z, t_glist *glist, int state)
{
    //post("%s %d", __func__, state);
    
    t_ocompose *x = (t_ocompose *)z;
    t_canvas *canvas = glist_getcanvas(glist);
    if(state)
    {
        ocompose_getTextAndCreateEditor(x, 1);
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor fleur \n", canvas, (long)x);
    }
    else
    {
        ocompose_storeTextAndExitEditor(x);
        ocompose_gettext(x);
        sys_vgui(".x%lx.h%lxHANDLE configure -cursor $cursor_editmode_nothing\n", canvas, (long)x);
        
    }
    
    //    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", glist, x->border_tag, (state? "$select_color" : "$msg_box_fill"));//was "$box_outline"
    sys_vgui(".x%lx.c itemconfigure %s -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
    sys_vgui(".x%lx.c itemconfigure %sTL -outline %s\n", canvas, x->corner_tag, (state? "blue" : "black"));
}

static void ocompose_delete(t_gobj *z, t_glist *glist)
{
    t_ocompose *x = (t_ocompose *)z;
   // ocompose_pdnofocus_callback(x);

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

static void ocompose_doClick(t_ocompose *x,
                             t_floatarg xpos, t_floatarg ypos, t_floatarg shift,
                             t_floatarg ctrl, t_floatarg alt)
{
    if (glist_isvisible(x->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -width 5\n", glist_getcanvas(x->glist), x->border_tag);
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
    if (glist_isvisible(x->glist))
    {
        sys_vgui(".x%lx.c itemconfigure %s -width 1\n", glist_getcanvas(x->glist), x->border_tag);
    }
}


static void ocompose_save(t_gobj *z, t_binbuf *b)
{
    
    /*
     //prints current pd file text in binbuf
     int argc = binbuf_getnatom(b);
     if(argc > 0){
     t_atom *at = binbuf_getvec(b);
     printargs(argc, at);
     }
     */
    
    t_ocompose *x = (t_ocompose *)z;

    ocompose_setHexFromText(x, x->text);
    
//    post("%x %s height %d", x, __func__, x->height);
    
    if(!x->firsttime && glist_getcanvas(x->glist)->gl_editor)
        ocompose_pdnofocus_callback(x);
    
    binbuf_addv(b, "ssiisiis", gensym("#X"),gensym("obj"),(t_int)x->ob.te_xpix, (t_int)x->ob.te_ypix, gensym("o.compose"), x->width, x->height, gensym("binhex"));
    
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

void ocompose_free(t_ocompose *x)
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
                case ocompose_S:
                    osc_bundle_s_deepFree((t_osc_bndl_s *)x->bndl);
                    break;
                case ocompose_U:
                    osc_bundle_u_free((t_osc_bndl_u *)x->bndl);
                    break;
            }
        }
         */
        
        ocompose_clearBundles(x);
        
    }
    
}


void *ocompose_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_ocompose *x = (t_ocompose *)pd_new(ocompose_class->class);
    if(x)
    {
        x->in_new_flag = 1;
        
        x->glist = (t_glist *)canvas_getcurrent();
      //  post("%s %p %d glist %x canvas %x\n", __func__, x, __LINE__, x->glist, glist_getcanvas(x->glist));
   
        x->outlet = outlet_new(&x->ob, NULL);
        
        //            x->ob.b_firstin = (void *)x;
        
        x->proxy = (void **)malloc(argc * sizeof(t_omax_pd_proxy *));
        x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), ocompose_proxy_class);
        x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), ocompose_proxy_class);
        
        x->bndl_u = NULL;
		x->bndl_s = NULL;
		x->newbndl = 0;
		x->textlen = 0;
        
        critical_new(&(x->lock));
        //        x->qelem = qelem_new((t_object *)x, (method)ocompose_refresh);
        
        x->m_clock = clock_new(x, (t_method)ocompose_tick);
        
        x->new_data_indicator_clock = clock_new(x, (t_method)ocompose_refresh);
        x->have_new_data = 1;
        
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
              
                ocompose_textbuf(x, NULL, argc-2, (argv+2));
                t_atom done[2];
                atom_setsym(done, gensym("binhex"));
                atom_setsym(done+1, gensym(x->receive_name));
                ocompose_textbuf(x, NULL, 2, done);
              
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

void setup_o0x2ecompose(void) {
    
    omax_pd_class_new(ocompose_class, gensym("o.compose"), (t_newmethod)ocompose_new, (t_method)ocompose_free, sizeof(t_ocompose),  CLASS_NOINLET, A_GIMME, 0);
    
    class_addmethod(ocompose_class->class, (t_method)ocompose_textbuf,gensym("textbuf"), A_GIMME, 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_insideclick_callback, gensym("insideclick"), 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_outsideclick_callback, gensym("outsideclick"), 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_pdnofocus_callback, gensym("pdnofocus"), 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_key_callback, gensym("key"), A_GIMME, 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_keyup_callback, gensym("keyup"), A_GIMME, 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_resize_mousedown, gensym("resize_mousedown"), 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_resize_mousemove, gensym("resize_mousemove"), A_DEFFLOAT, A_DEFFLOAT, 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_resize_mouseup, gensym("resize_mouseup"), 0);
    class_addmethod(ocompose_class->class, (t_method)ocompose_mousewheel_callback, gensym("mousewheel"), 0);
    
    class_addmethod(ocompose_class->class, (t_method)ocompose_setHeight, gensym("setheight"), A_DEFFLOAT, 0);
    
    t_omax_pd_proxy_class *c = NULL;
    omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
    omax_pd_class_addbang(c, (t_method)ocompose_bang);
    
	omax_pd_class_addfloat(c, (t_method)ocompose_float);
	omax_pd_class_addmethod(c, (t_method)ocompose_list, gensym("list"));
	omax_pd_class_addanything(c, (t_method)ocompose_anything);
	omax_pd_class_addmethod(c, (t_method)ocompose_set, gensym("set"));
    omax_pd_class_addmethod(c, (t_method)ocompose_doc, gensym("doc"));

    
	omax_pd_class_addmethod(c, (t_method)ocompose_fullPacket, gensym("FullPacket"));
    
    ocompose_widgetbehavior.w_getrectfn = ocompose_getrect;
    ocompose_widgetbehavior.w_displacefn = ocompose_displace;
    ocompose_widgetbehavior.w_selectfn = ocompose_select;
    ocompose_widgetbehavior.w_deletefn = ocompose_delete;
    ocompose_widgetbehavior.w_clickfn = ocompose_click;
    ocompose_widgetbehavior.w_activatefn = ocompose_activate;
    ocompose_widgetbehavior.w_visfn = ocompose_vis;
    
    
    class_setsavefn(ocompose_class->class, ocompose_save);
    class_setwidget(ocompose_class->class, &ocompose_widgetbehavior);
    
    ps_newline = gensym("\n");
	ps_FullPacket = gensym("FullPacket");
    
    ocompose_proxy_class = c;
    
    ODOT_PRINT_VERSION;

    //return 0;
    
}

#else

void ocompose_free(t_ocompose *x)
{
	jbox_free((t_jbox *)x);
	critical_free(x->lock);
	/*if(x->proxy){
		object_free(x->proxy);
	}*/
	ocompose_clearBundles(x);
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
		x->have_new_data = 1;
		attr_dictionary_process(x, d);
        
		t_object *textfield = jbox_get_textfield((t_object *)x);
		if(textfield){
			object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
			textfield_set_editonclick(textfield, 0);
			textfield_set_textmargins(textfield, 5, 5, 10, 5);
			textfield_set_textcolor(textfield, &(x->text_color));
		}
        
 		jbox_ready((t_jbox *)x);
        
		ocompose_gettext(x);
		return x;
	}
	return NULL;
}

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
 
new: duplication seems to alwasy be off by 10px not sure where that is yet
 
 
*/
