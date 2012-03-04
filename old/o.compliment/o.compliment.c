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
NAME: o.compliment
DESCRIPTION: Create a bundle with all of the from bundle 2 that are not contained in bundle 1
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

typedef struct _ocompliment{
	t_object ob;
	void *outlet;
	void *proxy;
	long inlet;
	char *buffers[2];
	int buffer_pos[2];
	int buffer_len;
	t_hashtab *hashtab;
} t_ocompliment;

void *ocompliment_class;

void ocompliment_fullPacket(t_ocompliment *x, long len, long p);
void ocompliment_cbk(t_cmmjl_osc_message msg, void *v);
void ocompliment_anything(t_ocompliment *x, t_symbol *msg, short argc, t_atom *argv);
void ocompliment_free(t_ocompliment *x);
void ocompliment_assist(t_ocompliment *x, void *b, long m, long a, char *s);
void ocompliment_clear(t_ocompliment *x);
void *ocompliment_new(t_symbol *msg, short argc, t_atom *argv);

void ocompliment_fullPacket(t_ocompliment *x, long len, long p){
	int inlet = proxy_getinlet((t_object *)x);
	if(len > x->buffer_len){
		error("o.compliment: len is greater than the maximum buffer size of %d bytes", x->buffer_len);
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

	hashtab_clear(x->hashtab);
	char *ptr = x->buffers[1];
	ptr += 16;
	while((ptr - x->buffers[1]) < x->buffer_pos[1]){
		int size = ntohl(*((long *)ptr));
		hashtab_store(x->hashtab, gensym(ptr + 4), (t_object *)ptr);
		ptr += (size + 4);
	}

	char buf[x->buffer_len];
	char *bufptr = buf;
	memset(buf, '\0', x->buffer_len);
	memcpy(bufptr, (char *)p, 16);
	bufptr += 16;
	ptr = x->buffers[0];
	ptr += 16;
	while((ptr - x->buffers[0]) < x->buffer_pos[0]){
		int size = ntohl(*((long *)ptr));
		t_object *o = NULL;
		hashtab_lookup(x->hashtab, gensym(ptr + 4), &o);
		if(!o){
			memcpy(bufptr, ptr, size + 4);
			bufptr += (size + 4);
		}
		ptr += (size + 4);
	}

	t_atom out[2];
	atom_setlong(&(out[0]), bufptr - buf);
	atom_setlong(&(out[1]), (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void ocompliment_anything(t_ocompliment *x, t_symbol *msg, short argc, t_atom *argv){
}

void ocompliment_assist(t_ocompliment *x, void *b, long m, long a, char *s){
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

void ocompliment_clear(t_ocompliment *x){
	memset(x->buffers[1], '\0', x->buffer_len);
	x->buffer_pos[1] = 0;
}

void ocompliment_free(t_ocompliment *x){
	int i;
	object_free(x->proxy);
	if(x->buffers[0]){
		free(x->buffers[0]);
	}

	free(x->buffers);
	free(x->buffer_pos);
	object_free(x->hashtab);
}

void *ocompliment_new(t_symbol *msg, short argc, t_atom *argv){
	t_ocompliment *x;
	int i;
	if(x = (t_ocompliment *)object_alloc(ocompliment_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, "FullPacket");

		x->buffer_len = 4096;
		x->buffer_pos[0] = x->buffer_pos[1] = 0;
		attr_args_process(x, argc, argv);

		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		x->buffers[0] = (char *)calloc(x->buffer_len, sizeof(char));
		x->buffers[1] = (char *)calloc(x->buffer_len, sizeof(char));

		x->hashtab = hashtab_new(1021); // prime number--we don't want a rehash...
		hashtab_flags(x->hashtab, OBJ_FLAG_DATA);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.compliment", (method)ocompliment_new, (method)ocompliment_free, sizeof(t_ocompliment), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)ocompliment_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)ocompliment_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)ocompliment_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ocompliment_clear, "clear", 0);
    
	CLASS_ATTR_LONG(c, "buffer_len", 0, t_ocompliment, buffer_len);

	class_register(CLASS_BOX, c);
	ocompliment_class = c;

	common_symbols_init();
	return 0;
}
