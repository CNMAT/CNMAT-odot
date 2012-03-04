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
NAME: o.insert
DESCRIPTION: Insert something into an address pattern
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

#ifndef ODOT_BUFFER_LEN
#define ODOT_BUFFER_LEN 4096
#endif

typedef struct _oinsert{
	t_object ob;
	void *outlet;
	void **proxies;
	long inlet;
	/*
	int num_parts;
	char **address_parts;
	int *address_part_lens;
	int *operations;
	int *substitutions;
	int *backrefs;
	*/
	char *buffer;
	int buffer_pos;
	int buffer_len;
	char **argv;
	int argc;
	int *insertions;
	char **containers;
	int *container_lens;
	int num_containers;
} t_oinsert;

void *oinsert_class;

void oinsert_fullPacket(t_oinsert *x, long len, long ptr);
void oinsert_cbk(t_cmmjl_osc_message msg, void *v);
//void oinsert_do_insert(t_oinsert *x);
void oinsert_atom_tostring(t_atom *a, char *st);
void oinsert_anything(t_oinsert *x, t_symbol *msg, short argc, t_atom *argv);
void oinsert_float(t_oinsert *x, double f);
void oinsert_long(t_oinsert *x, long l);
void oinsert_free(t_oinsert *x);
void oinsert_assist(t_oinsert *x, void *b, long m, long a, char *s);
void *oinsert_new(t_symbol *msg, short argc, t_atom *argv);

void oinsert_fullPacket(t_oinsert *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	char cpy[len];
	memcpy(cpy, (char *)ptr, len);
	if(x->buffer_len < len){
		char *tmp = (char *)realloc(x->buffer, len * 2);
		if(tmp){
			x->buffer = tmp;
			x->buffer_len = len * 2;
		}else{
			object_error((t_object *)x, "ran out of memory trying to allocate %d bytes!", len * 2);
			return;
		}
		object_warn((t_object *)x, "buffer reallocation took place to accomidate an OSC packet of %d bytes.  Specify the buffer size with the @buffer_len attribute to prevent this from happening.", len);
	}
	memset(x->buffer, '\0', x->buffer_len);
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

	memcpy(x->buffer, cpy, 16);
	x->buffer_pos = 16;

	// extract the messages from the bundle
	cmmjl_osc_extract_messages(nn, cpy, true, oinsert_cbk, (void *)x);

	char buffer[x->buffer_pos];
	memcpy(buffer, x->buffer, x->buffer_pos * sizeof(char));

	int i;
	for(i = 0; i < x->buffer_pos; i++){
		post("%c (%x)", buffer[i], buffer[i]);
	}
	t_atom out[2];
	atom_setlong(&(out[0]), x->buffer_pos);
	atom_setlong(&(out[1]), (long)buffer);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void oinsert_cbk(t_cmmjl_osc_message msg, void *v){
	t_oinsert *x = (t_oinsert *)v;
	int i;
	int ret;
	int didmatch = 0;
	if(x->buffer_pos + msg.size > x->buffer_len){
		char *tmp = (char *)realloc(x->buffer, x->buffer_len * 2);
		if(tmp){
			x->buffer = tmp;
			x->buffer_len = x->buffer_len * 2;
		}else{
			object_error((t_object *)x, "ran out of memory trying to allocate %d bytes!", x->buffer_len * 2);
			return;
		}
		object_warn((t_object *)x, "buffer reallocation took place.  Specify the buffer size with the @buffer_len attribute to prevent this from happening.", x->buffer_len);
	}
	char buf[1024];
	memset(buf, '\0', 1024);
	char *bufptr = buf;
	int container = 0, input_container = 0;
	int address_len = strlen(msg.address);
	int num_input_containers = cmmjl_osc_get_tree_length(address_len, msg.address);
	char *input_containers[num_input_containers];
	int container_lens[num_input_containers];
	cmmjl_osc_address_to_array(address_len, msg.address, input_containers, container_lens);

	char buf1[256], buf2[256];
	post("num containers: %d", x->num_containers);
	for(i = 0; i < x->num_containers; i++){
		post("i = %d", i);
		if(x->insertions[i] < 0){
			memcpy(buf1, x->containers[i] - 1, x->container_lens[i] + 1);
			buf1[x->container_lens[i] + 1] = '\0';
			memcpy(buf2, input_containers[input_container] - 1, container_lens[input_container] + 1);
			buf2[container_lens[input_container] + 1] = '\0';
			if((*(input_containers[input_container]) == '*' && *(x->containers[i]) == '*') || (ret = cmmjl_osc_match(x, buf1, buf2)) == -1){
				*bufptr++ = '/';
				memcpy(bufptr, input_containers[input_container], container_lens[input_container]);
				bufptr += container_lens[input_container];
			}else{
				memcpy(x->buffer + x->buffer_pos, msg.address, msg.size);
				x->buffer_pos += msg.size;
				post("returning");
				return;
			}
			input_container++;
		}else{
			post("copying %d, %d, %s", i, x->insertions[i], x->argv[x->insertions[i]]);
			*bufptr++ = '/';
			int len = strlen(x->argv[x->insertions[i]]);
			memcpy(bufptr, x->argv[x->insertions[i]], len);
			bufptr += len;
		}
	}
	bufptr++;
	while((bufptr - buf) % 4){
		bufptr++;
	}
	int buflen = bufptr - buf;
	int datalen = (msg.size - (msg.typetags - msg.address));
	*(long *)(x->buffer + x->buffer_pos) = htonl(buflen + datalen);
	x->buffer_pos += 4;
	memcpy(x->buffer + x->buffer_pos, buf, bufptr - buf);
	x->buffer_pos += bufptr - buf;
	memcpy(x->buffer + x->buffer_pos, msg.typetags, datalen);
	x->buffer_pos += datalen;

	//post("buf = %s", buf);
	/*
	t_oinsert *x = (t_oinsert *)v;
	int i;
	int ret;
	int didmatch = 0;
	if(x->buffer_pos + msg.size > x->buffer_len){
		realloc(x->buffer, x->buffer_len * 2);
	}
	char buf[1024];
	memset(buf, '\0', 1024);
	char *ptr = buf;
	char *msgptr = msg.address;
	int msglen = strlen(msg.address);
	for(i = 0; i < x->num_parts; i++){
		switch(x->operations[i]){
		case OINSERT_MATCH:
			post("%d MATCH", i);
			msgptr++; // slash
			*ptr++ = '/';
			while(*msgptr != '/' && ((msgptr - msg.address) < msglen)){
				*ptr++ = *msgptr++;
			}
			break;
		case OINSERT_INSERT:
			post("%d INSERT", i);
			*ptr++ = '/';
			post("%d", x->substitutions[i]);
			//post("would strcpy %s", x->argv[x->substitutions[i]]);
			strcpy(ptr, x->argv[x->substitutions[i]]);
			ptr += strlen(x->argv[x->substitutions[i]]);
			break;
		case OINSERT_BACKREF:
			post("%d BACKREF", i);
			msgptr++; // slash
			*ptr++ = '/';
			while(*msgptr != '/' && ((msgptr - msg.address) < msglen)){
				*ptr++ = *msgptr++;
			}
			break;
		}
	}
	post("buf = %s", buf);
	*/
	/*
	t_oinsert *x = (t_oinsert *)v;
	int i;
	int ret;
	int didmatch = 0;
	if(x->buffer_pos + msg.size > x->buffer_len){
		realloc(x->buffer, x->buffer_len * 2);
	}
	int len = strlen(x->address);
	char buf[len];
	strcpy(buf, x->address);
	if(buf[len - 1] == '/'){
		buf[len - 1] = '\0';
	}

	if((ret = cmmjl_osc_match(x, msg.address, buf)) == -1){
		x->buffer_pos += cmmjl_osc_rename(x->buffer, x->buffer_len, x->buffer_pos, &msg, x->address_out);
	}else{
		*((long *)(x->buffer + x->buffer_pos)) = htonl(msg.size);
		x->buffer_pos += 4;
		memcpy(x->buffer + x->buffer_pos, msg.address, msg.size);
		x->buffer_pos += msg.size;
	}
	*/
}

/*
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
*/

void oinsert_atom_tostring(t_atom *a, char *st){
	switch(a->a_type){
	case A_LONG:
		sprintf(st, "%ld", a->a_w.w_long);
		break;
	case A_FLOAT:
		sprintf(st, "%f", a->a_w.w_float);
		break;
	case A_SYM:
		//post("sym: %s", a->a_w.w_sym->s_name);
		strcpy(st, a->a_w.w_sym->s_name);
		break;
	}
}

void oinsert_anything(t_oinsert *x, t_symbol *msg, short argc, t_atom *argv){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	if(msg){
		strcpy(x->argv[inlet], msg->s_name);
	}else if(argv){
		oinsert_atom_tostring(argv, x->argv[inlet]);
	}
}

void oinsert_float(t_oinsert *x, double f){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	sprintf(x->argv[inlet], "%f", f);
}

void oinsert_int(t_oinsert *x, long l){
	int inlet = proxy_getinlet((t_object *)x);
	inlet--;
	sprintf(x->argv[inlet], "%ld", l);
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
		x->buffer_len = ODOT_BUFFER_LEN;
		x->buffer_pos = 0;
		x->outlet = outlet_new(x, "FullPacket");
		int i;
		x->proxies = (void **)calloc(argc - 1, sizeof(void *));

		int len = strlen(address->s_name);
		x->num_containers = cmmjl_osc_get_tree_length(len, address->s_name);
		x->containers = (char **)calloc(x->num_containers, sizeof(char *));
		x->container_lens = (int *)malloc(x->num_containers * sizeof(int));
		cmmjl_osc_address_to_array(len, address->s_name, x->containers, x->container_lens);
		x->insertions = (int *)malloc(x->num_containers * sizeof(int)); // we'll need at least this many
		int num_insertions = 0;
		for(i = 0; i < x->num_containers; i++){
			if(*(x->containers[i]) == '$'){
				char var[x->container_lens[i]];
				memcpy(var, x->containers[i] + 1, x->container_lens[i] - 1);
				var[x->container_lens[i] - 1] = '\0';
				x->insertions[i] = atoi(var) - 1;
				num_insertions++;
			}else{
				x->insertions[i] = -1;
			}
		}

		x->argv = (char **)calloc(num_insertions, sizeof(char *));
		for(i = 0; i < num_insertions; i++){
			x->argv[i] = (char *)calloc(256, sizeof(char));
			if((i + 1) < argc){
				oinsert_atom_tostring(argv + i + 1, x->argv[i]);
			}else{
				memset(x->argv[i], '\0', 256);
			}
			x->proxies[i] = proxy_new((t_object *)x, argc - i, &(x->inlet));
		}

		attr_args_process(x, argc, argv);
		x->buffer = (char *)calloc(x->buffer_len, sizeof(char));
		return x;
	}
		   	
	return NULL;
}

/*
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
		int i;
		x->proxies = (void **)calloc(argc - 1, sizeof(void *));
		for(i = 0; i < argc - 1; i++){
			x->proxies[i] = proxy_new((t_object *)x, argc - i, &(x->inlet));
		}
		int len = strlen(address->s_name);
		x->num_parts = cmmjl_osc_get_tree_length(len, address->s_name);
		x->address_parts = (char **)calloc(x->num_parts, sizeof(char *));
		x->address_part_lens = (int *)calloc(x->num_parts, sizeof(int));
		x->operations = (int *)calloc(x->num_parts, sizeof(int));
		x->substitutions = (int *)calloc(x->num_parts, sizeof(int));
		x->backrefs = (int *)calloc(argc - 1, sizeof(int));
		cmmjl_osc_address_to_array(len, address->s_name, x->address_parts, x->address_part_lens);

		for(i = 1; i < argc; i++){
			x->backrefs[i - 1] = -1;
			if(argv[i].a_type == A_SYM){
				t_symbol *s = argv[i].a_w.w_sym;
				char *schar = s->s_name;
				int slen = strlen(schar);
				if(slen > 1){

					if(*schar == '(' && schar[1] == '$'){
						char atoibuf[slen - 2];
						memcpy(atoibuf, schar + 2, slen - 3);
						atoibuf[slen - 3] = '\0';
						x->backrefs[i - 1] = atoi(atoibuf) - 1;
						post("backref: %d %d", i - 1, x->backrefs[i - 1]);
					}
				}
			}
		}

		for(i = 0; i < x->num_parts; i++){
			if(*(x->address_parts[i]) == '$'){
				char atoibuf[x->address_part_lens[i]];
				memcpy(atoibuf, x->address_parts[i] + 1, x->address_part_lens[i] - 1);
				int sub = atoi(atoibuf) - 1;
				x->substitutions[i] = sub;
				int j;
				x->operations[i] = OINSERT_INSERT;
				for(j = 0; j < argc - 1; j++){
					post("%d, %d %d", i, sub, x->backrefs[j]);
					if(sub == x->backrefs[j]){
						x->operations[i] = OINSERT_BACKREF;
					}
				}
			}else{
				x->operations[i] = OINSERT_MATCH;
			}
		}

		x->argv = (char **)calloc(argc - 1, sizeof(char *));
		for(i = 0; i < argc - 1; i++){
			x->argv[i] = (char *)calloc(128, sizeof(char));
			oinsert_atom_tostring(argv + i + 1, x->argv[i]);
		}
		return x;
	}
		   	
	return NULL;
}
*/

int main(void){
	t_class *c = class_new("o.insert", (method)oinsert_new, (method)oinsert_free, sizeof(t_oinsert), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)oinsert_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oinsert_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)oinsert_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oinsert_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)oinsert_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)oinsert_int, "int", A_LONG, 0);

	CLASS_ATTR_LONG(c, "buffer_len", 0, t_oinsert, buffer_len);
    
	class_register(CLASS_BOX, c);
	oinsert_class = c;

	common_symbols_init();
	return 0;
}
