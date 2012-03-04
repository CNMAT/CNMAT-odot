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
NAME: o.route
DESCRIPTION: OSC-route for full packets
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
	t_symbol **addresses_in, **addresses_out;
	int numAddresses;
	char *buffer;
	int bufferLen;
	int bufferPos;
} t_orename;

void *orename_class;

void orename_fullPacket(t_orename *x, long len, long ptr);
void orename_cbk(t_cmmjl_osc_message msg, void *v);
/*
int orename_rename(char *buffer, 
		    int bufferLen, 
		    int bufferPos, 
		    t_cmmjl_osc_message *msg, 
		    char *newAddress);
*/
void orename_anything(t_orename *x, t_symbol *msg, short argc, t_atom *argv);
void orename_free(t_orename *x);
void orename_assist(t_orename *x, void *b, long m, long a, char *s);
void *orename_new(t_symbol *msg, short argc, t_atom *argv);

void orename_fullPacket(t_orename *x, long len, long ptr){
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
	cmmjl_osc_extract_messages(nn, cpy, true, orename_cbk, (void *)x);
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

void orename_cbk(t_cmmjl_osc_message msg, void *v){
	t_orename *x = (t_orename *)v;
	int i;
	int ret;
	int didmatch = 0;
	if(x->bufferPos + msg.size > x->bufferLen){
		realloc(x->buffer, x->bufferLen * 2);
	}
	for(i = 0; i < x->numAddresses; i++){
		//post("testing %s against %s", msg.address, x->addresses_in[i]->s_name);
		if((ret = cmmjl_osc_match(x, msg.address, x->addresses_in[i]->s_name)) == -1){
			//post("matchd %d characters", ret);
			x->bufferPos += cmmjl_osc_rename(x->buffer, x->bufferLen, x->bufferPos, &msg, x->addresses_out[i]->s_name);
			didmatch++;
		}
		//post("ret = %d", ret);
	}
	if(didmatch == 0){
		*((long *)(x->buffer + x->bufferPos)) = htonl(msg.size);
		x->bufferPos += 4;
		memcpy(x->buffer + x->bufferPos, msg.address, msg.size);
		x->bufferPos += msg.size;
	}
}

/*
int orename_rename(char *buffer, 
		    int bufferLen, 
		    int bufferPos, 
		    t_cmmjl_osc_message *msg, 
		    char *newAddress){
	int start = bufferPos;
	int len = strlen(newAddress);
	len++;
	len += 4 - (len % 4);
	*((long *)(buffer + bufferPos)) = htonl(msg->size + (len - (msg->typetags - msg->address)));
	bufferPos += 4;
	memcpy(buffer + bufferPos, newAddress, strlen(newAddress));
	bufferPos += len;
	len = msg->size - (msg->typetags - msg->address);
	memcpy(buffer + bufferPos, msg->typetags, len);
	bufferPos += len;
	return bufferPos - start;
}
*/

void orename_anything(t_orename *x, t_symbol *msg, short argc, t_atom *argv){
}

void orename_assist(t_orename *x, void *b, long m, long a, char *s){
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

void orename_free(t_orename *x){
	if(x->addresses_in){
		free(x->addresses_in);
	}
	if(x->addresses_out){
		free(x->addresses_out);
	}
}

void *orename_new(t_symbol *msg, short argc, t_atom *argv){
	if(argc % 2 != 0){
		error("o.rename: multiple of 2 arguments required");
		return NULL;
	}
	t_orename *x;
	int i;
	if(x = (t_orename *)object_alloc(orename_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, "FullPacket");
		x->addresses_in = (t_symbol **)malloc(argc / 2 * sizeof(t_symbol *));
		x->addresses_out = (t_symbol **)malloc(argc / 2 * sizeof(t_symbol *));
		x->numAddresses = argc / 2;
		for(i = 0; i < argc; i++){
			x->addresses_in[i] = atom_getsym(argv + (i * 2));
			x->addresses_out[i] = atom_getsym(argv + (i * 2) + 1);
		}
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.rename", (method)orename_new, (method)orename_free, sizeof(t_orename), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)orename_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)orename_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)orename_assist, "assist", A_CANT, 0);
    
	class_register(CLASS_BOX, c);
	orename_class = c;

	common_symbols_init();
	return 0;
}
