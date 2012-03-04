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
NAME: o.test
DESCRIPTION: Test the contents of an OSC packet functionally
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#include "version.h"
#include "ext.h"
#include "version.c"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "omax_util.h"
#include "osc_util.h"

typedef struct _otest{
	t_object ob;
	void *outlets[3];
	void *proxy;
	long inlet;
	char *buffers[2];
	int buffer_len;
	int buffer_pos[2];
	t_osc_msg msg;
	int split_bundle;
	int failure;
	t_symbol *test;
	int (*test_fp)(double, double);
	t_atom arg;
} t_otest;

void *otest_class;

void otest_fullPacket(t_otest *x, long len, long ptr);
void otest_cbk(t_osc_msg msg, void *v);
void otest_int(t_otest *x, long l);
void dotest_int(t_otest *x, long l);

int otest_lt(double f1, double f2);
int otest_gt(double f1, double f2);
int otest_lte(double f1, double f2);
int otest_gte(double f1, double f2);
int otest_eq(double f1, double f2);
int otest_nlt(double f1, double f2);
int otest_ngt(double f1, double f2);
int otest_nlte(double f1, double f2);
int otest_ngte(double f1, double f2);
int otest_neq(double f1, double f2);

void otest_anything(t_otest *x, t_symbol *msg, short argc, t_atom *argv);
void otest_free(t_otest *x);
void otest_assist(t_otest *x, void *b, long m, long a, char *s);
void *otest_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err otest_notify(t_otest *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_symbol *ps_FullPacket;

void otest_fullPacket(t_otest *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	char cpy[len];
	memcpy(cpy, (char *)ptr, len);
	long nn = len;

	// if the OSC packet contains a single message, turn it into a bundle
	if(strncmp(cpy, "#bundle\0", 8)){
		nn = osc_util_bundle_naked_message(len, cpy, cpy);
		if(nn < 0){
			error("problem bundling naked message");
		}
	}

	// flatten any nested bundles
	nn = osc_util_flatten(nn, cpy, cpy);

	memcpy(x->buffers[0], cpy, 16);
	memcpy(x->buffers[1], cpy, 16);
	x->buffer_pos[0] = x->buffer_pos[1] = 16;

	x->failure = 0;

	// extract the messages from the bundle
	//cmmjl_osc_extract_messages(nn, cpy, true, otest_cbk, (void *)x);
	osc_util_parseBundleWithCallback(nn, cpy, otest_cbk, (void *)x);

	t_atom out[2];
	atom_setlong(&(out[0]), x->buffer_pos[0]);
	atom_setlong(&(out[1]), (long)x->buffers[0]);

	/*
	int i;
	for(i = 0; i < x->buffer_pos[0]; i++){
		post("%d %c 0x%x", i, x->buffers[0][i], x->buffers[0][i]);
	}
	*/

	if(x->split_bundle){
		if(x->failure){
			atom_setlong(&(out[0]), x->buffer_pos[1]);
			atom_setlong(&(out[1]), (long)x->buffers[1]);
			outlet_anything(x->outlets[1], ps_FullPacket, 2, out);
		}
		atom_setlong(&(out[0]), x->buffer_pos[0]);
		atom_setlong(&(out[1]), (long)x->buffers[0]);
		outlet_anything(x->outlets[0], ps_FullPacket, 2, out);
	}else{
		if(x->failure){
			outlet_anything(x->outlets[1], ps_FullPacket, 2, out);
		}else{
			outlet_anything(x->outlets[0], ps_FullPacket, 2, out);
		}
	}
}

void otest_cbk(t_osc_msg msg, void *v){
	t_otest *x = (t_otest *)v;
	x->msg = msg;
	t_atom atoms[msg.argc];
	long len = msg.argc;
	//cmmjl_osc_get_data_atoms(&msg, atoms);
	omax_util_oscMsg2MaxAtoms(&msg, &len, atoms);
	if(x->test_fp){
		int i;
		for(i = 1; i < msg.argc + 1; i++){
			dotest_int(x, x->test_fp(atom_getfloat(atoms + i), atom_getfloat(&(x->arg))));
		}

	}else{
		outlet_anything(x->outlets[2], gensym(msg.address), msg.argc, atoms + 1);
	}
}

void otest_int(t_otest *x, long l){
	if(proxy_getinlet((t_object *)x) == 0){
		return;
	}
	dotest_int(x, l);
}

void dotest_int(t_otest *x, long l){
	if(x->split_bundle){
		if(l == 0){
			x->failure++;
			memcpy(x->buffers[1] + x->buffer_pos[1], x->msg.address - 4, x->msg.size + 4);
			x->buffer_pos[1] += (x->msg.size + 4);
		}else{
			memcpy(x->buffers[0] + x->buffer_pos[0], x->msg.address - 4, x->msg.size + 4);
			x->buffer_pos[0] += (x->msg.size + 4);
		}
	}else{
		memcpy(x->buffers[0] + x->buffer_pos[0], x->msg.address - 4, x->msg.size + 4);
		x->buffer_pos[0] += (x->msg.size + 4);
		if(l == 0){
			x->failure++;
		}
	}

}

int otest_lt(double f1, double f2){
	return f1 < f2;
}

int otest_gt(double f1, double f2){
	return f1 > f2;
}

int otest_lte(double f1, double f2){
	return f1 <= f2;
}

int otest_gte(double f1, double f2){
	return f1 >= f2;
}

int otest_eq(double f1, double f2){
	return f1 == f2;
}

int otest_nlt(double f1, double f2){
	return !(f1 < f2);
}

int otest_ngt(double f1, double f2){
	return !(f1 > f2);
}

int otest_nlte(double f1, double f2){
	return !(f1 <= f2);
}

int otest_ngte(double f1, double f2){
	return !(f1 >= f2);
}

int otest_neq(double f1, double f2){
	return f1 != f2;
}

void otest_anything(t_otest *x, t_symbol *msg, short argc, t_atom *argv){

}

void otest_assist(t_otest *x, void *b, long m, long a, char *s){
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

void otest_free(t_otest *x){
	object_free(x->proxy);
}

void *otest_new(t_symbol *msg, short argc, t_atom *argv){
	t_otest *x;
	if(x = (t_otest *)object_alloc(otest_class)){
		x->outlets[2] = outlet_new((t_object *)x, NULL);
		x->outlets[1] = outlet_new((t_object *)x, "FullPacket");
		x->outlets[0] = outlet_new((t_object *)x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		x->buffers[0] = (char *)calloc(4096, sizeof(char));
		x->buffers[1] = (char *)calloc(4096, sizeof(char));
		x->buffer_len = 4096;
		x->buffer_pos[0] = x->buffer_pos[1] = 0;

		x->test = NULL;
		x->test_fp = NULL;

		x->split_bundle = 0;
		object_attach_byptr_register(x, x, CLASS_BOX);
		attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.test", (method)otest_new, (method)otest_free, sizeof(t_otest), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)otest_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)otest_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)otest_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otest_int, "int", A_LONG, 0);
	class_addmethod(c, (method)otest_notify, "notify", A_CANT, 0);

	CLASS_ATTR_LONG(c, "split_bundle", 0, t_otest, split_bundle);
	CLASS_ATTR_SYM(c, "test", 0, t_otest, test);
	CLASS_ATTR_ATOM(c, "arg", 0, t_otest, arg);

	class_register(CLASS_BOX, c);
	otest_class = c;

	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	return 0;
}

t_max_err otest_notify(t_otest *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
		if(attrname == gensym("test")){
			if(x->test == gensym("<")){
				x->test_fp = otest_lt;
			}else if(x->test == gensym(">")){
				x->test_fp = otest_gt;
			}else if(x->test == gensym("<=")){
				x->test_fp = otest_lte;
			}else if(x->test == gensym(">=")){
				x->test_fp = otest_gte;
			}else if(x->test == gensym("==")){
				x->test_fp = otest_eq;
			}else if(x->test == gensym("!<")){
				x->test_fp = otest_nlt;
			}else if(x->test == gensym("!>")){
				x->test_fp = otest_ngt;
			}else if(x->test == gensym("!<=")){
				x->test_fp = otest_nlte;
			}else if(x->test == gensym("!>=")){
				x->test_fp = otest_ngte;
			}else if(x->test == gensym("!=")){
				x->test_fp = otest_neq;
			}else{
				x->test_fp = NULL;
			}
		}
	}
	return MAX_ERR_NONE;
}
