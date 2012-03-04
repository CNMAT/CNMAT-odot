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
NAME: o.union
DESCRIPTION: Create a bundle with all of the elements contained in 2 or more bundles
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
#include "ext_hashtab.h"
#include "cmmjl/cmmjl.h"
#include "cmmjl/cmmjl_osc.h"

typedef struct _ounion{
	t_object ob;
	void *outlet;
	void **proxies;
	long inlet;
	int num_inlets;
	char **buffers;
	int *buffer_pos;
	int buffer_len;
	t_hashtab *hashtab;
} t_ounion;

void *ounion_class;

void ounion_fullPacket(t_ounion *x, long len, long p);
void ounion_cbk(t_cmmjl_osc_message msg, void *v);
void ounion_anything(t_ounion *x, t_symbol *msg, short argc, t_atom *argv);
void ounion_free(t_ounion *x);
void ounion_assist(t_ounion *x, void *b, long m, long a, char *s);
void ounion_clear(t_ounion *x);
void *ounion_new(t_symbol *msg, short argc, t_atom *argv);

void ounion_fullPacket(t_ounion *x, long len, long p){
	int inlet = proxy_getinlet((t_object *)x);
	if(len > x->buffer_len){
		error("o.merge: len is greater than the maximum buffer size of %d bytes", x->buffer_len);
		return;
	}

	memcpy(x->buffers[inlet], (char *)p, len);
	x->buffer_pos[inlet] = len;
	if(strncmp((char *)p, "#bundle\0", 8)){
		x->buffer_pos[inlet] = cmmjl_osc_bundle_naked_message(len, x->buffers[inlet], x->buffers[inlet]);
		if(x->buffer_pos[inlet] < 0){
			error("problem bundling naked message");
			return;
		}
	}

	// flatten any nested bundles
	x->buffer_pos[inlet] = cmmjl_osc_flatten(x->buffer_pos[inlet], x->buffers[inlet], x->buffers[inlet]);

	//memcpy(x->buffers[inlet], (char *)ptr, len);
	if(inlet != 0){
		return;
	}

	char buf[x->num_inlets * x->buffer_len];
	memcpy(buf, (char *)p, 16);
	int bufpos = 16;
	int i;
	hashtab_clear(x->hashtab);
	for(i = x->num_inlets - 1; i >= 0; i--){
		if(x->buffer_pos[i] == 0){
			continue;
		}
		char *ptr = x->buffers[i];
		ptr += 16;
		while((ptr - x->buffers[i]) <  x->buffer_pos[i]){
			int size = ntohl(*((long *)ptr));
			hashtab_store(x->hashtab, gensym(ptr + 4), (t_object *)ptr);
			ptr += (size + 4);
		}
	}
	long kc;
	t_symbol **k;
	hashtab_getkeys(x->hashtab, &kc, &k);
	for(i = 0; i < kc; i++){
		char *ptr;
		hashtab_lookup(x->hashtab, k[i], (t_object **)(&ptr));
		int size = ntohl(*((long *)ptr)) + 4;
		memcpy(buf + bufpos, ptr, size);
		bufpos += size;
	}
	t_atom out[2];
	atom_setlong(&(out[0]), bufpos);
	atom_setlong(&(out[1]), (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void ounion_anything(t_ounion *x, t_symbol *msg, short argc, t_atom *argv){
}

void ounion_assist(t_ounion *x, void *b, long m, long a, char *s){
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

void ounion_clear(t_ounion *x){
	int inlet = proxy_getinlet((t_object *)x);
	if(inlet == 0){
		int i;
		for(i = 1; i < x->num_inlets; i++){
			memset(x->buffers[i], '\0', x->buffer_len);
			x->buffer_pos[i] = 0;
		}
	}else{
		memset(x->buffers[inlet], '\0', x->buffer_len);
		x->buffer_pos[inlet] = 0;
	}
}

void ounion_free(t_ounion *x){
	int i;
	for(i = 0; i < x->num_inlets - 1; i++){
		object_free(x->proxies[i]);
	}
	for(i = 0; i < x->num_inlets; i++){
		if(x->buffers[i]){
			free(x->buffers[i]);
		}
	}
	free(x->buffers);
	free(x->buffer_pos);
	object_free(x->hashtab);
}

void *ounion_new(t_symbol *msg, short argc, t_atom *argv){
	t_ounion *x;
	int i;
	if(x = (t_ounion *)object_alloc(ounion_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, "FullPacket");
		x->num_inlets = 2;
		if(argc){
			if((*argv).a_type == A_LONG){
				x->num_inlets = (*argv).a_w.w_long;
			}
		}
		x->buffer_len = 4096;
		attr_args_process(x, argc, argv);
		x->proxies = (void **)calloc(x->num_inlets - 1, sizeof(void *));
		x->buffers = (char **)calloc(x->num_inlets, sizeof(char *));
		x->buffer_pos = (int *)calloc(x->num_inlets, sizeof(char *));
		int i;
		for(i = 0; i < x->num_inlets - 1; i++){
			x->proxies[i] = proxy_new((t_object *)x, x->num_inlets - i - 1, &(x->inlet));
		}
		for(i = 0; i < x->num_inlets; i++){
			x->buffers[i] = (char *)calloc(x->buffer_len, sizeof(char));
		}
		x->hashtab = hashtab_new(1021); // prime number--we don't want a rehash...
		hashtab_flags(x->hashtab, OBJ_FLAG_DATA);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.union", (method)ounion_new, (method)ounion_free, sizeof(t_ounion), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)ounion_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)ounion_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)ounion_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ounion_clear, "clear", 0);
    
	CLASS_ATTR_LONG(c, "num_inlets", 0, t_ounion, num_inlets);
	CLASS_ATTR_LONG(c, "buffer_len", 0, t_ounion, buffer_len);

	class_register(CLASS_BOX, c);
	ounion_class = c;

	common_symbols_init();
	return 0;
}
