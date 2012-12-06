/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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
  NAME: o.var
  DESCRIPTION: A variable to store OSC bundles
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2011
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  VERSION 1.0: using libo
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#ifdef UNION

#define OMAX_DOC_NAME "o.union"
#define OMAX_DOC_SHORT_DESC "Output a bundle containing the union of all messages between two bundles."
#define OMAX_DOC_LONG_DESC "o.union takes a bundle in the left and right inlets and takes the union of their addresses and outputs the result.  Messages with duplicate addresses are discarded with the most recent message (the one that came in the left inlet) taking precedence."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet.", "OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC Packet containing the union of the two packets."}
#define OMAX_DOC_SEEALSO (char *[]){"o.difference", "o.intersection"}

#elif defined INTERSECTION

#define OMAX_DOC_NAME "o.intersection"
#define OMAX_DOC_SHORT_DESC "Output a bundle containing the intersection of messages between two bundles."
#define OMAX_DOC_LONG_DESC "o.intersection takes two bundles and forms a new bundle that contains the OSC messages from the bundle received in the left inlet whose addresses are also present in the bundle received in the right inlet."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet.", "OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC Packet containing the intersection of the two packets."}
#define OMAX_DOC_SEEALSO (char *[]){"o.difference", "o.union"}

#elif defined DIFFERENCE

#define OMAX_DOC_NAME "o.difference"
#define OMAX_DOC_SHORT_DESC "Output a bundle containing the difference between two bundles."
#define OMAX_DOC_LONG_DESC "o.difference takes two bundles and forms a new bundle that contains the messages with addresses that are not common to both bundles"
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet.", "OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC Packet containing the difference of the two packets."}
#define OMAX_DOC_SEEALSO (char *[]){"o.union", "o.intersection"}

#else

#define OMAX_DOC_NAME "o.var"
#define OMAX_DOC_SHORT_DESC "Store a bundle and bang it out later."
#define OMAX_DOC_LONG_DESC "o.var copies an OSC packet and stores it for later use.  Since FullPacket messages are references to data stored in memory, objects wishing to store a packet must make a copy of it rather than just save the FullPacket message.  Use o.var or o.message to store a packet, not zl reg or any other normal Max object."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet will be stored and sent out immediately.  Bang to trigger output.", "OSC packet to be stored (no output)."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Stored OSC packet."}

#endif

#include "../odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "omax_util.h"
#include "omax_doc.h"

typedef struct _ovar{
	t_object ob;
	void *outlet;
	void *proxy;
	long inlet;
	long len;
	char *bndl;
	long buflen;
	t_critical lock;
	char emptybndl[OSC_HEADER_SIZE];
} t_ovar;

void *ovar_class;

void ovar_clear(t_ovar *x);
void ovar_anything(t_ovar *x, t_symbol *msg, int argc, t_atom *argv);

void ovar_doFullPacket(t_ovar *x, long len, long ptr, long inlet)
{
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(inlet == 1){
		if(len > 0){
			critical_enter(x->lock);
			if(len > x->buflen){
				x->bndl = osc_mem_resize(x->bndl, len);
				if(!(x->bndl)){
					object_error((t_object *)x, "ran out of memory!\n");
					critical_exit(x->lock);
					return;
				}
				x->buflen = len;
			}
			memcpy(x->bndl, (char *)ptr, len);
			x->len = len;
			critical_exit(x->lock);
		}
	}else{
#if (defined UNION || defined INTERSECTION || defined DIFFERENCE)
		critical_enter(x->lock);
		long copylen = x->len;
		char copy[copylen];
		memcpy(copy, x->bndl, copylen);
		critical_exit(x->lock);
		long bndllen = 0;
		char *bndl = NULL;
#ifdef UNION
		osc_bundle_s_union(len, (char *)ptr, copylen, copy, &bndllen, &bndl);
#elif defined INTERSECTION
		osc_bundle_s_intersection(len, (char *)ptr, copylen, copy, &bndllen, &bndl);
#elif defined DIFFERENCE
		osc_bundle_s_difference(len, (char *)ptr, copylen, copy, &bndllen, &bndl);
#endif
		omax_util_outletOSC(x->outlet, bndllen, bndl);
		if(bndl){
			osc_mem_free(bndl);
		}
#else // o.var
		if(len > 0){
			critical_enter(x->lock);
			if(len > x->buflen){
				x->bndl = osc_mem_resize(x->bndl, len);
				if(!(x->bndl)){
					object_error((t_object *)x, "ran out of memory!\n");
					critical_exit(x->lock);
					return;
				}
				x->buflen = len;
			}
			memcpy(x->bndl, (char *)ptr, len);
			x->len = len;
			critical_exit(x->lock);
		}
		omax_util_outletOSC(x->outlet, len, (char *)ptr);
#endif
	}
}

//void ovar_fullPacket(t_ovar *x, long len, long ptr)
void ovar_fullPacket(t_ovar *x, t_symbol *msg, int argc, t_atom *argv)
{
	OSC_GET_LEN_AND_PTR
	int inlet = proxy_getinlet((t_object *)x);
	ovar_doFullPacket(x, len, ptr, inlet);
}

void ovar_clear(t_ovar *x)
{
	critical_enter(x->lock);
	x->len = 0;
	critical_exit(x->lock);
}

void ovar_anything(t_ovar *x, t_symbol *msg, int argc, t_atom *argv)
{
	t_symbol *address = NULL;
	if(msg){
		if(*(msg->s_name) != '/'){
			object_error((t_object *)x, "OSC address must begin with a '/'");
			return;
		}
		address = msg;
	}else{
		if(atom_gettype(argv) == A_SYM){
			if(*(atom_getsym(argv)->s_name) != '/'){
				object_error((t_object *)x, "OSC address must begin with a '/'");
				return;
			}
			address = atom_getsym(argv);
			argv++;
			argc--;
		}
	}
	if(!address){
		object_error((t_object *)x, "no OSC address found");
		return;
	}


	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	t_osc_msg_u *msg_u = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, address, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		return;
	}
	osc_bundle_u_addMsg(bndl_u, msg_u);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &buf);
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
	}
	ovar_doFullPacket(x, len, (long)buf, proxy_getinlet((t_object *)x));
}

void ovar_bang(t_ovar *x)
{
	int inlet = proxy_getinlet((t_object *)x);
	if(inlet == 1){
		return;
	}
#if (defined UNION || defined INTERSECTION || defined DIFFERENCE)
	ovar_doFullPacket(x, OSC_HEADER_SIZE, (long)x->emptybndl, inlet);
#else
	if(x->len){
		critical_enter(x->lock);
		long len = x->len;
		char bndl[len];
		memcpy(bndl, x->bndl, len);
		critical_exit(x->lock);
		omax_util_outletOSC(x->outlet, len, bndl);
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, x->emptybndl);
	}
#endif
}

OMAX_UTIL_DICTIONARY(t_ovar, x, ovar_fullPacket);

void ovar_doc(t_ovar *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ovar_assist(t_ovar *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void ovar_free(t_ovar *x)
{	
	object_free(x->proxy);
	if(x->bndl){
		osc_mem_free(x->bndl);
	}
	critical_free(x->lock);
}

void *ovar_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ovar *x;
	if((x = (t_ovar *)object_alloc(ovar_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		critical_new(&(x->lock));
		x->len = 0;
		x->buflen = 0;
		x->bndl = NULL;
		memset(x->emptybndl, '\0', OSC_HEADER_SIZE);
		osc_bundle_s_setBundleID(x->emptybndl);

#if !defined UNION && !defined INTERSECTION && !defined DIFFERENCE
		int nargs = attr_args_offset(argc, argv);
		if(nargs){
			if(atom_gettype(argv) == A_SYM){
				if(osc_error_validateAddress(atom_getsym(argv)->s_name)){
					object_error((t_object *)x, "arguments must begin with a valid OSC address");
					return NULL;
				}
				t_symbol *address = atom_getsym(argv);


				t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
				t_osc_msg_u *msg_u = NULL;
				t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, address, argc - 1, argv + 1);
				if(e){
					object_error((t_object *)x, "%s", osc_error_string(e));
					return NULL;
				}
				osc_bundle_u_addMsg(bndl_u, msg_u);
				x->buflen = 0;
				x->bndl = NULL;
				osc_bundle_u_serialize(bndl_u, &(x->buflen), &(x->bndl));
				x->len = x->buflen;
				if(bndl_u){
					osc_bundle_u_free(bndl_u);
				}
			}else{
				object_error((t_object *)x, "arguments must begin with a valid OSC address");
				return NULL;
			}
		}
#endif
	}
		   	
	return x;
}

int main(void){
#ifdef UNION
	t_class *c = class_new("o.union", (method)ovar_new, (method)ovar_free, sizeof(t_ovar), 0L, A_GIMME, 0);
#elif defined INTERSECTION
	t_class *c = class_new("o.intersection", (method)ovar_new, (method)ovar_free, sizeof(t_ovar), 0L, A_GIMME, 0);
#elif defined DIFFERENCE
	t_class *c = class_new("o.difference", (method)ovar_new, (method)ovar_free, sizeof(t_ovar), 0L, A_GIMME, 0);
#else
	t_class *c = class_new("o.var", (method)ovar_new, (method)ovar_free, sizeof(t_ovar), 0L, A_GIMME, 0);
#endif
	//class_addmethod(c, (method)ovar_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)ovar_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ovar_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ovar_doc, "doc", 0);
	class_addmethod(c, (method)ovar_bang, "bang", 0);
	class_addmethod(c, (method)ovar_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_util_resolveDictStubs()){
		class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_GIMME, 0);
	}


	class_addmethod(c, (method)ovar_clear, "clear", 0);

	class_register(CLASS_BOX, c);
	ovar_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}

