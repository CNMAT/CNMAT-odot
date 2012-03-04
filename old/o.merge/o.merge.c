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
NAME: o.merge
DESCRIPTION: Merge 2 or more OSC bundles together
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

typedef struct _omerge{
	t_object ob;
	void *outlet;
	void **proxies;
	long inlet;
	int num_inlets;
	char **buffers;
	int *buffer_pos;
	int buffer_len;
} t_omerge;

void *omerge_class;

void omerge_fullPacket(t_omerge *x, long len, long ptr);
void omerge_anything(t_omerge *x, t_symbol *msg, short argc, t_atom *argv);
void omerge_free(t_omerge *x);
void omerge_assist(t_omerge *x, void *b, long m, long a, char *s);
void omerge_clear(t_omerge *x);
void *omerge_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_FullPacket;
void omerge_fullPacket(t_omerge *x, long len, long ptr){
	int inlet = proxy_getinlet((t_object *)x);
	if(len > x->buffer_len){
		error("o.merge: len is greater than the maximum buffer size of %d bytes", x->buffer_len);
		return;
	}

	memcpy(x->buffers[inlet], (char *)ptr, len);
	x->buffer_pos[inlet] = len;
	if(strncmp((char *)ptr, "#bundle\0", 8)){
		x->buffer_pos[inlet] = osc_util_bundle_naked_message(len, x->buffers[inlet], x->buffers[inlet]);
		if(x->buffer_pos[inlet] < 0){
			error("problem bundling naked message");
			return;
		}
	}

	// flatten any nested bundles
	x->buffer_pos[inlet] = osc_util_flatten(x->buffer_pos[inlet], x->buffers[inlet], x->buffers[inlet]);

	//memcpy(x->buffers[inlet], (char *)ptr, len);
	if(inlet != 0){
		return;
	}

	char buf[x->num_inlets * x->buffer_len];
	memset(buf, '\0', x->num_inlets * x->buffer_len);
	int bufpos = 0;
	if(x->buffer_pos[0] > 0){
		memcpy(buf, x->buffers[0], x->buffer_pos[0]);
		bufpos += x->buffer_pos[0];
	}
	int i;
	for(i = 1; i < x->num_inlets; i++){
		if(x->buffer_pos[i] > 0){
			memcpy(buf + bufpos, x->buffers[i] + 16, x->buffer_pos[i] - 16);
			bufpos += (x->buffer_pos[i] - 16);
		}
	}
	t_atom out[2];
	atom_setlong(&(out[0]), bufpos);
	atom_setlong(&(out[1]), (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void omerge_anything(t_omerge *x, t_symbol *msg, short argc, t_atom *argv){
}

void omerge_assist(t_omerge *x, void *b, long m, long a, char *s){
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

void omerge_clear(t_omerge *x){
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

void omerge_free(t_omerge *x){
}

void *omerge_new(t_symbol *msg, short argc, t_atom *argv){
	t_omerge *x;
	int i;
	if(x = (t_omerge *)object_alloc(omerge_class)){
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
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.merge", (method)omerge_new, (method)omerge_free, sizeof(t_omerge), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)omerge_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)omerge_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)omerge_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)omerge_clear, "clear", 0);
    
	CLASS_ATTR_LONG(c, "num_inlets", 0, t_omerge, num_inlets);
	CLASS_ATTR_LONG(c, "buffer_len", 0, t_omerge, buffer_len);

	class_register(CLASS_BOX, c);
	omerge_class = c;

	ps_FullPacket = gensym("FullPacket");
	common_symbols_init();
	return 0;
}
