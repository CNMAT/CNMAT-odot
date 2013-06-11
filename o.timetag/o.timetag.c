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
NAME: o.timetag
DESCRIPTION: Manipulate the timetag of an OSC bundle
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009-11
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
VERSION 1.0: Completely revised to work with new odot objects and libs
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.timetag"
#define OMAX_DOC_SHORT_DESC "Bind a timetag to an address"
#define OMAX_DOC_LONG_DESC "o.timetag binds the current time to a user-specified address."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet with a timestamp bound to an address."}
#define OMAX_DOC_SEEALSO (char *[]){"o.expr"}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif
#include "osc.h"
#include "osc_timetag.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _otimetag{
	t_object ob;
	void *outlet;
	long msglen;
	char *msg;
	t_symbol *address;
	t_critical lock;

} t_otimetag;


void *otimetag_class;

void otimetag_fullPacket(t_otimetag *x, t_symbol *msg, int argc, t_atom *argv);
void otimetag_doFullPacket(t_otimetag *x, long len, char *ptr);
void otimetag_bang(t_otimetag *x);
void otimetag_anything(t_otimetag *x, t_symbol *msg, short argc, t_atom *argv);
void otimetag_putCurrentTimeInMessage(t_otimetag *x, long len, char *copy);
void otimetag_makemsg(t_otimetag *x, char *address);
void otimetag_set(t_otimetag *x, t_symbol *msg, int argc, t_atom *argv);
void otimetag_free(t_otimetag *x);
void otimetag_assist(t_otimetag *x, void *b, long io, long num, char *buf);
void *otimetag_new(t_symbol *msg, short argc, t_atom *argv);
//t_max_err otimetag_notify(t_otimetag *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_symbol *ps_FullPacket;

void otimetag_fullPacket(t_otimetag *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	otimetag_doFullPacket(x, len, ptr);
}

void otimetag_doFullPacket(t_otimetag *x,
			   long len,
			   char *ptr)
{
	t_symbol *address;
	critical_enter(x->lock);
	address = x->address;
	long msglen;
	msglen = x->msglen;
	char msg[msglen];
	memcpy(msg, x->msg, msglen);
	critical_exit(x->lock);
	otimetag_putCurrentTimeInMessage(x, msglen, msg);

	int res = 0;
	osc_bundle_s_addressExists(len, ptr, address->s_name, 1, &res);
	if(res){
		long copylen = len;
		char *copy = (char *)osc_mem_alloc(len);
		memcpy(copy, ptr, len);
		t_osc_msg_s *newmsg = osc_message_s_alloc(), *oldmsg = NULL;
		osc_message_s_initMsg(newmsg);
		osc_message_s_wrap(newmsg, msg);
		t_osc_array *msg_ar = NULL;
		osc_bundle_s_lookupAddress(len, copy, address->s_name, &msg_ar, 1);
		oldmsg = osc_array_get(msg_ar, 0);
		osc_bundle_s_replaceMessage(&copylen, &copylen, &copy, oldmsg, newmsg);
		omax_util_outletOSC(x->outlet, copylen, copy);
		osc_mem_free(copy);
		osc_message_s_free(newmsg);
		osc_array_free(msg_ar);
	}else{
		long newlen = len + msglen;
		char buf[newlen];
		memcpy(buf, ptr, len);
		memcpy(buf + len, msg, msglen);
		omax_util_outletOSC(x->outlet, newlen, buf);
	}
}

void otimetag_bang(t_otimetag *x)
{
	critical_enter(x->lock);
	long msglen = x->msglen;
	long bndllen = msglen + OSC_HEADER_SIZE;
	char buf[bndllen];
	memcpy(buf + OSC_HEADER_SIZE, x->msg, msglen);
	critical_exit(x->lock);
	memcpy(buf, OSC_EMPTY_HEADER, OSC_HEADER_SIZE);

	otimetag_putCurrentTimeInMessage(x, msglen, buf + OSC_HEADER_SIZE);
	omax_util_outletOSC(x->outlet, bndllen, buf);
}

void otimetag_anything(t_otimetag *x, t_symbol *selector, short argc, t_atom *argv)
{
	t_osc_msg_u *msg = NULL;
	t_symbol *address_sym = NULL;
	long osc_argc = argc;
	t_atom *osc_argv = argv;
	if(selector){
		if(selector->s_name[0] == '/'){
			address_sym = selector;
		}
	}
	if(!address_sym){
		if(argc != 0){
			if(atom_gettype(argv) != A_SYM){
				object_error((t_object *)x, "first argument must be an OSC address");
				return;
			}
			address_sym = atom_getsym(argv);
			if(address_sym->s_name[0] != '/'){
				object_error((t_object *)x, "first argument must be an OSC address");
				return;
			}
			osc_argc = argc - 1;
			osc_argv = argv + 1;
		}else{
			object_error((t_object *)x, "first argument must be an OSC address");
			return;
		}
	}
	omax_util_maxAtomsToOSCMsg_u(&msg, address_sym, osc_argc, osc_argv);
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	osc_bundle_u_addMsg(bndl, msg);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl, &len, &buf);
	otimetag_doFullPacket(x, len, buf);
	if(buf){
		osc_mem_free(buf);
	}
	osc_bundle_u_free(bndl);
}

void otimetag_set(t_otimetag *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(argc == 0){
		object_error((t_object *)x, "missing argument (OSC address)");
		return;
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "argument must be a symbol");
		return;
	}
	t_symbol *address = atom_getsym(argv);
	if(!(address->s_name)){
		object_error((t_object *)x, "invalid argument");
		return;
	}
	// this should be a call to something like osc_error_validateAddress(address)
	if(*(address->s_name) != '/'){
		object_error((t_object *)x, "argument is not a valid OSC address");
		return;
	}
	critical_enter(x->lock);
	x->address = address;
	otimetag_makemsg(x, address->s_name);
	critical_exit(x->lock);
}

void otimetag_putCurrentTimeInMessage(t_otimetag *x, long len, char *copy)
{
	t_osc_timetag t = osc_timetag_now();
	char *p = copy + (len - OSC_TIMETAG_SIZEOF);
	memcpy(p, (char *)&t, OSC_TIMETAG_SIZEOF);
}

void otimetag_makemsg(t_otimetag *x, char *address)
{
	t_osc_msg_u *m = osc_message_u_alloc();
	osc_message_u_initMsg(m);
	osc_message_u_setAddress(m, address);
	t_osc_atom_u *a = osc_atom_u_alloc();
	t_osc_timetag t = osc_timetag_now();
	osc_atom_u_setTimetag(a, t);
	osc_message_u_appendAtom(m, a);
	long len = 0;
	char *buf = NULL;
	char *oldbuf;
	osc_message_u_serialize(m, &len, &buf);
	critical_enter(x->lock);
	oldbuf = x->msg;
	x->msglen = len;
	x->msg = buf;
	critical_exit(x->lock);
	if(oldbuf){
		osc_mem_free(oldbuf);
	}
}


void otimetag_doc(t_otimetag *x)
{
	omax_doc_outletDoc(x->outlet);
}

void otimetag_free(t_otimetag *x)
{
	critical_free(x->lock);
}


void *otimetag_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otimetag *x;
	if((x = (t_otimetag *)object_alloc(otimetag_class))){
		x->msg = NULL;
		x->msglen = 0;
		if(argc == 0){
			object_error((t_object *)x, "missing argument (OSC address)");
			return NULL;
		}
		if(atom_gettype(argv) != A_SYM){
			object_error((t_object *)x, "argument must be a symbol");
			return NULL;
		}
		x->address = atom_getsym(argv);
		char *address = x->address->s_name;
		if(!address){
			object_error((t_object *)x, "invalid argument");
			return NULL;
		}
		// this should be a call to something like osc_error_validateAddress(address)
		if(*address != '/'){
			object_error((t_object *)x, "argument is not a valid OSC address");
			return NULL;
		}
        
		x->outlet = outlet_new((t_object *)x, NULL);
		critical_new(&(x->lock));
		otimetag_makemsg(x, address);
	}
    
	return(x);
}
#ifdef OMAX_PD_VERSION

int otimetag_setup(void)
{
	t_class *c = class_new(gensym("otimetag"), (t_newmethod)otimetag_new, (t_method)otimetag_free, sizeof(t_otimetag), 0L, A_GIMME, 0);
    
	class_addmethod(c, (t_method)otimetag_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)otimetag_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)otimetag_bang, gensym("bang"), 0);
	class_addmethod(c, (t_method)otimetag_set, gensym("set"), A_GIMME, 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	otimetag_class = c;
    
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#else

void otimetag_assist(t_otimetag *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_otimetag, x, otimetag_fullPacket);


int main(void)
{
	t_class *c = class_new("o.timetag", (method)otimetag_new, (method)otimetag_free, sizeof(t_otimetag), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)otimetag_fullPacket, "FullPacket", A_GIMME, 0);
	//class_addmethod(c, (method)otimetag_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)otimetag_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otimetag_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)otimetag_bang, "bang", 0);
	class_addmethod(c, (method)otimetag_set, "set", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)otimetag_doc, "doc", 0);

	if(omax_dict_resolveDictStubs()){
		//class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_SYM, 0);
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	class_register(CLASS_BOX, c);
	otimetag_class = c;

	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

/*
t_max_err otimetag_notify(t_otimetag *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
#endif
