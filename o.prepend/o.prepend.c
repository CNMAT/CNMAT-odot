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
NAME: o.prepend
DESCRIPTION: Prepend a string to the addresses in a bundle
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
version 1.0: Rewritten to only take one argument (the symbol to be prepended) which can be overridden by a symbol at the beginning of a mesage
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.prepend"
#define OMAX_DOC_SHORT_DESC "Prepend an OSC address to every OSC address in a bundle."
#define OMAX_DOC_LONG_DESC "o.prepend takes an OSC address as an argument and prepends it to every address in the bundle."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet with argument prepended."}
#define OMAX_DOC_SEEALSO (char *[]){"prepend"}

#include "../odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "omax_util.h"
#include "omax_doc.h"

typedef struct _oppnd{
	t_object ob;
	void *outlet;
	t_symbol *sym_to_prepend;
	int sym_to_prepend_len;
	char *buffer;
	int bufferLen;
	int bufferPos;
} t_oppnd;

struct context{
	char *buffer;
	int bufferLen;
	int bufferPos;
	t_symbol *sym_to_prepend;
	int sym_to_prepend_len;
};

void *oppnd_class;

void oppnd_doFullPacket(t_oppnd *x, long len, long ptr, t_symbol *sym_to_prepend, int sym_to_prepend_len);

t_symbol *ps_FullPacket;

//void oppnd_fullPacket(t_oppnd *x, long len, long ptr)
void oppnd_fullPacket(t_oppnd *x, t_symbol *msg, int argc, t_atom *argv)
{
	OSC_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(len == OSC_HEADER_SIZE){
		return;
	}
	oppnd_doFullPacket(x, len, ptr, x->sym_to_prepend, x->sym_to_prepend_len);
}

void oppnd_doFullPacket(t_oppnd *x, long len, long ptr, t_symbol *sym_to_prepend, int sym_to_prepend_len)
{
	if(!sym_to_prepend){
		omax_util_outletOSC(x->outlet, len, (char *)ptr);
		return;
	}
	int num_messages = 0;
	osc_bundle_s_getMsgCount(len, (char *)ptr, &num_messages);
	char buf[len + (num_messages * (sym_to_prepend_len + 4))]; // not exact, but more than enough
	char *bufptr = buf;
	memcpy(bufptr, (char *)ptr, OSC_HEADER_SIZE);
	bufptr += OSC_HEADER_SIZE;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, (char *)ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *msg = osc_bndl_it_s_next(it);
		int msg_address_len = strlen(osc_message_s_getAddress(msg));
		char *msg_address = osc_message_s_getAddress(msg);
		char new_address[sym_to_prepend_len + msg_address_len + 1];
		memcpy(new_address, sym_to_prepend->s_name, sym_to_prepend_len);
		memcpy(new_address + sym_to_prepend_len, msg_address, msg_address_len);
		new_address[sym_to_prepend_len + msg_address_len] = '\0';
		bufptr += osc_message_s_renameCopy(bufptr, msg, sym_to_prepend_len + msg_address_len, new_address);
		bufptr += 4;
	}
	osc_bndl_it_s_destroy(it);

	omax_util_outletOSC(x->outlet, bufptr - buf, buf);
}

void oppnd_set(t_oppnd *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(argc != 1){
		object_error((t_object *)x, "expected 1 argument but got %d", argc);
		return;
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "argument should be a symbol");
		return;
	}
	t_symbol *sym_to_prepend = atom_getsym(argv);
	x->sym_to_prepend = sym_to_prepend;
	x->sym_to_prepend_len = strlen(sym_to_prepend->s_name);
}

void oppnd_anything(t_oppnd *x, t_symbol *msg, short argc, t_atom *argv)
{
	if(!msg){
		object_error((t_object *)x, "message must be an OSC address");
		return;
	}
	t_symbol *address = msg, *sym_to_prepend = x->sym_to_prepend;
	if(atom_gettype(argv) == A_SYM){
		if(atom_getsym(argv) == ps_FullPacket){
			oppnd_doFullPacket(x, atom_getlong(argv + 1), atom_getlong(argv + 2), msg, strlen(msg->s_name));
			return;
		}else if(atom_getsym(argv)->s_name[0] == '/'){
			// msg and argv are both OSC addresses.  prepend msg to argv
			address = atom_getsym(argv);
			sym_to_prepend = msg;
			argc--;
			argv++;
		}

	}
	int address_len = 0, sym_to_prepend_len = 0;
	if(address){
		address_len = strlen(address->s_name);
	}
	if(sym_to_prepend){
		sym_to_prepend_len = strlen(sym_to_prepend->s_name);
	}
	char buf[address_len + sym_to_prepend_len];
	char address_string[address_len + 1];
	char sym_to_prepend_string[sym_to_prepend_len + 1];
	address_string[0] = '\0';
	sym_to_prepend_string[0] = '\0';
	if(address){
		strncpy(address_string, address->s_name, address_len);
		address_string[address_len] = '\0';
	}
	if(sym_to_prepend){
		strncpy(sym_to_prepend_string, sym_to_prepend->s_name, sym_to_prepend_len);
		sym_to_prepend_string[sym_to_prepend_len] = '\0';
	}
	sprintf(buf, "%s%s", sym_to_prepend_string, address_string);
	t_symbol *newaddress = gensym(buf);

	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	t_osc_msg_u *msg_u = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, newaddress, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		return;
	}
	osc_bundle_u_addMsg(bndl_u, msg_u);
	long len = 0;
	char *oscbuf = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &oscbuf);
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
	}
	omax_util_outletOSC(x->outlet, len, oscbuf);
}

OMAX_UTIL_DICTIONARY(t_oppnd, x, oppnd_fullPacket);

void oppnd_doc(t_oppnd *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oppnd_assist(t_oppnd *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oppnd_free(t_oppnd *x){
}

void *oppnd_new(t_symbol *msg, short argc, t_atom *argv){
	t_oppnd *x;
	if((x = (t_oppnd *)object_alloc(oppnd_class))){
		x->outlet = outlet_new(x, "FullPacket");
		x->sym_to_prepend = NULL;
		if(argc){
			t_symbol *sym = atom_getsym(argv);
			char *c = sym->s_name;
			int len = strlen(c);
			t_osc_err e = osc_error_validateAddress(c);
			if(e){
				if(len == 2 && c[0] == '#'){
					// this is ok
				}else{
					object_error((t_object *)x, "%s", osc_error_string(e));
					return NULL;
				}
			}
			x->sym_to_prepend = sym;
			x->sym_to_prepend_len = strlen(c);
		}
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.prepend", (method)oppnd_new, (method)oppnd_free, sizeof(t_oppnd), 0L, A_GIMME, 0);
    
	//class_addmethod(c, (method)oppnd_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oppnd_fullPacket, "FullPacket", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_util_resolveDictStubs()){
		class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_GIMME, 0);
	}

	class_addmethod(c, (method)oppnd_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oppnd_doc, "doc", 0);
	class_addmethod(c, (method)oppnd_anything, "anything", A_GIMME, 0);

	class_addmethod(c, (method)oppnd_set, "set", A_GIMME, 0);
    
	class_register(CLASS_BOX, c);
	oppnd_class = c;

	ps_FullPacket = gensym("FullPacket");
	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
