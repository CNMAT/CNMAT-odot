/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2013, The Regents of
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

*/


#define OMAX_DOC_NAME "o.iterate"
#define OMAX_DOC_SHORT_DESC "Iterate over the contents of a bundle"
#define OMAX_DOC_LONG_DESC "Outputs each message in a bundle as an encoded OSC message"
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Messages (FullPacket)"}
#define OMAX_DOC_SEEALSO  (char *[]){"o.atomize"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"
#include "osc_bundle_iterator_s.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _oiterate{
	t_object ob;
	void *outlet;
} t_oiterate;

void *oiterate_class;


//void oiterate_fullPacket(t_oiterate *x, long len, long ptr)
void oiterate_fullPacket(t_oiterate *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		long l = osc_message_u_getSize(m);
		char *p = osc_message_u_getAddress(m);
		omax_util_outletOSC(x->outlet, l, p);
	}
	osc_bndl_it_s_destroy(it);
}

OMAX_DICT_DICTIONARY(t_oiterate, x, oiterate_fullPacket);

void oiterate_doc(t_oiterate *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oiterate_assist(t_oiterate *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oiterate_free(t_oiterate *x)
{
}

void *oiterate_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oiterate *x;
	if((x = (t_oiterate *)object_alloc(oiterate_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.iterate", (method)oiterate_new, (method)oiterate_free, sizeof(t_oiterate), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oiterate_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oiterate_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oiterate_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oiterate_doc, "doc", 0);
	//class_addmethod(c, (method)oiterate_bang, "bang", 0);
	//class_addmethod(c, (method)oiterate_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	oiterate_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
/*
t_max_err oiterate_notify(t_oiterate *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
