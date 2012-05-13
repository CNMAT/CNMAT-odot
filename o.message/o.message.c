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
  NAME: o.message
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

#define OMAX_DOC_NAME "o.message"
#define OMAX_DOC_SHORT_DESC "Create and display OSC bundles"
#define OMAX_DOC_LONG_DESC "o.message behaves like the standard Max message box except that it converts its data to OSC packets."
#define OMAX_DOC_INLETS_DESC (char *[]){"Bang sends the OSC FullPacket out.", "Set the contents."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"message"}


#define gensym_tr gensym
#define str_tr(foo) foo

#include <string.h>
#include "../odot_version.h"

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"

#include "jpatcher_api.h" 
//#include "jpatcher_syms.h"
#include "jgraphics.h"

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
//#include <mach/mach_time.h>

#define OMESSAGE_MAX_NUM_MESSAGES 128
#define OMESSAGE_MAX_MESSAGE_LENGTH 128
#define BUFLEN 128

#ifdef WIN_VERSION
// currently we have to compile windows versions with gcc 3 on cygwin and i'm getting undefined
// refs to strsep, so here it is fucker.
char *
strsep(stringp, delim)
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
				if (c == 0)
					s = NULL;
				else
					s[-1] = 0;
				*stringp = s;
				return (tok);
			}
		} while (sc != 0);
	}
	/* NOTREACHED */
}
#endif


enum {
	OMESSAGE_U,
	OMESSAGE_S,
};

typedef struct _omessage{
	t_jbox ob;
	void *outlet;
	void *proxy;
	long inlet;
	t_critical lock;
	void *bndl; // this should be a t_osc_bndl
	int bndltype;
	t_osc_parser_subst *substitutions;
	long nsubs;
	t_jrgba frame_color, background_color, text_color;
	void *qelem;
} t_omessage;

t_symbol *ps_newline, *ps_FullPacket;

static t_class *omessage_class;

void omessage_doFullPacket(t_omessage *x, long len, long ptr);
void omessage_paint(t_omessage *x, t_object *patcherview);
void omessage_set(t_omessage *x, t_symbol *s, long ac, t_atom *av);
void omessage_select(t_omessage *x);
void omessage_doselect(t_omessage *x);
long omessage_key(t_omessage *x, t_object *patcherview, long keycode, long modifiers, long textcharacter);
long omessage_keyfilter(t_omessage *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter);
void omessage_enter(t_omessage *x);
void omessage_gettext(t_omessage *x);
void omessage_clear(t_omessage *x);
void omessage_output_bundle(t_omessage *x);
void omessage_mousedown(t_omessage *x, t_object *patcherview, t_pt pt, long modifiers);
void omessage_mouseup(t_omessage *x, t_object *patcherview, t_pt pt, long modifiers);
void omessage_bang(t_omessage *x);
void omessage_int(t_omessage *x, long n);
void omessage_float(t_omessage *x, double xx);
void omessage_list(t_omessage *x, t_symbol *msg, short argc, t_atom *argv);
void omessage_anything(t_omessage *x, t_symbol *msg, short argc, t_atom *argv);
void omax_util_outletOSC(void *outlet, long len, char *ptr);
void omessage_free(t_omessage *x);
void omessage_inletinfo(t_omessage *x, void *b, long index, char *t);
void *omessage_new(t_symbol *msg, short argc, t_atom *argv);



//void omessage_fullPacket(t_omessage *x, long len, long ptr)
void omessage_fullPacket(t_omessage *x, t_symbol *msg, int argc, t_atom *argv)
{
	// killme ////////////////////////
	if(argc != 2){
		return;
	}
	long len = atom_getlong(argv);
	long ptr = atom_getlong(argv + 1);
	//////////////////////////////////
	if(proxy_getinlet((t_object *)x) == 0){
		return;
	}
	omessage_doFullPacket(x, len, ptr);
}

void omessage_doFullPacket(t_omessage *x, long len, long ptr){
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(x->bndl){
		switch(x->bndltype){
		case OMESSAGE_U:
			osc_bundle_u_free(x->bndl);
			break;
		case OMESSAGE_S:
			osc_bundle_s_deepFree(x->bndl);
			break;
		}
		x->bndl = NULL;
	}
	if(x->substitutions){
		t_osc_parser_subst *s = x->substitutions;
		while(s){
			t_osc_parser_subst *next = s->next;
			osc_mem_free(s);
			s = next;
		}
		x->substitutions = NULL;
		x->nsubs = 0;
	}
	if(len == OSC_HEADER_SIZE){
		// empty bundle--clear box
		char buf = '\0';
		object_method(jbox_get_textfield((t_object *)x), gensym("settext"), &buf);
		jbox_redraw((t_jbox *)x);
		return;
	}
	long bufpos = 0;
	char *buf = NULL;

	int have_subs = 0;
	{
		t_osc_bndl_it_s *bit = osc_bndl_it_s_get(len, (char *)ptr);
		while(osc_bndl_it_s_hasNext(bit) && have_subs == 0){
			t_osc_msg_s *m = osc_bndl_it_s_next(bit);
			char *address = osc_message_s_getAddress(m);
			if(address[1] == '$'){
				have_subs = 1;
				break;
			}
			t_osc_msg_it_s *mit = osc_msg_it_s_get(m);
			while(osc_msg_it_s_hasNext(mit)){
				t_osc_atom_s *a = osc_msg_it_s_next(mit);
				if(osc_atom_s_getTypetag(a) == 's'){
					char *s = NULL;
					osc_atom_s_getString(a, 0, &s);
					if(s[0] == '$'){
						if(s){
							osc_mem_free(s);
						}
						have_subs = 1;
						break;
					}
					if(s){
						osc_mem_free(s);
					}
				}
			}
			osc_msg_it_s_destroy(mit);
		}
		osc_bndl_it_s_destroy(bit);
	}
	if(have_subs){
		t_osc_bndl_u *ubndl = NULL;
		osc_bundle_s_deserialize(len, (char *)ptr, &ubndl);
		x->bndl = (void *)ubndl;
		x->bndltype = OMESSAGE_U;
		osc_bundle_u_format(ubndl, &bufpos, &buf);
	}else{
		char *copy = osc_mem_alloc(len);
		memcpy(copy, (char *)ptr, len);
		t_osc_bndl_s *bndl = osc_bundle_s_alloc(len, copy);
		x->bndl = (void *)bndl;
		x->bndltype = OMESSAGE_S;
		osc_bundle_s_format(len, (char *)ptr, &bufpos, &buf);
	}
	object_method(jbox_get_textfield((t_object *)x), gensym("settext"), buf);

	if(buf){
		osc_mem_free(buf);
	}
	//jbox_redraw((t_jbox *)x);
	qelem_set(x->qelem);
}

void omessage_output_bundle(t_omessage *x){
	if(x->bndl){
		switch(x->bndltype){
		case OMESSAGE_U:
			{
				long len = 0;
				char *ptr = NULL;
				osc_bundle_u_serialize((t_osc_bndl_u *)(x->bndl), &len, &ptr);
				omax_util_outletOSC(x->outlet, len, ptr);
				osc_mem_free(ptr);
			}
			break;
		case OMESSAGE_S:
			{
				t_osc_bndl_s *b = (t_osc_bndl_s *)(x->bndl);
				long len = osc_bundle_s_getLen(b);
				char *ptr = osc_bundle_s_getPtr(b);
				char buf[len];
				memcpy(buf, ptr, len);
				omax_util_outletOSC(x->outlet, len, buf);
			}
			break;
		}
	}else{
		char buf[OSC_HEADER_SIZE];
		memset(buf, '\0', OSC_HEADER_SIZE);
		osc_bundle_s_setBundleID(buf);
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, buf);
	}
}

void omessage_paint(t_omessage *x, t_object *patcherview)
{
	t_rect rect;
	t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview);
	jbox_get_rect_for_view((t_object *)x, patcherview, &rect);

	jgraphics_set_source_jrgba(g, &(x->background_color));
	//jgraphics_rectangle(g, 0., 0., rect.width, rect.height);
	jgraphics_move_to(g, 0, 0);
	jgraphics_line_to(g, 0, rect.height - 8);
	jgraphics_line_to(g, 8, rect.height);
	jgraphics_line_to(g, rect.width, rect.height);
	jgraphics_line_to(g, rect.width, 8);
	jgraphics_line_to(g, rect.width - 8, 0);
	jgraphics_line_to(g, 0, 0);
	jgraphics_fill(g);

	jgraphics_ellipse(g, rect.width - 16., 0., 16, 16);
	jgraphics_ellipse(g, 0., rect.height - 16., 16., 16.);
	jgraphics_fill(g);

	jgraphics_set_source_jrgba(g, &(x->frame_color));
	jgraphics_set_line_width(g, 2.);
	jgraphics_move_to(g, rect.width * .75, 0.);
	jgraphics_line_to(g, 0., 0.);
	jgraphics_line_to(g, 0., rect.height * .25);
	jgraphics_move_to(g, rect.width - (rect.width * .75), rect.height);
	jgraphics_line_to(g, rect.width, rect.height);
	jgraphics_line_to(g, rect.width, rect.height - (rect.height * .25));
	jgraphics_stroke(g);
}

void omessage_refresh(t_omessage *x)
{
	jbox_redraw((t_jbox *)x);
}

void omessage_processAtoms(t_omessage *x, int argc, t_atom *argv)
{
	if(atom_gettype(argv) != A_SYM){
		error("o.message: not a proper OSC message");
		return;
	}
	if(argc == 1){
		// one arg and it's a symbol.  parse this as it may be an address
		// without arguments, or it may be a complete message like "/foo 1 2 3"

		return;
	}
	// else
	t_symbol *address = atom_getsym(argv);
	if(*(address->s_name) != '/'){
		error("o.message: %s is not a valid OSC address", address->s_name);
		return;
	}

	int len = 2048;
	char *buf = (char *)osc_mem_alloc(2048);
	char *bufptr = buf;
	int i;
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	t_osc_msg_u *msg = osc_message_u_alloc();
	osc_message_u_setAddress(msg, address->s_name);
	bufptr += sprintf(bufptr, "%s ", address->s_name);
	t_osc_parser_subst *substitutions = NULL;
	int nsubs = 0;
	for(i = 1; i < argc; i++){
		if(len - (bufptr - buf) < 128){
			int offset = bufptr - buf;
			buf = (char *)osc_mem_resize(buf, len + 1024);
			if(!(buf)){
				error("o.message: out of memory!");
				return;
			}
			len += 1024;
			bufptr = buf + offset;
		}
		switch(atom_gettype(argv + i)){
		case A_LONG:
			{
				int32_t l = atom_getlong(argv + i);
				bufptr += sprintf(bufptr, "%"PRId32" ", l);
				osc_message_u_appendInt32(msg, l);
			}
			break;
		case A_FLOAT:
			{
				float f = atom_getfloat(argv + i);
				bufptr += sprintf(bufptr, "%f", f);
				bufptr--;
				while(*bufptr == '0'){
					*bufptr = ' ';
					*(bufptr + 1) = '\0';
					bufptr--;
				}
				bufptr++;
				*bufptr++ = ' ';
				*bufptr = '\0';
				osc_message_u_appendFloat(msg, f);
			}
			break;
		case A_SYM:
			{
				t_symbol *sym = atom_getsym(argv + i);
				if(sym == ps_newline){
					bufptr += sprintf(bufptr, "%s", sym->s_name);
				}else{
					bufptr += sprintf(bufptr, "%s ", sym->s_name);
				}
				t_osc_atom_u *a = osc_message_u_appendString(msg, sym->s_name);
				if(sym->s_name[0] == '$' && strlen(sym->s_name) > 1){
					t_osc_parser_subst *ss = osc_mem_alloc(sizeof(t_osc_parser_subst));
					ss->msg = msg;
					char *endp = NULL;
					ss->listitem = strtol(sym->s_name + 1, &endp, 0);
					ss->osc_atom = a;
					ss->item_to_replace = osc_message_u_getArgCount(msg);
					ss->next = substitutions;
					substitutions = ss;
					nsubs++;
				}
			}
			break;
		}
	}
	object_method(jbox_get_textfield((t_object *)x), gensym("settext"), buf);
	if(buf){
		osc_mem_free(buf);
	}
	osc_bundle_u_addMsg(bndl, msg);

	if(x->bndl){
		switch(x->bndltype){
		case OMESSAGE_U:
			osc_bundle_u_free(x->bndl);
			break;
		case OMESSAGE_S:
			osc_bundle_s_free(x->bndl);
			char *ptr = osc_bundle_s_getPtr(x->bndl);
			if(ptr){
				osc_mem_free(ptr);
			}
			break;
		}
		x->bndl = NULL;
	}
	t_osc_parser_subst *s = x->substitutions;
	while(s){
		t_osc_parser_subst *next = s->next;
		osc_mem_free(s);
		s = next;
	}
	x->substitutions = NULL;
	x->nsubs = 0;
	if(substitutions){
		x->substitutions = substitutions;
		x->nsubs = nsubs;
		x->bndl = bndl;
		x->bndltype = OMESSAGE_U;
	}else{
		long len = 0;
		char *bndl_s = NULL;
		osc_bundle_u_serialize(bndl, &len, &bndl_s);
		osc_bundle_u_free(bndl);
		x->bndl = osc_bundle_s_alloc(len, bndl_s);
		x->bndltype = OMESSAGE_S;
	}
}

void omessage_select(t_omessage *x){
	defer(x, (method)omessage_doselect, 0, 0, 0);
}

void omessage_doselect(t_omessage *x){
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


long omessage_key(t_omessage *x, t_object *patcherview, long keycode, long modifiers, long textcharacter){
	char buff[256];
	buff[0] = textcharacter;  // we know this is just a simple char
	buff[1] = 0; 
	object_method(patcherview, gensym("insertboxtext"), x, buff);
	jbox_redraw((t_jbox *)x);

	return 1; 
}

long omessage_keyfilter(t_omessage *x, t_object *patcherview, long *keycode, long *modifiers, long *textcharacter){
	t_atom arv;
	long rv = 1;
	long k = *keycode;
	
	if (k == JKEY_TAB || k == JKEY_ESC) {
		object_method_typed(patcherview, gensym("endeditbox"), 0, NULL, &arv); 
		rv = 0;		// don't pass those keys to omessage
	}
	return rv;
}

// enter is triggerd at "endeditbox time"
void omessage_enter(t_omessage *x){
	omessage_gettext(x);
}

void omessage_gettext(t_omessage *x){
	long size	= 0;
	char *text	= NULL;
	t_object *textfield = jbox_get_textfield((t_object *)x);
	object_method(textfield, gensym("gettextptr"), &text, &size);
	{
		if(x->bndl){
			switch(x->bndltype){
			case OMESSAGE_U:
				osc_bundle_u_free(x->bndl);
				break;
			case OMESSAGE_S:
				osc_bundle_s_deepFree(x->bndl);
				break;
			}
			x->bndl = NULL;
		}


		size = strlen(text); // the value returned in text doesn't make sense
		if(size == 0){
			if(x->bndl){
				switch(x->bndltype){
				case OMESSAGE_U:
					osc_bundle_u_free(x->bndl);
					break;
				case OMESSAGE_S:
					{
						char *p = osc_bundle_s_getPtr(x->bndl);
						if(p){
							osc_mem_free(p);
						}
						osc_bundle_s_free(x->bndl);
					}
					break;
				}
				x->bndl = NULL;
			}
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

		t_osc_bndl_u *bndl = NULL;
		t_osc_parser_subst *subs = NULL;
		long nsubs = 0;
		t_osc_err e = osc_parser_parseString(size, buf, &bndl, &nsubs, &subs);
		if(e){
			object_error((t_object *)x, "error parsing bundle\n");
			return;
		}
		// format parsed bundle and display it
		char *formatted = NULL;
		long formattedlen = 0;
		osc_bundle_u_format(bndl, &formattedlen, &formatted);
		char *ptr = formatted + (formattedlen - 1);
		while(*ptr == '\n'){
			*ptr = '\0';
			ptr--;
		}
		object_method(jbox_get_textfield((t_object *)x), gensym("settext"), formatted);
		if(formatted){
			osc_mem_free(formatted);
		}
		if(subs){
			x->bndl = bndl;
			x->bndltype = OMESSAGE_U;
		}else{
			long len = 0;
			char *buf = NULL;
			osc_bundle_u_serialize(bndl, &len, &buf);
			t_osc_bndl_s *b = osc_bundle_s_alloc(len, buf);
			x->bndl = (void *)b;
			x->bndltype = OMESSAGE_S;
			osc_bundle_u_free(bndl);
		}
		if(x->substitutions){
			t_osc_parser_subst *s = x->substitutions;
			while(s){
				t_osc_parser_subst *next = s->next;
				osc_mem_free(s);
				s = next;
			}
			x->substitutions = NULL;
			x->nsubs = 0;
		}
		x->substitutions = subs;
		x->nsubs = nsubs;
	}
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
}

void omessage_mousedown(t_omessage *x, t_object *patcherview, t_pt pt, long modifiers){
        textfield_set_textmargins(jbox_get_textfield((t_object *)x), 4, 4, 2, 2);
	jbox_redraw((t_jbox *)x);
}

void omessage_mouseup(t_omessage *x, t_object *patcherview, t_pt pt, long modifiers){
        textfield_set_textmargins(jbox_get_textfield((t_object *)x), 3, 3, 3, 3);
	jbox_redraw((t_jbox *)x);
	omessage_output_bundle(x);
}

void omessage_bang(t_omessage *x){
	omessage_output_bundle(x);
}

void omessage_int(t_omessage *x, long n){
	t_atom a;
	atom_setlong(&a, n);
	omessage_list(x, NULL, 1, &a);
}

void omessage_float(t_omessage *x, double f){
	t_atom a;
	atom_setfloat(&a, f);
	omessage_list(x, NULL, 1, &a);
}

void omessage_list(t_omessage *x, t_symbol *list_sym, short argc, t_atom *argv){
	switch(proxy_getinlet((t_object *)x)){
	case 0:
		{
			if(x->bndltype == OMESSAGE_S){
				// this is lame...  we can't just deserialize because that process 
				// doesn't produce the $n substitution structure.  so we have 
				// to get the text and parse it.  this is the right place to do it
				// rather than the fullpacket function because we don't know if 
				// we'll have to do the substitutions or not.
				/*
				t_osc_bndl_u *bndl = NULL;
				osc_bundle_s_deserialize(osc_bundle_s_getLen((t_osc_bndl_s *)x->bndl),
							 osc_bundle_s_getPtr((t_osc_bndl_s *)x->bndl),
							 &bndl);
				if(!bndl){
					object_error((t_object *)x, "couldn't deserialize bundle!");
					return;
				}
				x->bndl = bndl;
				x->bndltype = OMESSAGE_U;
				*/
				omessage_gettext(x);
				jbox_redraw((t_jbox *)x);
			}
			if(x->nsubs == 0 || x->bndltype == OMESSAGE_S){
				object_error((t_object *)x, "can't find $n variables to substitute");
				return;
			}

			char *original_addresses[x->nsubs];
			t_osc_msg_u *msgs[x->nsubs];
			long nsubs = 0;
			memset(original_addresses, '\0', x->nsubs);

			// process address
			t_osc_bndl_it_u *it = osc_bndl_it_u_get(x->bndl);
			while(osc_bndl_it_u_hasNext(it)){
				t_osc_msg_u *msg = osc_bndl_it_u_next(it);
				char *address = osc_message_u_getAddress(msg);
				int addresslen = strlen(address) + 1;
				char copy[addresslen];
				char *copyptr = copy;
				memcpy(copy, address, addresslen);
				int newaddresslen = addresslen;
				int dosub = 0;
				int addedtolist = 0;
				while(strsep(&copyptr, "$")){
					if(copyptr){
						if(addedtolist == 0){
							original_addresses[nsubs] = address;
							msgs[nsubs] = msg;
							nsubs++;
							addedtolist = 1;
						}
						dosub = 1;
						char *endp = NULL;
						long l = strtol(copyptr, &endp, 0) - 1;
						if(l < argc){
							switch(atom_gettype(argv + l)){
							case A_LONG:
								newaddresslen += snprintf(NULL, 0, "%ld", atom_getlong(argv + l));
								break;
							case A_FLOAT:
								newaddresslen += snprintf(NULL, 0, "%f", atom_getfloat(argv + l));
								break;
							case A_SYM:
								newaddresslen += strlen(atom_getsym(argv + l)->s_name);
								break;
							}
						}
					}
				}
				if(dosub){

					newaddresslen += 16; // never can be too careful...
					char *newaddress = osc_mem_alloc(newaddresslen);
					char *ptr = newaddress;
					memcpy(copy, address, addresslen);
					copyptr = copy;
					char *lasttok = copy, *tok = NULL;
					while((tok = strsep(&copyptr, "$"))){
						ptr += sprintf(ptr, "%s", lasttok);
						if(copyptr){
							dosub = 1;
							char *endp = NULL;
							long l = strtol(copyptr, &endp, 0) - 1;
							if(l < argc){
								switch(atom_gettype(argv + l)){
								case A_LONG:
									ptr += sprintf(ptr, "%ld", atom_getlong(argv + l));
									break;
								case A_FLOAT:
									ptr += sprintf(ptr, "%f", atom_getfloat(argv + l));
									break;
								case A_SYM:
									ptr += sprintf(ptr, "%s", atom_getsym(argv + l)->s_name);
									break;
								}
							}
							lasttok = endp;
						}
					}
					osc_message_u_setAddressPtr(msg, newaddress, NULL);
				}
			}
			osc_bndl_it_u_destroy(it);

			// now do argument substitutions
			if(x->substitutions){
				if(x->bndltype == OMESSAGE_U){
					t_osc_parser_subst *s = x->substitutions;
					while(s){
						if(s->listitem > argc){
							s = s->next;
							continue;
						}
						t_atom *maxatom = argv + s->listitem - 1;

						if(s->item_to_replace == 0){
							// this shouldn't happen
						}else{
							t_osc_atom_u *a = s->osc_atom;
							switch(atom_gettype(maxatom)){
							case A_FLOAT:
								osc_atom_u_setFloat(a, atom_getfloat(maxatom));
								break;
							case A_LONG:
								osc_atom_u_setInt32(a, atom_getlong(maxatom));
								break;
							case A_SYM:
								osc_atom_u_setString(a, atom_getsym(maxatom)->s_name);
								break;
							}
						}
						s = s->next;
					}
				}
			}

			long len = 0;
			char *buf = NULL;
			osc_bundle_u_serialize(x->bndl, &len, &buf);
			omax_util_outletOSC(x->outlet, len, buf);
			osc_mem_free(buf);
			t_osc_parser_subst *s = x->substitutions;
			while(s){
				if(s->listitem > argc){
					s = s->next;
					continue;
				}
				t_osc_atom_u *a = s->osc_atom;
				if(s->item_to_replace == 0){

				}else{
					char buf[8];
					sprintf(buf, "$%d", s->listitem);
					osc_atom_u_setString(a, buf);
				}
				s = s->next;
			}
			int i;
			for(i = 0; i < nsubs; i++){
				char *ptr = NULL;
				osc_message_u_setAddressPtr(msgs[i], original_addresses[i], &ptr);
				if(ptr){
					osc_mem_free(ptr);
				}
			}
		}
		break;
	case 1:

		break;
	}
}

void omessage_anything(t_omessage *x, t_symbol *msg, short argc, t_atom *argv){
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
		omessage_list(x, NULL, ac, av);
		break;
	case 1:
		omessage_processAtoms(x, ac, av);
		break;
	}
	jbox_redraw((t_jbox *)x);
}

void omessage_set(t_omessage *x, t_symbol *s, long ac, t_atom *av){
	if(proxy_getinlet((t_object *)x)){
		return;
	}
	if(ac){
		if(atom_gettype(av) == A_SYM){
			t_symbol *sym = atom_getsym(av);
			if(sym == ps_FullPacket && ac == 3){
				omessage_doFullPacket(x, atom_getlong(av + 1), atom_getlong(av + 2));
				return;
			}
			omessage_processAtoms(x, ac, av);
		}
	}else{
		omessage_clear(x);
	}
	jbox_redraw((t_jbox *)x);
}

void omessage_clear(t_omessage *x)
{
	char buf[OSC_HEADER_SIZE];
	memset(buf, '\0', OSC_HEADER_SIZE);
	osc_bundle_s_setBundleID(buf);
	omessage_doFullPacket(x, OSC_HEADER_SIZE, (long)buf);
}


void omessage_free(t_omessage *x){
	jbox_free((t_jbox *)x);
	critical_free(x->lock);
	if(x->proxy){
		object_free(x->proxy);
	}
	if(x->bndl){
		switch(x->bndltype){
		case OMESSAGE_S:
			osc_bundle_s_deepFree((t_osc_bndl_s *)x->bndl);
			break;
		case OMESSAGE_U:
			osc_bundle_u_free((t_osc_bndl_u *)x->bndl);
			break;
		}
	}
	if(x->substitutions){
		t_osc_parser_subst *s = x->substitutions;
		while(s){
			t_osc_parser_subst *next = s->next;
			osc_mem_free(s);
			s = next;
		}
		x->substitutions = NULL;
		x->nsubs = 0;
	}
}

void omessage_doc(t_omessage *x)
{
	omax_doc_outletDoc(x->outlet);
}

void omessage_assist(t_omessage *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}


/**************************************************
Object and instance creation functions.
**************************************************/

void *omessage_new(t_symbol *msg, short argc, t_atom *argv){
	t_omessage *x;
    
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
		//      | JBOX_NOGROW
		//| JBOX_GROWY
		//| JBOX_GROWBOTH
		//      | JBOX_HILITE
		//| JBOX_BACKGROUND
		//| JBOX_DRAWBACKGROUND
		//      | JBOX_NOFLOATINSPECTOR
		//      | JBOX_MOUSEDRAGDELTA
		| JBOX_TEXTFIELD
		;

	if((x = (t_omessage *)object_alloc(omessage_class))){
		jbox_new((t_jbox *)x, boxflags, argc, argv); 
 		x->ob.b_firstin = (void *)x; 
		x->outlet = outlet_new(x, NULL);
		x->proxy = proxy_new(x, 1, &(x->inlet));
		x->bndl = NULL;
		x->substitutions = NULL;
		critical_new(&(x->lock));
		x->qelem = qelem_new((t_object *)x, (method)omessage_refresh);
		attr_dictionary_process(x, d); 

		t_object *textfield = jbox_get_textfield((t_object *)x);
		if(textfield){
			object_attr_setchar(textfield, gensym("editwhenunlocked"), 1);
			textfield_set_editonclick(textfield, 0);
			textfield_set_textmargins(textfield, 3, 3, 3, 3);
			textfield_set_textcolor(textfield, &(x->text_color));
		}

 		jbox_ready((t_jbox *)x);

		omessage_gettext(x);
		return x;
	}
	return NULL;
}

int main(void){
	common_symbols_init();
	t_class *c = class_new("o.message", (method)omessage_new, (method)omessage_free, sizeof(t_omessage), 0L, A_GIMME, 0);
	alias("o.m");

	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; 
 	jbox_initclass(c, JBOX_TEXTFIELD | JBOX_FIXWIDTH | JBOX_FONTATTR); 
    
	class_addmethod(c, (method)omessage_paint, "paint", A_CANT, 0); 

	class_addmethod(c, (method)omessage_bang, "bang", 0);
	class_addmethod(c, (method)omessage_int, "int", A_LONG, 0);
	class_addmethod(c, (method)omessage_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)omessage_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)omessage_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)omessage_set, "set", A_GIMME, 0);
	class_addmethod(c, (method)omessage_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)omessage_doc, "doc", 0);
	class_addmethod(c, (method)stdinletinfo, "inletinfo", A_CANT, 0);
	//class_addmethod(c, (method)omessage_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)omessage_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)omessage_clear, "clear", 0);	

	class_addmethod(c, (method)omessage_key, "key", A_CANT, 0);
	class_addmethod(c, (method)omessage_keyfilter, "keyfilter", A_CANT, 0);
	class_addmethod(c, (method)omessage_enter, "enter", A_CANT, 0);
	class_addmethod(c, (method)omessage_select, "select", 0);

	class_addmethod(c, (method)omessage_mousedown, "mousedown", A_CANT, 0);
	class_addmethod(c, (method)omessage_mouseup, "mouseup", A_CANT, 0);


 	CLASS_ATTR_RGBA(c, "background_color", 0, t_omessage, background_color); 
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "background_color", 0, ".87 .87 .87 1."); 
 	CLASS_ATTR_STYLE_LABEL(c, "background_color", 0, "rgba", "Background Color"); 
	CLASS_ATTR_CATEGORY(c, "background_color", 0, "Color");

 	CLASS_ATTR_RGBA(c, "frame_color", 0, t_omessage, frame_color); 
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "frame_color", 0, "0. 0. 0. 1."); 
 	CLASS_ATTR_STYLE_LABEL(c, "frame_color", 0, "rgba", "Frame Color"); 
	CLASS_ATTR_CATEGORY(c, "frame_color", 0, "Color");

 	CLASS_ATTR_RGBA(c, "text_color", 0, t_omessage, text_color); 
 	CLASS_ATTR_DEFAULT_SAVE_PAINT(c, "text_color", 0, "0. 0. 0. 1."); 
 	CLASS_ATTR_STYLE_LABEL(c, "text_color", 0, "rgba", "Text Color"); 
	CLASS_ATTR_CATEGORY(c, "text_color", 0, "Color");

	CLASS_ATTR_DEFAULT(c, "rect", 0, "0. 0. 150., 18.");

	class_register(CLASS_BOX, c);
	omessage_class = c;

	ps_newline = gensym("\n");
	ps_FullPacket = gensym("FullPacket");

	ODOT_PRINT_VERSION;

	return 0;
}

