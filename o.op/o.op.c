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
NAME: o.op
DESCRIPTION: Perform operations on the contents of OSC packets
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
#include "osc_match.h"
#include "osc_util.h"
#include "omax_util.h"

typedef void (*t_oop_f)(t_osc_msg *msg, int argc, t_atom *argv);

typedef struct _oop{
	t_object ob;
	void *outlet;
	int numPatterns;
	t_symbol **patterns;
	t_symbol **outputAddresses;
	t_symbol **operations;
	t_oop_f *functions;
	t_atom **arguments;
	char *buffer;
	int bufferPos, bufferLen;
	int *numArgs;
} t_oop;

void *oop_class;

void oop_fullPacket(t_oop *x, long len, long ptr);
t_oop_f oop_getFunction(t_symbol *op);
void oop_cbk(t_osc_msg msg, void *v);
void oop_free(t_oop *x);
void oop_assist(t_oop *x, void *b, long m, long a, char *s);
void *oop_new(t_symbol *msg, short argc, t_atom *argv);


void oop_pass(t_osc_msg *msg, int argc, t_atom *argv);
void oop_plus(t_osc_msg *msg, int argc, t_atom *argv);
void oop_minus(t_osc_msg *msg, int argc, t_atom *argv);
void oop_times(t_osc_msg *msg, int argc, t_atom *argv);
void oop_div(t_osc_msg *msg, int argc, t_atom *argv);
void oop_mod(t_osc_msg *msg, int argc, t_atom *argv);
void oop_min(t_osc_msg *msg, int argc, t_atom *argv);
void oop_max(t_osc_msg *msg, int argc, t_atom *argv);
void oop_abs(t_osc_msg *msg, int argc, t_atom *argv);
void oop_avg(t_osc_msg *msg, int argc, t_atom *argv);
void oop_absdiff(t_osc_msg *msg, int argc, t_atom *argv);
void oop_fold(t_osc_msg *msg, int argc, t_atom *argv);
void oop_wrap(t_osc_msg *msg, int argc, t_atom *argv);
void oop_divFlip(t_osc_msg *msg, int argc, t_atom *argv);
void oop_minusFlip(t_osc_msg *msg, int argc, t_atom *argv);
void oop_modFlip(t_osc_msg *msg, int argc, t_atom *argv);

void oop_scale(t_osc_msg *msg, int argc, t_atom *argv);
void oop_clip(t_osc_msg *msg, int argc, t_atom *argv);
void oop_map(t_osc_msg *msg, int argc, t_atom *argv);


double oop_do_clip(double f, double min, double max);
double oop_do_scale(double f, double min_in, double max_in, double min_out, double max_out);

t_symbol *ps_FullPacket;

t_symbol *ps_pass, *ps_plus, *ps_minus, *ps_times, *ps_div, *ps_mod, *ps_min, *ps_max, *ps_abs, *ps_avg, *ps_absdiff, *ps_fold, *ps_wrap, *ps_divFlip, *ps_minusFlipp, *ps_modFlip, *ps_scale, *ps_clip, *ps_map;

void oop_fullPacket(t_oop *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	char cpy[len];
	memcpy(cpy, (char *)ptr, len);
	long nn = len;

	char buffer[len * 2];
	memset(buffer, '\0', len * 2);
	x->buffer = buffer;
	x->bufferPos = 0;
	x->bufferLen = len * 2;

	// if the OSC packet contains a single message, turn it into a bundle
	if(strncmp(cpy, "#bundle\0", 8)){
		nn = osc_util_bundle_naked_message(len, cpy, cpy);
		if(nn < 0){
			error("problem bundling naked message");
		}
	}

	// flatten any nested bundles
	nn = osc_util_flatten(nn, cpy, cpy);

	memcpy(buffer, cpy, 16);
	x->bufferPos = 16;

	//cmmjl_osc_extract_messages(nn, cpy, true, oop_cbk, (void *)x);
	osc_util_parseBundleWithCallback(nn, cpy, oop_cbk, (void *)x);

	/*
	int i;
	for(i = 0; i < x->bufferPos; i++){
		post("%d %x %c", i, x->buffer[i], x->buffer[i]);
	}
	*/

	t_atom out[2];
	atom_setlong(&(out[0]), x->bufferPos);
	atom_setlong(&(out[1]), (long)buffer);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void oop_cbk(t_osc_msg msg, void *v){
	t_oop *x = (t_oop *)v;
	int i;
	int didmatch = 0;
	for(i = 0; i < x->numPatterns; i++){
		int po, ao;
		int ret = osc_match(msg.address, x->patterns[i]->s_name, &po, &ao);
		if((ret & OSC_MATCH_ADDRESS_COMPLETE) && ((ret & OSC_MATCH_PATTERN_COMPLETE) || (msg.address[po] == '/'))){
			if(x->functions[i]){
				x->functions[i](&msg, x->numArgs[i], x->arguments[i]);
			}
			if(x->outputAddresses[i]){
				x->bufferPos += osc_util_rename(x->buffer, x->bufferLen, x->bufferPos, &msg, x->outputAddresses[i]->s_name);
			}else{
				*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
				x->bufferPos += 4;
				memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
				x->bufferPos += msg.size;
			}
			didmatch++;
		}else{

		}
	}
	if(didmatch == 0){
		*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
		x->bufferPos += 4;
		memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
		x->bufferPos += msg.size;
	}
	/*
	int ret;
	int didmatch = 0;

	if(x->bufferPos + msg.size > x->bufferLen){
		realloc(x->buffer, x->bufferLen * 2);
	}

	for(i = 0; i < x->numPatterns; i++){
		if((ret = cmmjl_osc_match(x, msg.address, x->patterns[i]->s_name)) == -1){// || !strcmp(msg.address, x->patterns[i]->s_name)){
			//post("%d %s matched %s", ret, msg.address, x->patterns[i]->s_name);
			if(x->functions[i]){
				//post("numArgs = %d", x->numArgs[i]);
				x->functions[i](&msg, x->numArgs[i], x->arguments[i]);
			}

			if(x->outputAddresses[i]){
				//post("%d %s %s", i, x->outputAddresses[i]->s_name, msg.address);
				x->bufferPos += cmmjl_osc_rename(x->buffer, x->bufferLen, x->bufferPos, &msg, x->outputAddresses[i]->s_name);
			}else{
				*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
				x->bufferPos += 4;
				memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
				x->bufferPos += msg.size;
			}
			didmatch++;

		}else{
			//post("%s did not match %s", msg.address, x->patterns[i]->s_name);
		}
	}
	if(didmatch == 0){
		*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
		x->bufferPos += 4;
		memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
		x->bufferPos += msg.size;
	}
	*/
}

t_oop_f oop_getFunction(t_symbol *op){
	if(op == ps_plus){
		return oop_plus;
	}else if(op == ps_minus){
		return oop_minus;
	}else if(op == ps_times){
		return oop_times;
	}else if(op == ps_div){
		return oop_div;
	}else if(op == ps_pass){
		return oop_pass;
	}else if(op == ps_mod){
		return oop_mod;
	}else if(op == ps_min){
		return oop_min;
	}else if(op == ps_max){
		return oop_max;
	}else if(op == ps_abs){
		return oop_abs;
	}else if(op == ps_avg){
		return oop_avg;
	}else if(op == ps_absdiff){
		return oop_absdiff;
	}else if(op == ps_fold){
		return oop_fold;
	}else if(op == ps_wrap){
		return oop_wrap;
	}else if(op == ps_divFlip){
		return oop_divFlip;
	}else if(op == ps_minusFlipp){
		return oop_minusFlip;
	}else if(op == ps_modFlip){
		return oop_modFlip;
	}else if(op == ps_scale){
		return oop_scale;
	}else if(op == ps_clip){
		return oop_clip;
	}else if(op == ps_map){
		return oop_map;
	}else{
		return NULL;
	}
}

void oop_assist(t_oop *x, void *b, long m, long a, char *s){
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

void oop_free(t_oop *x){
	if(x->patterns){
		free(x->patterns);
	}
	if(x->operations){
		free(x->operations);
	}
	if(x->functions){
		free(x->functions);
	}
	if(x->arguments){
		int i;
		for(i = 0; i < x->numPatterns; i++){
			if(x->arguments[i]){
				free(x->arguments[i]);
			}
		}
		free(x->arguments);
	}
	if(x->numArgs){
		free(x->numArgs);
	}
}

void *oop_new(t_symbol *msg, short argc, t_atom *argv){
	t_oop *x;
	if(x = (t_oop *)object_alloc(oop_class)){
		x->outlet = outlet_new(x, "FullPacket");
		int i = 0, j = 0;
		x->numPatterns = 0;
		// This part is so kludgy it even has a variable called kludge...
		int kludge = 0;
		for(i = 0; i < argc; i++){
			char *c = atom_getsym(argv + i)->s_name;
			if(c[0] == '/' && strlen(c) > 1){
				if(!kludge){
					x->numPatterns++;
					kludge++;
				}else{
					kludge = 0;
				}
			}else{
				kludge = 0;
			}
		}
		if(argv[argc - 1].a_type == A_SYM){
			t_symbol *sym = atom_getsym(argv + (argc - 1));
			if(sym->s_name[0] == '/' && strlen(sym->s_name) > 1){
				x->numPatterns--;
			}
		}
		x->patterns = (t_symbol **)malloc(x->numPatterns * sizeof(t_symbol *));
		x->operations = (t_symbol **)malloc(x->numPatterns * sizeof(t_symbol *));
		x->outputAddresses = (t_symbol **)malloc(x->numPatterns * sizeof(t_symbol *));
		x->functions = (t_oop_f *)malloc(x->numPatterns * sizeof(t_oop_f));
		x->arguments = (t_atom **)malloc(x->numPatterns * sizeof(t_atom *));
		x->numArgs = (int *)malloc(x->numPatterns * sizeof(int ));
		i = 0;
		while(i < argc){
			x->patterns[j] = atom_getsym(argv + i++);
			x->operations[j] = atom_getsym(argv + i++);
			x->functions[j] = oop_getFunction(x->operations[j]);
			int k = 0;
			x->arguments[j] = (t_atom *)malloc(32 * sizeof(t_atom));
			while(i < argc){
				char *c = atom_getsym(argv + i)->s_name;
				if(c[0] == '/' && strlen(c) > 1){
					break;
				}
				x->arguments[j][k] = *(argv + i++);
				//postatom(&(x->arguments[j][k]));
				k++;
			}
			// <nasty>
			if(argv[i].a_type == A_SYM && i < argc - 1){
				if(argv[i + 1].a_type == A_SYM){
					t_symbol *s1, *s2;
					s1 = atom_getsym(argv + i);
					s2 = atom_getsym(argv + i + 1);
					if(s1->s_name[0] == '/' && s2->s_name[0] == '/' && strlen(s1->s_name) > 1 && strlen(s2->s_name) > 1){
						x->outputAddresses[j] = s1;
						i++;
					}else{
						x->outputAddresses[j] = NULL;
					}
				}else{
					x->outputAddresses[j] = NULL;
				}
			}else{
				if(i == argc - 1 && argv[i].a_type == A_SYM){
					if(argv[i].a_w.w_sym->s_name[0] == '/'){
						x->outputAddresses[j] = atom_getsym(argv + i++);
					}
				}else{
					x->outputAddresses[j] = NULL;
				}
			}

			// <\nasty>
			x->numArgs[j] = k;
			j++;

		}
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.op", (method)oop_new, (method)oop_free, sizeof(t_oop), 0L, A_GIMME, 0);
    osc_set_mem((void *)sysmem_newptr, sysmem_freeptr, (void *)sysmem_resizeptr);
	class_addmethod(c, (method)oop_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oop_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)oop_assist, "assist", A_CANT, 0);
    
	class_register(CLASS_BOX, c);
	oop_class = c;

	common_symbols_init();

	ps_FullPacket = gensym("FullPacket");

	ps_pass = gensym("pass");
	ps_plus = gensym("+");
	ps_minus = gensym("-");
	ps_times = gensym("*");
	ps_div = gensym("/");
	ps_mod = gensym("%");
	ps_min = gensym("min");
	ps_max = gensym("max");
	ps_abs = gensym("abs");
	ps_avg = gensym("avg");
	ps_absdiff = gensym("absdiff");
	ps_fold = gensym("fold");
	ps_wrap = gensym("wrap");
	ps_divFlip = gensym("!/");
	ps_minusFlipp = gensym("!-");
	ps_modFlip = gensym("!%");
	ps_scale = gensym("scale");
	ps_clip = gensym("clip");
	ps_map = gensym("map");

	return 0;
}

void oop_pass(t_osc_msg *msg, int argc, t_atom *argv){
	// no bugs with this one!
}

void oop_plus(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii += arg;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f += arg;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_minus(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii -= arg;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f -= arg;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		case 'd':
			{
				int64_t ii = ntoh64(*((int64_t *)args));
				double f = *(((double *)(&ii)));
				f -= arg;
				*((int64_t *)args) = hton64(*(((int64_t *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_times(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii *= arg;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f *= arg;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_div(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				float ii = (float)ntoh32(*((int32_t *)args));
				ii /= arg;
				*((int32_t *)args) = hton32(*((int32_t *)&ii));
				args += 4;
				*(msg->typetags + 1 + i) = 'f';
			}
			break;
		case 'h':
			{
				double ii = (double)ntoh64(*((int64_t *)args));
				ii /= arg;
				*((int64_t *)args) = hton64(*((int64_t *)&ii));
				args += 4;
				*(msg->typetags + 1 + i) = 'd';
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f /= arg;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_mod(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	long arg = atom_getlong(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii %= arg;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				//ii = (int)f;
				f = fmodf(f, (float)arg);
				*((int *)args) = htonl(*((long *)(&f)));
				args += 4;
			}
			break;
		}
	}
}

void oop_min(t_osc_msg *msg, int argc, t_atom *argv){
	int i, j = 0;
	double min = DBL_MAX;
	char tt;
	for(i = 0; i < msg->argc; i++){
		tt = *(msg->typetags + i + 1);
		if(tt == 'i' || tt == 'f'){
			long l = ntohl(*((long *)(msg->argv + j)));
			float f;
			if(tt == 'i'){
				f = (float)l;
			}else{
				f = *((float *)(&l));
			}
			if(f < min){
				min = f;
			}
			j += 4;
		}
	}
	msg->argc = 1;
	*(msg->typetags + 1) = 'f';
	*(msg->typetags + 2) = '\0';
	*(msg->typetags + 3) = '\0';

	msg->argv = msg->typetags + 4;
	memset(msg->argv + 4, '\0', (msg->address + msg->size) - (msg->argv + 4));
	float fmin = (float)min;
	*((long *)(msg->argv)) = htonl(*((long *)(&fmin)));
}

void oop_max(t_osc_msg *msg, int argc, t_atom *argv){
	int i, j = 0;
	double max = DBL_MIN;
	char tt;
	for(i = 0; i < msg->argc; i++){
		tt = *(msg->typetags + i + 1);
		if(tt == 'i' || tt == 'f'){
			long l = ntohl(*((long *)(msg->argv + j)));
			float f;
			if(tt == 'i'){
				f = (float)l;
			}else{
				f = *((float *)(&l));
			}
			if(f > max){
				max = f;
			}
			j += 4;
		}
	}
	msg->argc = 1;
	*(msg->typetags + 1) = 'f';
	*(msg->typetags + 2) = '\0';
	*(msg->typetags + 3) = '\0';

	msg->argv = msg->typetags + 4;
	memset(msg->argv + 4, '\0', (msg->address + msg->size) - (msg->argv + 4));
	float fmax = (float)max;
	*((long *)(msg->argv)) = htonl(*((long *)(&fmax)));
}

void oop_abs(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				const int mask = ii >> sizeof(int) * CHAR_BIT - 1;
				ii = (ii + mask) ^ mask;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = fabsf(f);
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_avg(t_osc_msg *msg, int argc, t_atom *argv){
	int i, j = 0;
	double avg = 0;
	char tt;
	int ctr = 0;
	for(i = 0; i < msg->argc; i++){
		tt = *(msg->typetags + i + 1);
		if(tt == 'i' || tt == 'f'){
			long l = ntohl(*((long *)(msg->argv + j)));
			float f;
			if(tt == 'i'){
				f = (float)l;
			}else{
				f = *((float *)(&l));
			}
			avg += f;
			j += 4;
			ctr++;
		}
	}
	avg /= ctr;
	msg->argc = 1;
	*(msg->typetags + 1) = 'f';
	*(msg->typetags + 2) = '\0';
	*(msg->typetags + 3) = '\0';

	msg->argv = msg->typetags + 4;
	memset(msg->argv + 4, '\0', (msg->address + msg->size) - (msg->argv + 4));
	float favg = (float)avg;
	*((long *)(msg->argv)) = htonl(*((long *)(&favg)));
}

void oop_absdiff(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii = fabsf((float)(ii - arg));
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = fabsf(f - arg);
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_fold(t_osc_msg *msg, int argc, t_atom *argv){
	error("o.op: fold doesn't work at the moment");
}

void oop_wrap(t_osc_msg *msg, int argc, t_atom *argv){
	error("o.op: wrap doesn't work at the moment");
}

void oop_divFlip(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii = arg / ii;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = arg / f;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_minusFlip(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	float arg = atom_getfloat(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii = arg - ii;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = arg - f;
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_modFlip(t_osc_msg *msg, int argc, t_atom *argv){
	int i;
	char *args = msg->argv;
	long arg = atom_getlong(argv);
	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii = arg % ii;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				ii = (int)f;
				ii = arg % ii;
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		}
	}
}

void oop_scale(t_osc_msg *msg, int argc, t_atom *argv){
	if(argc != 4){
		error("o.op: scale needs 4 arguments, (%d)", argc);
	}
	int i;
	char *args = msg->argv;
	double minmax[4];
	int type = argv[0].a_type;
	minmax[0] = atom_getfloat(argv);
	minmax[1] = atom_getfloat(argv + 1);
	minmax[2] = atom_getfloat(argv + 2);
	minmax[3] = atom_getfloat(argv + 3);

	for(i = 0; i < msg->argc; i++){
		int ii = ntohl(*((int *)(args)));
		float ff;
		switch(*(msg->typetags + i + 1)){
		case 'i':
			ff = (float)ii;
			break; 
		case 'f':
			ff = *((float *)(&ii));
			break;
		}
		ff = oop_do_scale((double)ff, minmax[0], minmax[1], minmax[2], minmax[3]);

		if(argv[2].a_type == A_FLOAT || argv[3].a_type == A_FLOAT){
			ii = *((long *)(&ff));
			*((int *)args) = htonl(ii);
			*(msg->typetags + i + 1) = 'f';
		}else{
			ii = (long)ff;
			*((int *)args) = htonl(ii);
			*(msg->typetags + i + 1) = 'i';
		}
		args += 4;
	}
	/*
	for(i = 0; i < msg->argc; i++){
		//switch(*(msg->typetags + 1)){
		switch(type){
		case A_LONG:
			{
				int ii = ntohl(*((int *)args));
				ii = (int)oop_do_scale((double)ii, minmax[0], minmax[1], minmax[2], minmax[3]);
				*((int *)args) = htonl(ii);
				args += 4;
				*(msg->typetags + i + 1) = 'i';
			}
			break;
		case A_FLOAT:
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = oop_do_scale(f, minmax[0], minmax[1], minmax[2], minmax[3]);
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
				*(msg->typetags + i + 1) = 'f';
			}
			break;
		}
	}
	*/
}

void oop_clip(t_osc_msg *msg, int argc, t_atom *argv){
	if(argc != 2){
		error("o.op: scale needs 2 arguments");
	}

	int i;
	char *args = msg->argv;
	double minmax[4];
	minmax[0] = atom_getfloat(argv);
	minmax[1] = atom_getfloat(argv + 1);

	for(i = 0; i < msg->argc; i++){
		switch(*(msg->typetags + 1 + i)){
		case 'i':
			{
				int ii = ntohl(*((int *)args));
				ii = (int)oop_do_clip((double)ii, minmax[0], minmax[1]);
				*((int *)args) = htonl(ii);
				args += 4;
			}
			break;
		case 'f':
			{
				int ii = ntohl(*((int *)args));
				float f = *(((float *)(&ii)));
				f = oop_do_clip(f, minmax[0], minmax[1]);
				*((int *)args) = htonl(*(((int *)(&f))));
				args += 4;
			}
			break;
		}
	}
}

void oop_map(t_osc_msg *msg, int argc, t_atom *argv){
	oop_scale(msg, argc, argv);
	oop_clip(msg, 2, argv + 2);
}

double oop_do_clip(double f, double min, double max){
        double ff = f;
        if(ff < min){
                ff = min;
        }else if(ff > max){
                ff = max;
        }
        return ff;
}

double oop_do_scale(double f, double min_in, double max_in, double min_out, double max_out){
        float m = (max_out - min_out) / (max_in - min_in);
        float b = (min_out - (m * min_in));
        return m * f + b;
}
