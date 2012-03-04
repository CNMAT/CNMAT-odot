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
NAME: o.filter
DESCRIPTION: Filter addresses out of a bundle
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
#include "osc_util.h"
#include "omax_util.h"

typedef struct _ofilter{
	t_object ob;
	void *outlets[3];
	void *proxy;
	long inlet;
	char *buffer[2];
	int buffer_len;
	int buffer_pos[2];
	t_osc_msg msg;
	t_atom *argv;
	long argc;
} t_ofilter;

void *ofilter_class;

void ofilter_fullPacket(t_ofilter *x, long len, long ptr);
void ofilter_cbk(t_osc_msg msg, void *v);
void ofilter_int(t_ofilter *x, long l);
void ofilter_float(t_ofilter *x, double f);
void ofilter_anything(t_ofilter *x, t_symbol *msg, short argc, t_atom *argv);
void ofilter_list(t_ofilter *x, t_symbol *msg, short argc, t_atom *argv);
void ofilter_free(t_ofilter *x);
void ofilter_assist(t_ofilter *x, void *b, long m, long a, char *s);
void *ofilter_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err ofilter_notify(t_ofilter *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_symbol *ps_FullPacket;

void ofilter_fullPacket(t_ofilter *x, long len, long ptr){
	if(proxy_getinlet((t_object *)x) == 1){
		return;
	}
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

	memset(x->buffer[0], '\0', x->buffer_len);
	memset(x->buffer[1], '\0', x->buffer_len);

	memcpy(x->buffer[0], cpy, 16);
	x->buffer_pos[0] = 16;
	memcpy(x->buffer[1], cpy, 16);
	x->buffer_pos[1] = 16;

	// extract the messages from the bundle
	osc_util_parseBundleWithCallback(nn, cpy, ofilter_cbk, (void *)x);

	t_atom out[2];
	atom_setlong(out, x->buffer_pos[1]);
	atom_setlong(out + 1, (long)x->buffer[1]);
	outlet_anything(x->outlets[1], ps_FullPacket, 2, out);

	atom_setlong(out, x->buffer_pos[0]);
	atom_setlong(out + 1, (long)x->buffer[0]);
	outlet_anything(x->outlets[0], ps_FullPacket, 2, out);

	/*
	int i;
	for(i = 0; i < x->buffer_pos[0]; i++){
		post("%d %c 0x%x", i, x->buffer[0][i], x->buffer[0][i]);
	}
	*/
}

void ofilter_cbk(t_osc_msg msg, void *v){
	t_ofilter *x = (t_ofilter *)v;
	x->msg = msg;
	t_atom atoms[msg.argc];
	//cmmjl_osc_get_data_atoms(&msg, atoms);
	long len = msg.argc;
	omax_util_oscMsg2MaxAtoms(&msg, &len, atoms);
	x->argc = 0;
	outlet_anything(x->outlets[2], gensym(msg.address), msg.argc, atoms + 1);
	if(x->argc){
		if(!strcmp(msg.address, atom_getsym(x->argv)->s_name)){
			//x->buffer_pos[0] += cmmjl_osc_add_to_bundle(x->buffer_len, x->buffer[0] + x->buffer_pos[0], &msg);
			*((uint32 *)(x->buffer[0] + x->buffer_pos[0])) = hton32(msg.size);
			x->buffer_pos[0] += 4;
			memcpy(x->buffer[0] + x->buffer_pos[0], msg.address, msg.size);
			x->buffer_pos[0] += msg.size;
			return;
		}
	}
	//x->buffer_pos[1] += cmmjl_osc_add_to_bundle(x->buffer_len, x->buffer[1] + x->buffer_pos[1], &msg);
	*((uint32 *)(x->buffer[1] + x->buffer_pos[1])) = hton32(msg.size);
	x->buffer_pos[1] += 4;
	memcpy(x->buffer[1] + x->buffer_pos[1], msg.address, msg.size);
	x->buffer_pos[1] += msg.size;
}

void ofilter_int(t_ofilter *x, long l){
}

void ofilter_float(t_ofilter *x, double f){
}

void ofilter_anything(t_ofilter *x, t_symbol *msg, short argc, t_atom *argv){
	atom_setsym(x->argv, msg);
	memcpy(x->argv + 1, argv, argc * sizeof(t_atom));
	x->argc = argc + 1;

	/*
	if(msg){
		t_atom a[argc + 1];
		atom_setsym(a, msg);
		memcpy(a + 1, argv, argc * sizeof(t_atom));
		ofilter_list(x, NULL, argc + 1, a);
	}else{
		ofilter_list(x, NULL, argc, argv);
	}
	*/
}

void ofilter_list(t_ofilter *x, t_symbol *msg, short argc, t_atom *argv){
	/*
	if(atom_gettype(argv) == A_SYM){
		t_symbol *address = atom_getsym(argv);
		if(*(address->s_name) == '/'){
			x->buffer_pos += cmmjl_osc_make_bundle_from_atoms(argc, argv, &(x->buffer_len), x->buffer + x->buffer_pos);
			return;
		}
	}
	t_symbol *address = gensym(x->msg.address);
	t_atom av[argc + 1];
	atom_setsym(av, address);
	memcpy(av + 1, argv, argc * sizeof(t_atom));
	x->buffer_pos += cmmjl_osc_make_bundle_from_atoms(argc + 1, av, &(x->buffer_len), x->buffer + x->buffer_pos);
	*/
}

void ofilter_assist(t_ofilter *x, void *b, long m, long a, char *s){
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

void ofilter_free(t_ofilter *x){
	object_free(x->proxy);
}

void *ofilter_new(t_symbol *msg, short argc, t_atom *argv){
	t_ofilter *x;
	if(x = (t_ofilter *)object_alloc(ofilter_class)){
		x->outlets[2] = outlet_new((t_object *)x, NULL);
		x->outlets[1] = outlet_new((t_object *)x, "FullPacket");
		x->outlets[0] = outlet_new((t_object *)x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		x->buffer[0] = (char *)calloc(4096, sizeof(char));
		x->buffer[1] = (char *)calloc(4096, sizeof(char));
		x->buffer_len = 4096;
		x->buffer_pos[0] = x->buffer_pos[1] = 0;
		x->argv = (t_atom *)malloc(1024 * sizeof(t_atom));
		x->argc = 0;

		//object_attach_byptr_register(x, x, CLASS_BOX);
		attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.filter", (method)ofilter_new, (method)ofilter_free, sizeof(t_ofilter), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)ofilter_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)ofilter_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)ofilter_assist, "assist", A_CANT, 0);
	//class_addmethod(c, (method)ofilter_int, "int", A_LONG, 0);
	//class_addmethod(c, (method)ofilter_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)ofilter_anything, "anything", A_GIMME, 0);
	//class_addmethod(c, (method)ofilter_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)ofilter_notify, "notify", A_CANT, 0);

	class_register(CLASS_BOX, c);
	ofilter_class = c;

	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	return 0;
}

t_max_err ofilter_notify(t_ofilter *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	/*
	t_symbol *attrname;
        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
		}
	}
	*/
	return MAX_ERR_NONE;
}
