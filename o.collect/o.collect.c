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
NAME: o.collect
DESCRIPTION: Collect OSC messages and bundles
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2011
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.collect"
#define OMAX_DOC_SHORT_DESC "Collect OSC messages to be bundled together"
#define OMAX_DOC_LONG_DESC "o.collect collects OSC and OSC-style Max messages to be bundled together and output on bang.  When the bundle is output, the internal buffer is cleared."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC messages to collect."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing all messages collected."}
#define OMAX_DOC_SEEALSO (char *[]){"zl group"}

#include <stdlib.h>
#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "omax_util.h"
#include "omax_doc.h"

typedef struct _ocoll{
	t_object ob;
	void *outlet;
	char *buffer;
	long buffer_len;
	long buffer_pos;
	t_critical lock;
} t_ocoll;

void *ocoll_class;


//void ocoll_fullPacket(t_ocoll *x, long len, long ptr)
void ocoll_fullPacket(t_ocoll *x, t_symbol *msg, int argc, t_atom *argv)
{
	OSC_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(len == OSC_HEADER_SIZE){
		// empty bundle
		return;
	}
	critical_enter(x->lock);
	if(x->buffer_pos + len > x->buffer_len){
		char *tmp = (char *)osc_mem_resize(x->buffer, x->buffer_pos + len);
		if(!tmp){
			object_error((t_object *)x, "Out of memory...sayonara max...");
			critical_exit(x->lock);
			return;
		}
		x->buffer = tmp;
		memset(x->buffer + x->buffer_pos, '\0', len);
		x->buffer_len = x->buffer_pos + len;
	}
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, (char *)ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		t_osc_msg_ar_s *match = NULL;
		osc_bundle_s_lookupAddress(x->buffer_pos, x->buffer, osc_message_s_getAddress(m), &match, 1);
		if(!match){
			long l = osc_message_s_getSize(m) + 4;
			memcpy(x->buffer + x->buffer_pos, osc_message_s_getPtr(m), l);
			x->buffer_pos += l;
		}else{
			// this function can resize its buffer, but we don't have to worry about that 
			// since we already resized it above to accommidate the entire bundle
			int i;
			for(i = 0; i < osc_message_array_s_getLen(match); i++){
				t_osc_msg_s *mm = osc_message_array_s_get(match, i);
				osc_bundle_s_replaceMessage(&(x->buffer_len),
							    &(x->buffer_pos),
							    &(x->buffer),
							    mm,
							    m);
			}
			osc_message_array_s_free(match);
		}
	}
	osc_bndl_it_s_destroy(it);
	critical_exit(x->lock);
}

void ocoll_anything(t_ocoll *x, t_symbol *msg, int argc, t_atom *argv){
	t_osc_bndl_u *bndl_u = osc_bundle_u_alloc();
	t_osc_msg_u *msg_u = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, msg, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		if(bndl_u){
			osc_bundle_u_free(bndl_u);
		}
		return;
	}
	osc_bundle_u_addMsg(bndl_u, msg_u);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl_u, &len, &buf);
	if(bndl_u){
		osc_bundle_u_free(bndl_u);
	}

	//ocoll_fullPacket(x, len, (long)buf);
	t_atom args[2];
	atom_setlong(args, len);
	atom_setlong(args + 1, (long)buf);
	ocoll_fullPacket(x, NULL, 2, args);
	if(buf){
		osc_mem_free(buf);
	}
}

void ocoll_bang(t_ocoll *x){
		critical_enter(x->lock);
		int len = x->buffer_pos;
		char outbuf[len];
		memcpy(outbuf, x->buffer, len);
		memset(x->buffer + OSC_HEADER_SIZE, '\0', len - OSC_HEADER_SIZE);
		x->buffer_pos = OSC_HEADER_SIZE;
		critical_exit(x->lock);
		omax_util_outletOSC(x->outlet, len, outbuf);
}

OMAX_UTIL_DICTIONARY(t_ocoll, x, ocoll_fullPacket);

void ocoll_clear(t_ocoll *x)
{
	critical_enter(x->lock);
	x->buffer_pos = OSC_HEADER_SIZE;
	memset(x->buffer + OSC_HEADER_SIZE, '\0', x->buffer_len - OSC_HEADER_SIZE);
	critical_exit(x->lock);
}

void ocoll_doc(t_ocoll *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ocoll_assist(t_ocoll *x, void *b, long io, long num, char *buf){
	omax_doc_assist(io, num, buf);
}

void ocoll_free(t_ocoll *x){
	if(x->buffer){
		free(x->buffer);
	}
	critical_free(x->lock);
}

void *ocoll_new(t_symbol *msg, short argc, t_atom *argv){
	t_ocoll *x;
	if((x = (t_ocoll *)object_alloc(ocoll_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		x->buffer_len = 1024;
		if(argc){
			if(atom_gettype(argv) == A_LONG){
				//x->buffer_len = atom_getlong(argv);
				object_error((t_object *)x, "o.collect no longer takes an argument to specify its internal buffer size.");
				object_error((t_object *)x, "The buffer will expand as necessary.");
			}
		}
		x->buffer = (char *)osc_mem_alloc(x->buffer_len * sizeof(char));
		memset(x->buffer, '\0', x->buffer_len);
		x->buffer_pos = OSC_HEADER_SIZE;
		osc_bundle_s_setBundleID(x->buffer);
		critical_new(&(x->lock));
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.collect", (method)ocoll_new, (method)ocoll_free, sizeof(t_ocoll), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)ocoll_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)ocoll_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ocoll_doc, "doc", 0);
	class_addmethod(c, (method)ocoll_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ocoll_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)ocoll_bang, "bang", 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_util_resolveDictStubs()){
		class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_GIMME, 0);
	}

	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	ocoll_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}

