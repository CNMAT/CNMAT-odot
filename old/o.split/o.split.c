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
NAME: o.split
DESCRIPTION: Split the contents of an OSC bundle
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
#include "osc_match.h"

typedef struct _osplit{
	t_object ob;
	void *outlets[2];
	void *proxies[3];
	long inlet;
	char *buffer;
	int buffer_len;
	int buffer_pos;
	double min, max;
	int (*left_test)(double, double);
	int (*right_test)(double, double);
	int failure;
	int test_all_args;
	char **addresses;
	int num_addresses;
} t_osplit;

void *osplit_class;

void osplit_fullPacket(t_osplit *x, long len, long ptr);
void osplit_cbk(t_osc_msg msg, void *v);
int osplit_gt(double f1, double f2);
int osplit_gte(double f1, double f2);
int osplit_lt(double f1, double f2);
int osplit_lte(double f1, double f2);
void osplit_anything(t_osplit *x, t_symbol *msg, short argc, t_atom *argv);
void osplit_int(t_osplit *x, long l);
void osplit_float(t_osplit *x, double f);
void osplit_free(t_osplit *x);
void osplit_assist(t_osplit *x, void *b, long m, long a, char *s);
void *osplit_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_FullPacket;

void osplit_fullPacket(t_osplit *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	memcpy(x->buffer, (char *)ptr, len);
	x->buffer_pos = len;
	x->failure = 0;

	int nn = len;
	// if the OSC packet contains a single message, turn it into a bundle
	if(strncmp(x->buffer, "#bundle\0", 8)){
		nn = osc_util_bundle_naked_message(len, x->buffer, x->buffer);
		if(nn < 0){
			error("problem bundling naked message");
		}
	}

	// flatten any nested bundles
	nn = osc_util_flatten(nn, x->buffer, x->buffer);

	// extract the messages from the bundle
	//cmmjl_osc_extract_messages(nn, x->buffer, true, osplit_cbk, (void *)x);
	osc_util_parseBundleWithCallback(nn, x->buffer, osplit_cbk, (void *)x);

	t_atom out[2];
	atom_setlong(out, x->buffer_pos);
	atom_setlong(out + 1, (long)x->buffer);
	if(x->failure){
		outlet_anything(x->outlets[1], ps_FullPacket, 2, out);
	}else{
		outlet_anything(x->outlets[0], ps_FullPacket, 2, out);
	}

	/*
	int i; 
	post("x->bufferPos = %d", x->bufferPos);
	for(i = 0; i < x->bufferPos; i++){
		post("%d %x %c", i, x->buffer[i], x->buffer[i]);
	}
	*/

}

void osplit_cbk(t_osc_msg msg, void *v){
	t_osplit *x = (t_osplit *)v;
	int i;
	int matched = 0;
	for(i = 0; i < x->num_addresses; i++){
	//int ret = cmmjl_osc_match(x, msg.address, x->addresses[i]);
	//post("%s %s %d", msg.address, x->addresses[i], ret);
		int po, ao;
		int ret = osc_match(msg.address, x->addresses[i], &po, &ao);
		if(ret == -1){
			matched++;
		}
	}
	if(!matched && x->num_addresses > 0){
		return;
	}
	long len = msg.argc;
	t_atom a[msg.argc];
	omax_util_oscMsg2MaxAtoms(&msg, &len, a);
	int n = 1;
	post("test all args: %d, argc = %d", x->test_all_args, msg.argc);
	if(x->test_all_args){
		n = msg.argc;
	}
	post("n = %d", n);
	for(i = 1; i < n + 1; i++){
		post("%d, %f %f", i, atom_getfloat(a + i), x->min);
		if(!(x->left_test(atom_getfloat(a + i), x->min))){
			x->failure++;
		}
		if(!(x->right_test(atom_getfloat(a + i), x->max))){
			x->failure++;
		}
	}
	/*
	t_osc_atom a[msg.argc];
	cmmjl_osc_get_data(&msg, a);
	int n = 1;
	if(x->test_all_args){
		n = msg.argc;
	}
	for(i = 0; i < n; i++){
		if(!(x->left_test(cmmjl_osc_atom_getdouble(a + i), x->min))){
			x->failure++;
		}
		if(!(x->right_test(cmmjl_osc_atom_getdouble(a + i), x->max))){
			x->failure++;
		}
	}
	*/
}

int osplit_gt(double f1, double f2){
	post("%f > %f = %d", f1, f2, f1 > f2);
	return f1 > f2;
}

int osplit_gte(double f1, double f2){
	post("%f >= %f = %d", f1, f2, f1 >= f2);
	return f1 >= f2;
}

int osplit_lt(double f1, double f2){
	post("%f < %f = %d", f1, f2, f1 < f2);
	return f1 < f2;
}

int osplit_lte(double f1, double f2){
	post("%f <= %f = %d", f1, f2, f1 <= f2);
	return f1 <= f2;
}

void osplit_anything(t_osplit *x, t_symbol *msg, short argc, t_atom *argv){
	long inlet = proxy_getinlet((t_object *)x);
	if(msg){
		if(inlet == 1){
			if(*(msg->s_name) == '('){
				x->left_test = osplit_gt;
			}else if(*(msg->s_name) == '['){
				x->left_test = osplit_gte;
			}
		}else if(inlet == 2){
			if(*(msg->s_name) == ')'){
				x->right_test = osplit_lt;
			}else if(*(msg->s_name) == ']'){
				x->right_test = osplit_lte;
			}
		}
	}
}

void osplit_int(t_osplit *x, long l){
	switch(proxy_getinlet((t_object *)x)){
	case 1:
		x->min = (double)l;
		break;
	case 2:
		x->max = (double)l;
		break;
	}
}

void osplit_float(t_osplit *x, double f){
	switch(proxy_getinlet((t_object *)x)){
	case 1:
		x->min = f;
		break;
	case 2:
		x->max = f;
		break;
	}
}

void osplit_assist(t_osplit *x, void *b, long m, long a, char *s){
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

void osplit_free(t_osplit *x){

}

void *osplit_new(t_symbol *msg, short argc, t_atom *argv){
	t_osplit *x;
	int i;
	if(x = (t_osplit *)object_alloc(osplit_class)){
	        x->outlets[1] = outlet_new(x, "FullPacket");
	        x->outlets[0] = outlet_new(x, "FullPacket");
		x->proxies[1] = proxy_new((t_object *)x, 2, &(x->inlet));
		x->proxies[0] = proxy_new((t_object *)x, 1, &(x->inlet));

		x->buffer = (char *)calloc(4096, sizeof(char));
		x->buffer_len = 4096;
		x->buffer_pos = 0;

		x->num_addresses = 0;
		x->addresses = (char **)calloc(argc, sizeof(char *));
		for(i = 0; i < argc; i++){
			x->addresses[i] = (char *)calloc(128, sizeof(char *));
		}

		int argoffset = 0;
		while(atom_gettype(argv + x->num_addresses) == A_SYM){
			t_symbol *s = atom_getsym(argv + x->num_addresses);
			if(*(s->s_name) == '/'){
				strcpy(x->addresses[x->num_addresses], s->s_name);
				x->num_addresses++;
			}else{
				break;
			}
		}
		post("%d addresses", x->num_addresses);
		for(i = 0; i < x->num_addresses; i++){
			post("%d: %s", i, x->addresses[i]);
		}

		x->failure = 0;

		x->min = 0.;
		x->max = 1.;
		x->left_test = osplit_gte;
		x->right_test = osplit_lte;

		switch(argc - x->num_addresses){
		case 0:
			break;
		case 1:
			if(atom_gettype(argv) == A_SYM){
				error("o.split: error parsing arguments");
				return NULL;
			}
			x->max = atom_getfloat(argv + x->num_addresses);
			break;
		case 2:
			if(atom_gettype(argv + x->num_addresses) == A_SYM || atom_gettype(argv + x->num_addresses + 1) == A_SYM){
				error("o.split: error parsing arguments");
				return NULL;
			}
			x->min = atom_getfloat(argv + x->num_addresses);
			x->max = atom_getfloat(argv + x->num_addresses + 1);
			break;
		case 3:
			error("o.split: error parsing arguments");
			return NULL;
			break;
		case 4:
			if(atom_gettype(argv + x->num_addresses) != A_SYM || atom_gettype(argv + x->num_addresses + 1) == A_SYM || atom_gettype(argv + x->num_addresses + 2) == A_SYM || atom_gettype(argv + x->num_addresses + 3) != A_SYM){
				error("o.split: error parsing arguments");
				return NULL;
			}
			{
				// arg 1
				t_symbol *sym = atom_getsym(argv + x->num_addresses);
				if(*(sym->s_name) == '('){
					x->left_test = osplit_gt;
				}else if(*(sym->s_name) == '['){
					x->left_test = osplit_gte;
				}else{
					error("o.split: unrecognized 1st argument: %s", sym->s_name);
					return NULL;
				}

				// arg 4
				sym = atom_getsym(argv + x->num_addresses + 3);
				if(*(sym->s_name) == ')'){
					x->right_test = osplit_lt;
				}else if(*(sym->s_name) == ']'){
					x->right_test = osplit_lte;
				}else{
					error("o.split: unrecognized 4th argument: %s", sym->s_name);
					return NULL;
				}

				// arg 2
				x->min = atom_getfloat(argv + x->num_addresses + 1);
				// arg 3
				x->max = atom_getfloat(argv + x->num_addresses + 2);
			}
			break;
		default:

			break;
		}
		attr_args_process(x, argc, argv);
	}
		   	
	return x;
}

int main(void){
	t_class *c = class_new("o.split", (method)osplit_new, (method)osplit_free, sizeof(t_osplit), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)osplit_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)osplit_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)osplit_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)osplit_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)osplit_int, "int", A_LONG, 0);
	class_addmethod(c, (method)osplit_float, "float", A_FLOAT, 0);

	CLASS_ATTR_LONG(c, "testallargs", 0, t_osplit, test_all_args);
    
	class_register(CLASS_BOX, c);
	osplit_class = c;

	ps_FullPacket = gensym("FullPacket");

	common_symbols_init();
	return 0;
}
