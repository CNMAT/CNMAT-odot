/*

  Written by Matt Wright, Adrian Freed, Andy Schmeder, John MacCallum
 
  The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 1996,97,98,99,2000,01,02,03,04,05, 2014
  The Regents of the University of California (Regents).  

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

*/

#define OMAX_DOC_NAME "o.slip.encode"
#define OMAX_DOC_SHORT_DESC "SLIP encodes an OSC packet and outputs a stream of bytes"
#define OMAX_DOC_LONG_DESC "SLIP encodes an OSC packet and outputs a stream of bytes suitable for use with Max's serial object."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Byte stream"}
#define OMAX_DOC_SEEALSO  (char *[]){"o.slip.decode"}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
    #include "m_pd.h"
#else
    #include "ext.h"
    #include "ext_obex.h"
    #include "ext_obex_util.h"
    #include "ext_critical.h"
    #include "omax_dict.h"
#endif

#include "osc.h"
#include "osc_mem.h"
#include "osc_serial.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "o.h"

t_class *oslip_class;

t_symbol *ps_gimme, *ps_OSCTimeTag, *ps_FullPacket, *ps_OSCBlob;

#define MAXSLIPBUF 2048

typedef struct oslip {
	t_object ob;
	void *outlet;  
  
	char slipibuf[MAXSLIPBUF]; // buffer used to write the new packet
	int icount;
	short istate; // initialize to 0
	t_critical lock;
} t_oslip;

void *oslip_new(long arg);
void oslip_assist(t_oslip *x, void *b, long m, long a, char *s);

void oslip_send(t_oslip *x);

void oslip_bang(t_oslip *x);
void oslip_readtypestrings(t_oslip *x, int yesno);
void oslip_writetypestrings(t_oslip *x, int yesno);
void oslip_printcontents(t_oslip *x);

void oslip_accumulateMessage(t_oslip *x, char *messageName, short argc, t_atom *argv);
int oslip_stringSubstitution(char *target, char *format, short *argcp, t_atom **argvp);
void oslip_sendBuffer(t_oslip *x);
void oslip_sendData(t_oslip *x, short size, char *data);

// SLIP codes
#define END             0300    // indicates end of packet 
#define ESC             0333    // indicates byte stuffing 
#define ESC_END         0334    // ESC ESC_END means END data byte 
#define ESC_ESC         0335    // ESC ESC_ESC means ESC data byte


#ifdef OMAX_PD_VERSION
void oslip_FullPacket(t_oslip *x, t_symbol *msg, short argc, t_atom *argv) {
    OMAX_UTIL_GET_LEN_AND_PTR
    long size = len;
    char *source = ptr;
#else
void oslip_FullPacket(t_oslip *x, long size, unsigned char *source) {
#endif
	t_atom encoded[size * 2 + 1];
	memset(encoded, '\0', size * 2 + 1);
	int i=0;
	unsigned char c;
    
	atom_setlong(encoded + i++, END);

	for(int j = 0; j < size; j++) {
		switch(c=*source++)
			{
			case END:
				atom_setlong(encoded + i++, ESC);
				atom_setlong(encoded + i++, ESC_END);
				break;
	  
			case ESC:
				atom_setlong(encoded + i++, ESC);
				atom_setlong(encoded + i++, ESC_ESC);
				break;
	  
			default:
				atom_setlong(encoded + i++, c);

	  
			}
	}
	atom_setlong(encoded + i++, END);
	//x->out[i++].a_w.w_long  = END;
    
#ifdef DEBUGOUTPUT
	{
		// full packet process		
		char stringbuf[4096];
		int j=0;
		int p;
		for(p=0;p<i && p<4095;++p)
			{
				unsigned char c = x->out[p].a_w.w_long;
				if(c=='/' || c=='#' || c==' ' ||  (c>='a' && c<='z')  || (c>='A' && c<='Z') || (c<='9' && c>='0') )
					stringbuf[j++] = c;
				else
					stringbuf[j++] = '*';
			}
		stringbuf[j++] = '\0';
		object_post((t_object *)x, "packet %d %s", i, stringbuf);
	}
#endif
    
	outlet_list(x->outlet, NULL, i, encoded);  
}

void oslip_doc(t_oslip *x)
{
	omax_doc_outletDoc(x->outlet);
}

void myobject_free(t_oslip *x);
void myobject_free(t_oslip *x)
{
	critical_free(x->lock);
}

#ifdef OMAX_PD_VERSION

void *oslip_new(long arg) {
	t_oslip *x;
    
	x = (t_oslip *)object_alloc(oslip_class);
	if(!x){
		return NULL;
	}
    
	x->outlet = outlet_new(&x->ob, NULL);
    
	x->icount = 0;
	x->istate = 0;
    
	critical_new(&(x->lock));
    
	return x;
}

int setup_o0x2eslip0x2eencode(void)
{
	t_class *c = class_new( gensym(OMAX_DOC_NAME), (t_newmethod)oslip_new,(t_method)myobject_free, (short)sizeof(t_oslip),0L, A_DEFFLOAT,0);
    
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
	class_addmethod(c, (t_method)oslip_doc, gensym("doc"), 0);
    
	class_addmethod(c, (t_method)oslip_printcontents, gensym("printcontents"), 0);
	class_addmethod(c, (t_method)oslip_FullPacket, gensym("FullPacket"), A_GIMME, 0);
    

//	finder_addclass("Devices","slipOSC");
    
//	class_register(CLASS_BOX, c);
	oslip_class = c;
    
	ODOT_PRINT_VERSION;
	return 0;
}

#else

OMAX_DICT_DICTIONARY(t_oslip, x, oslip_FullPacket);


void oslip_assist(t_oslip *x, void *b, long m, long a, char *dst) {
	omax_doc_assist(m, a, dst);
}


int main (void)
{  
	t_class *c = class_new(OMAX_DOC_NAME, (method) oslip_new,(method) myobject_free,(short)sizeof(t_oslip),0L,A_DEFLONG,0);
  
	class_addmethod(c, (method)oslip_assist, "assist", A_CANT,0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)oslip_doc, "doc", 0);
  
	class_addmethod(c, (method)oslip_printcontents, "printcontents", 0);
	class_addmethod(c, (method)oslip_FullPacket, "FullPacket", A_LONG, A_LONG, 0);

	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}

	finder_addclass("Devices","slipOSC");

	class_register(CLASS_BOX, c);
	oslip_class = c;

	ODOT_PRINT_VERSION;
	return 0;
}

void *oslip_new(long arg) {
	t_oslip *x;
  
	x = (t_oslip *) object_alloc(oslip_class);
	if(!x){
		return NULL;
	}
  
	x->outlet = outlet_new(x, NULL);

	x->icount = 0;
	x->istate = 0;
  
	critical_new(&(x->lock));
  
	return x;
}

#endif

#define MAX_ARGS_TO_oslip_MSG 1024

#define PRINTABLE(c) ((char) (c>= 0x20 && c <= 0x7e ? c : 'û'))
#define isprint(c) ((c) >= 0x20 && (c) <= 0x7e)

void oslip_printcontents (t_oslip *x) {
	char *m, buf[100], *p;
	int n, i;
  
	m = x->slipibuf;
	n = x->icount;
  
	object_post((t_object *)x, "oslip_printcontents: buffer %p, size %ld", m, (long) n);
  
	if (n % 4 != 0) {
		object_post((t_object *)x, "Hey, the size isn't a multiple of 4!");
	} else {
		for (i = 0; i < n; i += 4) {
			p = buf;
      
			p += sprintf(p, "  %x", m[i]);
			if (isprint(m[i])) {
				p += sprintf(p, "  (%c)", m[i]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+1]);
			if (isprint(m[i+1])) {
				p += sprintf(p, "  (%c)", m[i+1]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+2]);
			if (isprint(m[i+2])) {
				p += sprintf(p, "  (%c)", m[i+2]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			p += sprintf(p, "  %x", m[i+3]);
			if (isprint(m[i+3])) {
				p += sprintf(p, "  (%c)", m[i+3]);
			} else {
				p += sprintf(p, "  ()");
			}
      
			*p = '\0';
			object_post((t_object *)x, buf);	    		 
		}
	}
}


