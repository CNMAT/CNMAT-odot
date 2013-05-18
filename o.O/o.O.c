/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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
  NAME: o.O
  DESCRIPTION: Pass a bundle through if it is different from the previous one
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2011
  SVN_REVISION: $LastOdRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#define OMAX_DOC_NAME "o.O"
#define OMAX_DOC_SHORT_DESC "test object"
#define OMAX_DOC_LONG_DESC "o.O is a dummy object for testing random OSC related code"
#define OMAX_DOC_INLETS_DESC (char *[]){"inlet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"outlet"}
#define OMAX_DOC_SEEALSO (char *[]){"nothing"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_serial.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _oO{
	t_object ob;
	void *outlet;
	t_critical lock;
} t_oO;

void *oO_class;


//void oO_fullPacket(t_oO *x, long len, long ptr)
void oO_fullPacket(t_oO *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	uint64_t state = OSC_STATE_INIT;
	for(int i = 0; i < len; i++){
		state = process_byte(ptr[i], state);
		if(osc_state_errorp(state)){
			object_error((t_object *)x, "%s", osc_state_errstr(state));
			return;
		}
	}
}

void oO_anything(t_oO *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void oO_bang(t_oO *x)
{
}

OMAX_DICT_DICTIONARY(t_oO, x, oO_fullPacket);

void oO_doc(t_oO *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oO_assist(t_oO *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oO_free(t_oO *x)
{
	critical_free(x->lock);
}

void *oO_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oO *x;
	if((x = (t_oO *)object_alloc(oO_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
	}
	return(x);
}

int main(void)
{
	t_class *c = class_new("o.O", (method)oO_new, (method)oO_free, sizeof(t_oO), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oO_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oO_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oO_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oO_doc, "doc", 0);
	//class_addmethod(c, (method)oO_bang, "bang", 0);
	//class_addmethod(c, (method)oO_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);
	
	class_register(CLASS_BOX, c);
	oO_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
/*
t_max_err oO_notify(t_oO *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
