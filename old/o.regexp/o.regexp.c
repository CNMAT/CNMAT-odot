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
NAME: o.regexp
DESCRIPTION: Perform regexp substitutions on an OSC address
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
#include "cmmjl/cmmjl.h"
#include "cmmjl/cmmjl_osc.h"
//#include "cmmjl/cmmjl_osc_obj.h"

typedef struct _oroute{
	t_object ob;
	void *outlet;
	char *address;
	char *address_out;
	void **proxy;
	long inlet;
	char *buffer;
	int bufferPos;
	int bufferLen;
	t_atom *argv;
	int argc;
	int *offsets;
} t_oinsert;

void *oinsert_class;

void oinsert_fullPacket(t_oinsert *x, long len, long ptr);
void oinsert_cbk(t_cmmjl_osc_message msg, void *v);
void oinsert_do_insert(t_oinsert *x);
void oinsert_anything(t_oinsert *x, t_symbol *msg, short argc, t_atom *argv);
void oinsert_float(t_oinsert *x, double f);
void oinsert_long(t_oinsert *x, long l);
void oinsert_free(t_oinsert *x);
void oinsert_assist(t_oinsert *x, void *b, long m, long a, char *s);
void *oinsert_new(t_symbol *msg, short argc, t_atom *argv);

void oinsert_fullPacket(t_oinsert *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	char cpy[len];
	char buffer[len * 2];
	memset(buffer, '\0', len * 2);
	x->buffer = buffer;
	x->bufferLen = len * 2;
	memcpy(cpy, (char *)ptr, len);
	long nn = len;

	// if the OSC packet contains a single message, turn it into a bundle
	if(strncmp(cpy, "#bundle\0", 8)){
		nn = cmmjl_osc_bundle_naked_message(len, cpy, cpy);
		if(nn < 0){
			error("problem bundling naked message");
		}
	}

	// flatten any nested bundles
	nn = cmmjl_osc_flatten(nn, cpy, cpy);

	memcpy(buffer, cpy, 16);
	x->bufferPos = 16;

	// extract the messages from the bundle
	cmmjl_osc_extract_messages(nn, cpy, true, oinsert_cbk, (void *)x);
	/*
	int i; 
	post("x->bufferPos = %d", x->bufferPos);
	for(i = 0; i < x->bufferPos; i++){
		post("%d %x %c", i, x->buffer[i], x->buffer[i]);
	}
	*/
	t_atom out[2];
	atom_setlong(&(out[0]), x->bufferPos);
	atom_setlong(&(out[1]), (long)buffer);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void oinsert_cbk(t_cmmjl_osc_message msg, void *v){
	t_oinsert *x = (t_oinsert *)v;
	int i;
	int ret;
	int didmatch = 0;
	if(x->bufferPos + msg.size > x->bufferLen){
		realloc(x->buffer, x->bufferLen * 2);
	}
	int len = strlen(x->address);
	char buf[len];
	strcpy(buf, x->address);
	if(buf[len - 1] == '/'){
		buf[len - 1] = '\0';
	}

	if((ret = cmmjl_osc_match(x, msg.address, buf)) == -1){
		x->bufferPos += cmmjl_osc_rename(x->buffer, x->bufferLen, x->bufferPos, &msg, x->address_out);
	}else{
		*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
		x->bufferPos += 4;
		memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
		x->bufferPos += msg.size;
	}
}

void oinsert_do_insert(t_oinsert *x){
	char buf[256];
	memset(buf, '\0', 256);
	char st[256];
	int i, j;
	int len;
	int pos = 0;

	for(i = 0; i < strlen(x->address) + 1; i++){
		for(j = 0; j < x->argc; j++){
			if(x->offsets[j] == i){
				switch(x->argv[j].a_type){
				case A_FLOAT:
					sprintf(st, "%f", x->argv[j].a_w.w_float);
					break;
				case A_LONG:
					sprintf(st, "%ld", x->argv[j].a_w.w_long);
					break;
				case A_SYM:
					sprintf(st, "%s", x->argv[j].a_w.w_sym->s_name);
					break;
				}
				len = strlen(st);
				memcpy(buf + pos, st, len);
				pos += len;
				buf[pos++] = '/';
			}
		}
		buf[pos++] = x->address[i];
	}

	len = strlen(buf);
	if(buf[len - 1] == '/'){
		buf[len - 1] = '\0';
	}
	strcpy(x->address_out, buf);
}

void oinsert_anything(t_oinsert *x, t_symbol *msg, short argc, t_atom *argv){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	if(msg){
		atom_setsym(x->argv + inlet, msg);
	}else if(argv){
		x->argv[inlet] = *argv;
	}
	oinsert_do_insert(x);
}

void oinsert_float(t_oinsert *x, double f){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	atom_setfloat(x->argv + inlet, f);
	oinsert_do_insert(x);
}

void oinsert_int(t_oinsert *x, long l){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	atom_setlong(x->argv + inlet, l);
	oinsert_do_insert(x);
}

void oinsert_assist(t_oinsert *x, void *b, long m, long a, char *s){
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

void oinsert_free(t_oinsert *x){

}

void *oinsert_new(t_symbol *msg, short argc, t_atom *argv){
	if(!argc){
		error("o.insert: you must specify an address pattern");
		return NULL;
	}
	t_symbol *address = atom_getsym(argv);
	if(!address){
		error("o.insert: you must specify an address pattern");
		return NULL;
	}
	if(address->s_name[0] != '/'){
		error("o.insert: %s is not a valid OSC address");
		return NULL;
	}
	t_oinsert *x;
	int i;
	if(x = (t_oinsert *)object_alloc(oinsert_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, "FullPacket");
		char *addressptr = address->s_name;
		int address_len = strlen(addressptr);
		x->address = (char *)calloc(256, sizeof(char));
		x->address_out = (char *)calloc(256, sizeof(char));
		x->argc = 0;
		for(i = 0; i < address_len; i++){
			if(addressptr[i] == '$'){
				x->argc++;
			}
		}
		x->proxy = (void **)malloc(x->argc * sizeof(void *));
		for(i = 0; i < x->argc; i++){
			x->proxy[i] = proxy_new((t_object *)x, x->argc - i, &(x->inlet));
			post("%d", x->argc - i);
		}
		x->argv = (t_atom *)malloc(x->argc * sizeof(t_atom));
		x->offsets = (int *)malloc(x->argc * sizeof(int));
		char buf[address_len];
		char *bufptr = buf;
		char a[16];
		for(i = 0; i < address_len; i++){
			if(addressptr[i] == '$'){
				int j = 0;
				int offset = bufptr - buf;
				i++;
				while(addressptr[i] != '/' && i < address_len){
					a[j++] = addressptr[i++];
				}
				a[j] = '\0';
				int varNum = atoi(a) - 1;
				if(varNum >= x->argc){
					error("o.insert: error parsing arguments");
					free(x->proxy);
					free(x->offsets);
					return NULL;
				}
				x->offsets[varNum] = offset;
			}else{
				*bufptr++ = addressptr[i];
				*bufptr = '\0';
			}
		}

		for(i = 1; i < argc; i++){
			x->argv[i - 1] = argv[i];
		}
		for(i = argc - 1; i < x->argc; i++){
			t_atom arg;
			atom_setsym(&arg, gensym(""));
			x->argv[i] = arg;
		}
		strcpy(x->address, buf);
		oinsert_do_insert(x);
		post("%s => %s", x->address, x->address_out);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.insert", (method)oinsert_new, (method)oinsert_free, sizeof(t_oinsert), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)oinsert_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oinsert_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)oinsert_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oinsert_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)oinsert_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)oinsert_int, "int", A_LONG, 0);
    
	class_register(CLASS_BOX, c);
	oinsert_class = c;

	common_symbols_init();
	return 0;
}
