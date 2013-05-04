/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2010, The Regents of
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
NAME: o.printbytes
DESCRIPTION: Post each byte of an OSC bundle to the Max window
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2010
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.printbytes"
#define OMAX_DOC_SHORT_DESC "Print an OSC packet to the Max window as a sequence of bytes."
#define OMAX_DOC_LONG_DESC "o.printbytes prints the the contents of an OSC packet to the Max window in three columns: Byte number, ASCII Character, and Decimal value.  Useful for debugging."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet (same as input)."}
#define OMAX_DOC_SEEALSO (char *[]){"o.print", "print", "printit"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _opbytes{
	t_object ob;
	void *outlet;
} t_opbytes;

void *opbytes_class;

void opbytes_free(t_opbytes *x);
void *opbytes_new(t_symbol *msg, short argc, t_atom *argv);

//void opbytes_fullPacket(t_opbytes *x, long len, long ptr)
void opbytes_fullPacket(t_opbytes *x, t_symbol *msg, int argc, t_atom *argv)
{
	OSC_GET_LEN_AND_PTR
	unsigned char *buf = (unsigned char *)ptr;
	int i;
	post("%-12s%-12s%s", "Byte #", "ASCII", "Decimal");
	for(i = 0; i < len; i++){
		if(buf[i] == '\0'){
			post("%05d       %-14s%d", i, "'\\0'", buf[i]);
		}else if(buf[i] < 32 || buf[i] > 126){
			post("%05d       %-14s%d", i, "''", buf[i]);
		}else{
			char b[32];
			sprintf(b, "'%c'", buf[i]);
			post("%05d       %-14s%d", i, b, buf[i]);
		}
	}
	omax_util_outletOSC(x->outlet, len, (char *)ptr);
}

OMAX_DICT_DICTIONARY(t_opbytes, x, opbytes_fullPacket);

void opbytes_doc(t_opbytes *x)
{
	omax_doc_outletDoc(x->outlet);
}

void opbytes_assist(t_opbytes *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void opbytes_free(t_opbytes *x){
}

void *opbytes_new(t_symbol *msg, short argc, t_atom *argv){
	t_opbytes *x;
	if((x = (t_opbytes *)object_alloc(opbytes_class))){
		x->outlet = outlet_new(x, NULL);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.printbytes", (method)opbytes_new, (method)opbytes_free, sizeof(t_opbytes), 0L, A_GIMME, 0);

	//class_addmethod(c, (method)opbytes_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)opbytes_fullPacket, "FullPacket", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_SYM, 0);
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	class_addmethod(c, (method)opbytes_doc, "doc", 0);
	class_addmethod(c, (method)opbytes_assist, "assist", A_CANT, 0);

	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	opbytes_class = c;

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
