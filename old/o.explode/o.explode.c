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
NAME: o.explode
DESCRIPTION: explode an OSC message into a bunch of messages
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

typedef struct _oex{
	t_object ob;
	void *outlet;
	t_symbol *address;
	t_symbol **ex_addresses;
	int num_ex_addresses;
	char *buffer;
	int bufferLen;
	int bufferPos;
} t_oex;

void *oex_class;

void oex_fullPacket(t_oex *x, long len, long ptr);
void oex_cbk(t_osc_msg msg, void *v);
void oex_anything(t_oex *x, t_symbol *msg, short argc, t_atom *argv);
void oex_free(t_oex *x);
void oex_assist(t_oex *x, void *b, long m, long a, char *s);
void *oex_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_FullPacket;

void oex_fullPacket(t_oex *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	int i;
	char cpy[len];
	memcpy(cpy, (char *)ptr, len);
	long nn = len;
	char *buffer = (char *)sysmem_newptr(len * 8);
	memset(buffer, '\0', len * 8);
	x->buffer = buffer;
	x->bufferLen = len * 8;
	x->bufferPos = 0;

	// if the OSC packet contains a single message, turn it into a bundle
	if(strncmp(cpy, "#bundle\0", 8)){
		nn = osc_util_bundle_naked_message(len, cpy, cpy);
		if(nn < 0){
			error("problem bundling naked message");
		}
	}

	// flatten any nested bundles
	nn = osc_util_flatten(nn, cpy, cpy);

	//x->bufferPos += cmmjl_osc_init_bundle(len * 2, buffer, NULL);
	memcpy(buffer, cpy, 16); // #bundle and timestamp
	x->bufferPos += 16;
	osc_util_parseBundleWithCallback(nn, cpy, oex_cbk, (void *)x);
	/*
	for(i = 0; i < x->bufferPos; i++){
		post("%d 0x%x %c", i, buffer[i], buffer[i]);
	}
	*/

	t_atom out[2];
	atom_setlong(out, x->bufferPos);
	atom_setlong(out + 1, (long)buffer);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
	sysmem_freeptr(buffer);
	x->buffer = NULL;
}

void oex_cbk(t_osc_msg msg, void *v){
	t_oex *x = (t_oex *)v;
	int i;
	int ret;
	int po, ao;
	ret = osc_match(msg.address, x->address->s_name, &po, &ao);
	if(ret == (OSC_MATCH_PATTERN_COMPLETE | OSC_MATCH_ADDRESS_COMPLETE)){
		int n = x->num_ex_addresses;
		if(n != msg.argc){
			if(n < msg.argc){
				n--;
			}else{
				n = msg.argc;
			}
		}
		char *argptr = msg.argv;
		char *tt = msg.typetags + 1;
		char *sizeptr;
		int s;
		for(i = 0; i < n; i++){
			sizeptr = x->buffer + x->bufferPos;
			x->bufferPos += 4;
			s = strlen(x->ex_addresses[i]->s_name);

			memcpy(x->buffer + x->bufferPos, x->ex_addresses[i]->s_name, s);
			x->bufferPos += s + 1;
			while(x->bufferPos % 4 != 0){
				x->bufferPos++;
			}
			x->buffer[x->bufferPos++] = ',';
			x->buffer[x->bufferPos++] = *tt;
			x->bufferPos += 2;
			s = 4;
			if(*tt != 'f' && *tt != 'i'){
				s = strlen(argptr);
			}
			memcpy(x->buffer + x->bufferPos, argptr, s);
			argptr += s;
			x->bufferPos += s;
			tt++;
			*((long *)sizeptr) = htonl((x->buffer + x->bufferPos) - (sizeptr + 4));
		}
		if(x->num_ex_addresses < msg.argc){
			sizeptr = (x->buffer + x->bufferPos);
			x->bufferPos += 4;
			strcpy(x->buffer + x->bufferPos, x->ex_addresses[x->num_ex_addresses - 1]->s_name);
			x->bufferPos += strlen(x->buffer + x->bufferPos);
			x->bufferPos++;
			while(x->bufferPos % 4){
				x->bufferPos++;
			}
			x->buffer[x->bufferPos++] = ',';
			strcpy(x->buffer + x->bufferPos, tt);
			x->bufferPos += strlen(x->buffer + x->bufferPos);
			x->bufferPos++;
			while(x->bufferPos % 4){
				x->bufferPos++;
			}
			s = (msg.address + msg.size) - argptr;
			memcpy(x->buffer + x->bufferPos, argptr, s);
			x->bufferPos += s;
			*((long *)sizeptr) = htonl((x->buffer + x->bufferPos) - (sizeptr + 4));
		}else if(x->num_ex_addresses > msg.argc){
			for(i = msg.argc; i < x->num_ex_addresses; i++){
				sizeptr = (x->buffer + x->bufferPos);
				x->bufferPos += 4;
				strcpy(x->buffer + x->bufferPos, x->ex_addresses[i]->s_name);
				x->bufferPos += strlen(x->buffer + x->bufferPos);
				x->bufferPos++;
				while(x->bufferPos % 4){
					x->bufferPos++;
				}
				x->buffer[x->bufferPos++] = ',';
				x->buffer[x->bufferPos++] = 'i';
				x->bufferPos += 6;
				*((long *)sizeptr) = htonl((x->buffer + x->bufferPos) - (sizeptr + 4));
			}
		}
	}else{
		*((uint32 *)(x->buffer + x->bufferPos)) = hton32(msg.size);
		x->bufferPos += 4;
		memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
		x->bufferPos += msg.size;
	}
}

void oex_anything(t_oex *x, t_symbol *msg, short argc, t_atom *argv){
}

void oex_assist(t_oex *x, void *b, long m, long a, char *s){
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

void oex_free(t_oex *x){
	if(x->ex_addresses){
		free(x->ex_addresses);
	}
}

void *oex_new(t_symbol *msg, short argc, t_atom *argv){
	t_oex *x;
	int i;
	if(x = (t_oex *)object_alloc(oex_class)){
		x->outlet = outlet_new(x, NULL);
		x->address = atom_getsym(argv);
		x->ex_addresses = (t_symbol **)malloc((argc - 1) * sizeof(t_symbol *));
		x->num_ex_addresses = argc - 1;
		for(i = 1; i < argc; i++){
			x->ex_addresses[i - 1] = atom_getsym(argv + i);
		}
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.explode", (method)oex_new, (method)oex_free, sizeof(t_oex), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)oex_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oex_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)oex_assist, "assist", A_CANT, 0);
    
	class_register(CLASS_BOX, c);
	oex_class = c;

	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	return 0;
}
