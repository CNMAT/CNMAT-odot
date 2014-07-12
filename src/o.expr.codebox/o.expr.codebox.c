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
#define OMAX_DOC_SHORT_DESC "Evaluate a C-like expression containing OSC addresses."
#define OMAX_DOC_LONG_DESC "When it reveives a packet, o.expr substitutes any OSC addresses contained in the expression for the values to which they are bound in the incoming packet.  The expression is then evaluated and the resulting bundle, containing any side effects of the expression, is output."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet containing addresses that the expression will be applied to."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet containing the results of the expression."}
#define OMAX_DOC_SEEALSO (char *[]){"o.callpatch", "o.if", "o.cond", "o.when", "o.unless", "expr", "jit.expr"}

#define NAME OMAX_DOC_NAME

#ifndef WIN_VERSION
#include <mach/mach.h>
#include <mach/mach_time.h>
#endif

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif

#include "jpatcher_api.h"
#include "jgraphics.h"
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

typedef struct _oexprcodebox{
    t_jbox ob;
    t_critical lock;
    long textlen;
    char *text;
    t_jrgba frame_color, background_color, text_color;
    void *outlets[2];
    t_osc_expr *expr;
} t_oexprcodebox;

void *oexprcodebox_class;
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

void oexprcodebox_paint(t_oexprcodebox *x, t_object *patcherview)
{
    critical_enter(x->lock);
    critical_exit(x->lock);
    t_rect rect;
    t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
    jbox_get_rect_for_view((t_object *)x, patcherview, &rect);
    
    jgraphics_set_source_jrgba(g, &(x->frame_color));
	jgraphics_rectangle_rounded(g, 0, 0, rect.width, rect.height, 6, 6);
	jgraphics_fill(g);

    jgraphics_set_source_jrgba(g, &(x->background_color));
    jgraphics_rectangle(g, 1, 5, rect.width - 2, rect.height - 10);
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
    
    if (k == JKEY_TAB || k == JKEY_ESC) {
            object_method_typed(patcherview, gensym("endeditbox"), 0, NULL, &arv); 
            rv = 0;                // don't pass those keys to oexprcodebox
    }
    return rv;
}


void oexprcodebox_mousedown(t_oexprcodebox *x, t_object *patcherview, t_pt pt, long modifiers){
	textfield_set_textmargins(jbox_get_textfield((t_object *)x), 6, 9, 4, 10);
    jbox_redraw((t_jbox *)x);
}

void oexprcodebox_mouseup(t_oexprcodebox *x, t_object *patcherview, t_pt pt, long modifiers){
	textfield_set_textmargins(jbox_get_textfield((t_object *)x), 5, 8, 5, 11);
    jbox_redraw((t_jbox *)x);
    oexprcodebox_bang(x);
}

// we get the text, convert it to an OSC bundle, and then call the paint
// function via qelem_set which converts the OSC bundle back to text.
// We do this so that it's formatted nicely with no unnecessary whitespace
// and tabbed subbundles, etc.
void oexprcodebox_gettext(t_oexprcodebox *x)
{
    long size        = 0;
    char *text       = NULL;
#ifdef OMAX_PD_VERSION
    text = x->text;
#else
    t_object *textfield = jbox_get_textfield((t_object *)x);
    object_method(textfield, gensym("gettextptr"), &text, &size);
#endif
    size = strlen(text); // the value returned in text doesn't make sense
    if(size == 0){
            return;
    }    
    // free expr
    //oexprcodebox_clearBundles(x);
    if(x->expr){
            critical_enter(x->lock);
            osc_expr_free(x->expr);
    x->expr = NULL;
            // search and replace #n params
            critical_exit(x->lock);
    }
    critical_enter(x->lock);
    // search and replace #n params
    osc_expr_parser_parseExpr(text, &(x->expr));
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

#ifndef OMAX_PD_VERSION
OMAX_DICT_DICTIONARY(t_oexprcodebox, x, oexprcodebox_fullPacket);
#endif

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

#ifndef OMAX_PD_VERSION
void oexprcodebox_assist(t_oexprcodebox *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}
#endif

void oexprcodebox_free(t_oexprcodebox *x)
{
    if(x->expr){
        osc_expr_free(x->expr);
    }
    jbox_free((t_jbox *)x);
    critical_free(x->lock);
}

#ifndef OMAX_PD_VERSION
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

#ifdef OMAX_PD_VERSION
void *oexprcodebox_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_oexprcodebox *x;
    if((x = (t_oexprcodebox *)object_alloc(oexprcodebox_class))){
        t_osc_expr *f = NULL;
    char symbuf[argc][65536];
        if(argc){
            char buf[65536];
            memset(buf, '\0', sizeof(buf));
            char *ptr = buf;
            int i;
            for(i = 0; i < argc; i++){
                switch(atom_gettype(argv + i)){
                    case A_LONG:
                        ptr += sprintf(ptr, "%ld ", atom_getlong(argv + i));
                        break;
                    case A_FLOAT:
                        ptr += sprintf(ptr, "%f ", atom_getfloat(argv + i));
                        break;
                    case A_SYM:
                    {
                        strcpy(symbuf[i], atom_getsymbol(argv + i)->s_name);
                        omax_util_hashBrackets2Curlies(symbuf[i]);
                                                
                        char *s = symbuf[i];
                        int len = strlen(s); // null byte
                        int j;
                        for(j = 0; j < len; j++) {
//<< check this for pd version
                            if(s[j] == '$'){
                                if((j + 1) < len){
                                    if((s[j + 1] <= 47 || s[j + 1] >= 58)){
                                        object_error((t_object *)x, "address can't contain a $");
                                        return NULL;
                                    }
                                    ptr += sprintf(ptr, "/_%d_", s[j + 1] - 48);
                                    j++;
                                } else {
                                    object_error((t_object *)x, "address can't contain a $");
                                    return NULL;
                                }
                            } else {
                                *ptr++ = s[j];
                            }
                        }
                        
                        *ptr++ = ' ';
                    }
                        break;
                }
            }
            
            if(1){//if(!haspound){
                OSC_PROFILE_TIMER_START(foo);
                int ret = osc_expr_parser_parseExpr(buf, &f);
                OSC_PROFILE_TIMER_STOP(foo);
                OSC_PROFILE_TIMER_PRINTF(foo);
                OSC_PROFILE_TIMER_SNPRINTF(foo, buff);
#ifdef __OSC_PROFILE__
                post("%s\n", buff);
#endif
                if(!f || ret) {
                    object_error((t_object *)x, "error parsing %s\n", buf);
//                              return NULL;  //<< avioding bogus object
                    x->expr = NULL;
                } else {
                    x->expr = f;
                }
            } else {
                x->expr = NULL;
            }
            
        }
    
        int n = 0;
        while(f){
            n++;
            f = osc_expr_next(f);
        }
        
#if defined (OIF)
        if(n == 0 || n > 1){
            object_error((t_object *)x, "invalid number of expressions: %d", n);
            return NULL;
        }
        x->outlets = osc_mem_alloc(2 * sizeof(void *));
		x->outlets[0] = outlet_new(&x->ob, gensym("FullPacket"));
        x->outlets[1] = outlet_new(&x->ob, gensym("FullPacket"));
#elif defined (OUNLESS) || defined (OWHEN)
        if(n == 0 || n > 1){
            object_error((t_object *)x, "invalid number of expressions: %d", n);
            return NULL;
        }
        x->outlet = outlet_new(&x->ob, gensym("FullPacket"));
#elif defined (OCOND)
        x->num_exprs = n;
        // implicit 't' as the last condition
        x->outlets = osc_mem_alloc((n + 1) * sizeof(void *));
        int i;
        for(i = 0; i <= n; i++) {
            x->outlets[i] = outlet_new(&x->ob, gensym("FullPacket"));;
        }
		/*
		  x->outlets_desc = (char **)osc_mem_alloc((x->num_exprs + 1) * sizeof(char *));
		  for(i = 0; i < x->num_exprs; i++){
		  x->outlets_desc[i] = (char *)osc_mem_alloc(128);
		  sprintf(x->outlets_desc[i], "Input OSC packet if expression %d returns true or non-zero", i+1);
		  }
		  x->outlets_desc[x->num_exprs] = (char *)osc_mem_alloc(128);
		  sprintf(x->outlets_desc[x->num_exprs], "Input OSC packet if all expressions return false or zero");
		*/
#else
        x->outlet = outlet_new(&x->ob, gensym("FullPacket"));
#endif
        }
        return x;
}

#if defined (OIF)
int oif_setup(void)
#elif defined (OUNLESS)
int ounless_setup(void)
#elif defined (OWHEN)
int owhen_setup(void)
#elif defined (OCOND)
int ocond_setup(void)
#else
int oexprcodebox_setup(void)
#endif
{
    t_class *c = class_new(gensym(NAME), (t_newmethod)oexprcodebox_new, (t_method)oexprcodebox_free, sizeof(t_oexprcodebox), 0L, A_GIMME, 0);


    class_addmethod(c, (t_method)oexprcodebox_fullPacket, gensym("FullPacket"), A_GIMME, 0);
//  class_addmethod(c, (t_method)oexprcodebox_assist, gensym("assist"), A_CANT, 0);
    class_addmethod(c, (t_method)oexprcodebox_bang, gensym("bang"), 0);

    class_addmethod(c, (t_method)oexprcodebox_postExprIR, gensym("post-expr-ir"), 0);

    class_addmethod(c, (t_method)oexprcodebox_doc, gensym("doc"), 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_func, gensym("doc-func"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_func, gensym("doc-function"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_cat, gensym("doc-cat"), A_GIMME, 0);
    class_addmethod(c, (t_method)oexprcodebox_doc_cat, gensym("doc-category"), A_GIMME, 0);

    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);

    oexprcodebox_class = c;

//  common_symbols_init();
//  osc_error_setHandler(omax_util_liboErrorHandler);

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
        //| JBOX_GROWBOTH
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
		attr_dictionary_process(x, d);
		t_object *textfield = jbox_get_textfield((t_object *)x);
		if(textfield){
			object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
			textfield_set_editonclick(textfield, 0);
			textfield_set_textmargins(textfield, 5, 8, 5, 11);
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
    
	CLASS_ATTR_RGBA(c, "frame_color", 0, t_oexprcodebox, frame_color);
	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, ".216 .435 .7137 1.");
	CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color");
    CLASS_ATTR_CATEGORY_KLUDGE(c, "frame_color", 0, "Color");
    
	CLASS_ATTR_RGBA(c, "text_color", 0, t_oexprcodebox, text_color);
	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "text_color", 0, "0. 0. 0. 1.");
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
