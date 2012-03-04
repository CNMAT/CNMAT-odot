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

#include "version.h"
#include "ext.h"
#include "version.c"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "osc.h"
#include "omax_util.h"

typedef struct _otimetag{
	t_object ob;
	void *outlet;
	t_symbol *op;
	t_symbol *as;
	char *timetag_msg;
	int timetag_msg_len;
	int timetag_msg_buf_len;
	t_critical lock;
} t_otimetag;


void *otimetag_class;

void otimetag_fullPacket(t_otimetag *x, long len, long ptr);
void otimetag_doFullPacket(t_otimetag *x, long len, long ptr, t_symbol *op, int timetag_msg_len, char *timetag_msg);
void otimetag_append_iso8601_msg(long len, char *ptr, long newlen, char *newptr, long iso8601len, char *iso8601, int timetag_msg_len, char *timetag_msg);
void otimetag_output_bundle(t_otimetag *x, long len, char *buf);
void otimetag_bang(t_otimetag *x);
void otimetag_anything(t_otimetag *x, t_symbol *msg, short argc, t_atom *argv);
void otimetag_free(t_otimetag *x);
void otimetag_assist(t_otimetag *x, void *b, long m, long a, char *s);
void *otimetag_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err otimetag_notify(t_otimetag *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_symbol *ps_FullPacket, *ps_encode, *ps_decode, *ps_record;

void otimetag_fullPacket(t_otimetag *x, long len, long ptr){
	otimetag_doFullPacket(x, len, ptr, x->op, x->timetag_msg_len, x->timetag_msg);
}

void otimetag_doFullPacket(t_otimetag *x, long len, long ptr, t_symbol *op, int timetag_msg_len, char *timetag_msg){
	if(op == ps_encode){
		/*
		t_osc_msg *m = NULL;
		osc_bundle_lookupAddress_s(len, (char *)ptr, "/osc/time/record", &m, 1);
		if(m){
			char cpy[len];
			memcpy(cpy, (char *)ptr, len);
			if(m->typetags[1] == 's'){
				// iso8601
				ntptime ntp;
				osc_timetag_iso8601_to_ntp(m->argv, &ntp);
				memcpy(cpy + 8, (char *)(&ntp), 8);
				otimetag_output_bundle(x, len, cpy);
			}else if(m->typetags[1] == 'H' || m->typetags[1] == 'X'){
				// ntp
				memcpy(cpy + 8, m->argv, 8);
				otimetag_output_bundle(x, len, cpy);
			}else{
				object_error((t_object *)x, "unrecognized type (%s) for timetag", m->typetags + 1);
				return;
			}
		}else{
			object_error((t_object *)x, "no message with address \"/osc/time/report\"");
			return;
		}
		*/
	}else if(op == ps_decode){
		uint32_t t1, t2;
		t1 = ntoh32(*((uint32_t *)(ptr + 8)));
		t2 = ntoh32(*((uint32_t *)(ptr + 12)));
		char iso8601[64];
		int iso8601len = 0;
		if(t1 == 0 && t2 == 1){
			iso8601[0] = 'Z';
			iso8601[1] = '\0';
			iso8601[2] = '\0';
			iso8601[3] = '\0';
			iso8601len = 4;
		}else{
			ntptime tt = (ntptime){t1, t2, 1, TIME_IMMEDIATE};
			memset(iso8601, '\0', 64);
			osc_timetag_ntp_to_iso8601(&tt, iso8601);
			iso8601len = strlen(iso8601);
			iso8601len++;
			while(iso8601len % 4){
				iso8601len++;
			}
		}
		long newlen = len + timetag_msg_len + iso8601len + 4;
		char buf[newlen];
		otimetag_append_iso8601_msg(len, (char *)ptr, newlen, buf, iso8601len, iso8601, timetag_msg_len, timetag_msg);
		otimetag_output_bundle(x, newlen, buf);
	}else if(op == ps_record){
		ntptime now;
		osc_timetag_now_to_ntp(&now);
		char iso8601[64];
		memset(iso8601, '\0', 64);
		osc_timetag_ntp_to_iso8601(&now, iso8601);
		int iso8601len = strlen(iso8601);
		iso8601len += 2;
		while(iso8601len % 4){
			iso8601len++;
		}
		long newlen = len + timetag_msg_len + iso8601len + 4;
		char buf[newlen];
		otimetag_append_iso8601_msg(len, (char *)ptr, newlen, buf, iso8601len, iso8601, timetag_msg_len, timetag_msg);
		otimetag_output_bundle(x, newlen, buf);
	}
}

void otimetag_append_iso8601_msg(long len, char *ptr, long newlen, char *newptr, long iso8601len, char *iso8601, int timetag_msg_len, char *timetag_msg){
	char *bufptr = newptr;
	memcpy(bufptr, (char *)ptr, len);
	bufptr += len;
	*((uint32_t *)bufptr) = hton32(timetag_msg_len + iso8601len);
	bufptr += 4;
	memcpy(bufptr, timetag_msg, timetag_msg_len);
	bufptr += timetag_msg_len;
	memcpy(bufptr, iso8601, iso8601len);
}

void otimetag_output_bundle(t_otimetag *x, long len, char *buf){
	t_atom out[2];
	atom_setlong(&(out[0]), len);
	atom_setlong(&(out[1]), (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void otimetag_bang(t_otimetag *x){
	int len = OSC_HEADER_SIZE;
	char buf[len];
	memset(buf, '\0', len);
	osc_bundle_setBundleID(buf);
	otimetag_doFullPacket(x, len, (long)buf, ps_record, x->timetag_msg_len, x->timetag_msg);
}

void otimetag_anything(t_otimetag *x, t_symbol *msg, short argc, t_atom *argv){
	if(!(msg->s_name[0] == '/')){
		object_error((t_object *)x, "the first argument should be an OSC address beginning with a \'/\'");
		return;
	}
	int len = omax_util_get_bundle_size_for_atoms(msg, argc, argv);
	char buf[len];
	memset(buf, '\0', len);
	osc_bundle_setBundleID(buf);
	omax_util_encode_atoms(buf + OSC_HEADER_SIZE, msg, argc, argv);
	otimetag_doFullPacket(x, len, (long)buf, ps_record, x->timetag_msg_len, x->timetag_msg);
}

void otimetag_as_set(t_otimetag *x, t_object *attr, int argc, t_atom *argv){
	critical_enter(x->lock);
	t_symbol *as = atom_getsym(argv);
	int len = strlen(as->s_name);
	char *ptr = x->timetag_msg;
	strncpy(ptr, as->s_name, len);
	ptr += len;
	*ptr++ = '\0';
	while((ptr - x->timetag_msg) % 4){
		*ptr++ = '\0';
	}
	memcpy(ptr, ",s\0\0", 4);
	ptr += 4;
	x->timetag_msg_len = ptr - x->timetag_msg;
	x->as = as;
	critical_exit(x->lock);
}

void otimetag_assist(t_otimetag *x, void *b, long m, long a, char *s){
	if (m == ASSIST_OUTLET)
		sprintf(s,"Probability distribution and arguments");
	else {
		switch (a) {	
		case 0:
			sprintf(s,"Random variate");
			break;
		}
	}
}

void otimetag_free(t_otimetag *x){
	critical_free(x->lock);
}

void *otimetag_new(t_symbol *msg, short argc, t_atom *argv){
	t_otimetag *x;
	if(x = (t_otimetag *)object_alloc(otimetag_class)){
		//object_attach_byptr_register(x, x, CLASS_BOX);
		x->outlet = outlet_new(x, NULL);
		x->op = ps_record;
		x->as = gensym("/osc/time/record");
		x->timetag_msg_buf_len = 128;
		x->timetag_msg = (char *)osc_mem_alloc(x->timetag_msg_buf_len);
		critical_new(&(x->lock));
		t_atom a;
		atom_setsym(&a, x->as);
		otimetag_as_set(x, NULL, 1, &a);
		attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.timetag", (method)otimetag_new, (method)otimetag_free, sizeof(t_otimetag), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)otimetag_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)otimetag_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)otimetag_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otimetag_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)otimetag_bang, "bang", 0);

	CLASS_ATTR_SYM(c, "op", 0, t_otimetag, op);
	CLASS_ATTR_SYM(c, "as", 0, t_otimetag, as);
	CLASS_ATTR_ACCESSORS(c, "as", NULL, otimetag_as_set);

	class_register(CLASS_BOX, c);
	otimetag_class = c;

	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	ps_encode = gensym("encode");
	ps_decode = gensym("decode");
	ps_record = gensym("record");
	version(0);
	return 0;
}


t_max_err otimetag_notify(t_otimetag *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
