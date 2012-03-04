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
#include "cmmjl/cmmjl.h"
#include "cmmjl/cmmjl_osc.h"
//#include "cmmjl/cmmjl_osc_obj.h"

typedef struct _olistacc{
	t_object ob;
	void *outlet;
	t_symbol *address;
	char *dataBuffer;
	int dataBufferLen;
	int dataBufferPos;
	char *typetags;
	char *timetags;
	int nElements;
	int nElementsToAccumulate;
} t_olistacc;

void *olistacc_class;

void olistacc_fullPacket(t_olistacc *x, long len, long ptr);
void olistacc_cbk(t_cmmjl_osc_message msg, void *v);
void olistacc_bundleData(t_olistacc *x, int n, char *buf);
void olistacc_reset(t_olistacc *x);
void olistacc_anything(t_olistacc *x, t_symbol *msg, short argc, t_atom *argv);
void olistacc_free(t_olistacc *x);
void olistacc_assist(t_olistacc *x, void *b, long m, long a, char *s);
void *olistacc_new(t_symbol *msg, short argc, t_atom *argv);

void olistacc_fullPacket(t_olistacc *x, long len, long ptr){
	// make a local copy so the ref doesn't disappear out from underneath us
	int i;
	char cpy[len];
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
	memcpy(x->timetags + (x->nElements * 8), cpy + 8, 8);

	cmmjl_osc_extract_messages(nn, cpy, true, olistacc_cbk, (void *)x);
}

void olistacc_cbk(t_cmmjl_osc_message msg, void *v){
	t_olistacc *x = (t_olistacc *)v;
	int i;
	int ret;
	if((ret = cmmjl_osc_match(x, msg.address, x->address->s_name)) == -1){
		int nElements = msg.argc;
		char *argptr = msg.argv;
		for(i = 0; i < nElements; i++){
			x->typetags[x->nElements] = msg.typetags[i + 1];
			//post("setting %d to %c", x->nElements, msg.typetags[i + 1]);
			int s = 4;
			if(x->dataBufferPos + s > x->dataBufferLen){
				char *ptr = realloc(x->dataBuffer, x->dataBufferLen * 2);
				if(ptr){
					x->dataBuffer = ptr;
					x->dataBufferLen *= 2;
				}else{
					error("o.list-accum: ran out of memory!");
					return;
				}
			}
			memcpy(x->dataBuffer + x->dataBufferPos, argptr, s);
			x->dataBufferPos += s;
			argptr += s;
			x->nElements++;
			if(x->nElements == x->nElementsToAccumulate){
				int buflen = 16 + 4 + strlen(x->address->s_name);
				buflen++;
				while(buflen % 4){
					buflen++;
				}
				buflen += x->nElements + 1;
				buflen++;
				while(buflen % 4){
					buflen++;
				}
				buflen += x->dataBufferPos;
				//post("buflen = %d", buflen);
				char buf[buflen];
				olistacc_bundleData(x, buflen, buf);
				/*
				int j;
				for(j = 0; j < buflen; j++){
					post("%d %c 0x%x", j, buf[j], buf[j]);
				}
				*/
				t_atom out[2];
				atom_setlong(out, buflen);
				atom_setlong(out + 1, (long)buf);
				outlet_anything(x->outlet, ps_FullPacket, 2, out);
				olistacc_reset(x);
			}
		}
	}
}

void olistacc_bundleData(t_olistacc *x, int n, char *buf){
	memset(buf, '\0', n);
	int bufpos = 0;
	bufpos += cmmjl_osc_init_bundle(n, buf, NULL);
	char *sizeptr = buf + bufpos;
	bufpos += 4;
	strcpy(buf + bufpos, x->address->s_name);
	bufpos += strlen(buf + bufpos);
	bufpos++;
	while(bufpos % 4){
		bufpos++;
	}
	buf[bufpos++] = ',';
	int i; 
	memcpy(buf + bufpos, x->typetags, x->nElements);
	bufpos += x->nElements;
	bufpos++;
	while(bufpos % 4){
		bufpos++;
	}
	memcpy(buf + bufpos, x->dataBuffer, x->dataBufferPos);
	bufpos += x->dataBufferPos;
	//post("bufpos = %d", bufpos);
	*((long *)sizeptr) = htonl((buf + bufpos) - (sizeptr + 4));
	/*
	t_atom out[2];
	atom_setlong(out, bufpos);
	atom_setlong(out, (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
	*/
}

void olistacc_reset(t_olistacc *x){
	x->dataBufferPos = 0;
	x->nElements = 0;
}

void olistacc_anything(t_olistacc *x, t_symbol *msg, short argc, t_atom *argv){
}

void olistacc_assist(t_olistacc *x, void *b, long m, long a, char *s){
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

void olistacc_free(t_olistacc *x){
}

void *olistacc_new(t_symbol *msg, short argc, t_atom *argv){
	t_olistacc *x;
	int i;
	if(x = (t_olistacc *)object_alloc(olistacc_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, NULL);
		x->nElementsToAccumulate = atom_getlong(argv);
		x->dataBufferLen = x->nElementsToAccumulate * 8;
		x->dataBuffer = (char *)malloc(x->dataBufferLen);
		x->dataBufferPos = 0;
		x->typetags = (char *)malloc(x->nElementsToAccumulate);
		x->timetags = (char *)malloc(x->nElementsToAccumulate * 8);
		x->address = atom_getsym(argv + 1);
		x->nElements = 0;
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.list-accum", (method)olistacc_new, (method)olistacc_free, sizeof(t_olistacc), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)olistacc_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)olistacc_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)olistacc_assist, "assist", A_CANT, 0);
    
	class_register(CLASS_BOX, c);
	olistacc_class = c;

	common_symbols_init();
	return 0;
}
