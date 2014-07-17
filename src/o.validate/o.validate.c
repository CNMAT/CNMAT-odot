/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2013, The Regents of
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

*/


#define OMAX_DOC_NAME "o.validate"
#define OMAX_DOC_SHORT_DESC "Validates a bundle or message"
#define OMAX_DOC_LONG_DESC "Validates an OSC packet outputting it out the left outlet if it is valid and the middle if not."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Bundle if valid", "Bundle if invalid", "OSC bundle containing error messages"}
#define OMAX_DOC_SEEALSO  (char *[]){}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "omax_dict.h"
#endif
#include "osc.h"
#include "osc_mem.h"
#include "osc_serial.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_atom_u.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "o.h"


typedef struct _ovalidate{
	t_object ob;
	void *outletVal, *outletInval, *outletErr;
} t_ovalidate;

void *ovalidate_class;




void ovalidate_fullPacket(t_ovalidate *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	/*
	t_osc_err e = osc_error_bundleSanityCheck(len, ptr);
	if(e){
		t_osc_bndl_u *b = osc_bundle_u_alloc();

		t_osc_msg_u *merr = osc_message_u_alloc();
		osc_message_u_setAddress(merr, "/error/str");
		osc_message_u_appendString(merr, osc_error_string(e));
		osc_bundle_u_addMsg(b, merr);

		long l = 0;
		char *buf = NULL;
		osc_bundle_u_serialize(b, &l, &buf);
		if(buf){
			omax_util_outletOSC(x->outletErr, l, buf);
			omax_util_outletOSC(x->outletInval, len, ptr);
			osc_mem_free(buf);
		}
		return;
	}
	*/
	if(len % 4){
		char errstr[128];
		snprintf(errstr, 128, "%ld is not a multiple of 4 bytes", len);
		t_osc_bndl_u *b = osc_bundle_u_alloc();

		t_osc_msg_u *merr = osc_message_u_alloc();
		osc_message_u_setAddress(merr, "/error/str");
		osc_message_u_appendString(merr, errstr);
		osc_bundle_u_addMsg(b, merr);

		long l = 0;
		char *buf = NULL;
		osc_bundle_u_serialize(b, &l, &buf);
		if(buf){
			omax_util_outletOSC(x->outletErr, l, buf);
			omax_util_outletOSC(x->outletInval, len, ptr);
			osc_mem_free(buf);
		}
		return;
	}
	char *p = ptr;
	p += OSC_HEADER_SIZE;
	while((p - ptr) < (len - 4)){
		int i = ntoh32(*((int32_t *)p));
		if(i < 0){
			break;
		}
		p += i + 4;
	}
	if((p - ptr) != len){
		char errstr[128];
		snprintf(errstr, 128, "expected %ld bytes, but found %d", len, p - ptr);
		t_osc_bndl_u *b = osc_bundle_u_alloc();

		t_osc_msg_u *merr = osc_message_u_alloc();
		osc_message_u_setAddress(merr, "/error/str");
		osc_message_u_appendString(merr, errstr);
		osc_bundle_u_addMsg(b, merr);

		long l = 0;
		char *buf = NULL;
		osc_bundle_u_serialize(b, &l, &buf);
		if(buf){
			omax_util_outletOSC(x->outletErr, l, buf);
			omax_util_outletOSC(x->outletInval, len, ptr);
			osc_mem_free(buf);
		}
		return;
	}
	uint64_t state = OSC_SERIAL_INIT;
	for(int i = 0; i < len; i++){
		state = osc_serial_processByte(ptr[i], state);
		if(osc_serial_errorp(state)){
			char *errstr = osc_serial_errstr(state);
			t_osc_bndl_u *b = osc_bundle_u_alloc();

			t_osc_msg_u *merr = osc_message_u_alloc();
			osc_message_u_setAddress(merr, "/error/str");
			osc_message_u_appendString(merr, errstr);
			osc_bundle_u_addMsg(b, merr);

			t_osc_msg_u *mbytenum = osc_message_u_alloc();
			osc_message_u_setAddress(mbytenum, "/error/byte/num");
			osc_message_u_appendInt32(mbytenum, i);
			osc_bundle_u_addMsg(b, mbytenum);

			if(mbytenum < len){
				t_osc_msg_u *mbyteval = osc_message_u_alloc();
				osc_message_u_setAddress(mbyteval, "/error/byte/val");
				osc_message_u_appendInt32(mbyteval, ptr[i]);
				osc_bundle_u_addMsg(b, mbyteval);
			}

			long l = 0;
			char *buf = NULL;
			osc_bundle_u_serialize(b, &l, &buf);
			if(buf){
				omax_util_outletOSC(x->outletErr, l, buf);
				omax_util_outletOSC(x->outletInval, len, ptr);
				osc_mem_free(buf);
			}
			return;
		}
	}
	omax_util_outletOSC(x->outletVal, len, ptr);
}

void ovalidate_anything(t_ovalidate *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(msg == gensym("xosc-msgsize-bug")){
		// DON'T DO SHIT LIKE THIS---THIS ISN'T THE WILD FUCKING WEST
		long len = atom_getlong(argv + 1);
		char *ptr = (char *)atom_getlong(argv + 2);
		char *size = ptr + OSC_HEADER_SIZE;
		*((int32_t *)size) = hton32(100);
		ovalidate_fullPacket(x, atom_getsym(argv), argc - 1, argv + 1);
	}else{
		object_error((t_object *)x, "doesn't understand message %s", msg->s_name);
	}
}

void ovalidate_doc(t_ovalidate *x)
{
	omax_doc_outletDoc(x->outletVal);
}

#ifndef OMAX_PD_VERSION
OMAX_DICT_DICTIONARY(t_ovalidate, x, ovalidate_fullPacket);

void ovalidate_assist(t_ovalidate *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}
#endif

void ovalidate_free(t_ovalidate *x)
{
}

#ifdef OMAX_PD_VERSION
void *ovalidate_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ovalidate *x;
	if((x = (t_ovalidate *)pd_new(ovalidate_class))){
        x->outletVal = outlet_new((t_object *)x, gensym("FullPacket"));
        x->outletInval = outlet_new((t_object *)x, gensym("FullPacket"));
		x->outletErr = outlet_new((t_object *)x, gensym("FullPacket"));
	}
	return x;
}

int setup_o0x2evalidate(void)
{
	t_class *c = class_new(gensym("o.validate"), (t_newmethod)ovalidate_new, (t_method)ovalidate_free, sizeof(t_ovalidate), 0L, A_GIMME, 0);
	class_addmethod(c, (t_method)ovalidate_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)ovalidate_doc, gensym("doc"), 0);
	//class_addmethod(c, (method)ovalidate_bang, "bang", 0);
	class_addmethod(c, (t_method)ovalidate_anything, gensym("anything"), A_GIMME, 0);
    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	ovalidate_class = c;
        
	ODOT_PRINT_VERSION;
	return 0;
}

#else
void *ovalidate_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ovalidate *x;
	if((x = (t_ovalidate *)object_alloc(ovalidate_class))){
		x->outletErr = outlet_new((t_object *)x, "FullPacket");
		x->outletInval = outlet_new((t_object *)x, "FullPacket");
		x->outletVal = outlet_new((t_object *)x, "FullPacket");
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.validate", (method)ovalidate_new, (method)ovalidate_free, sizeof(t_ovalidate), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)ovalidate_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)ovalidate_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ovalidate_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ovalidate_doc, "doc", 0);
	//class_addmethod(c, (method)ovalidate_bang, "bang", 0);
	class_addmethod(c, (method)ovalidate_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	ovalidate_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
/*
t_max_err ovalidate_notify(t_ovalidate *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
#endif
