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
  NAME: o.dict
  DESCRIPTION: Dict a bundle with nested bundles
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2012
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#define OMAX_DOC_NAME "o.dict"
#define OMAX_DOC_SHORT_DESC "Convert an OSC bundle to a Max dictionary"
#define OMAX_DOC_LONG_DESC "o.dict takes an OSC bundle and turns it into a Max dictionary."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Dictionary"}
#define OMAX_DOC_SEEALSO (char *[]){""}

#include "o.h"
#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "ext_dictionary.h"
#include "ext_dictobj.h"
#include "osc.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _odict{
	t_object ob;
	void *outlet;
	t_dictionary *dict;
	t_symbol *name;
} t_odict;

void *odict_class;

//void odict_fullPacket(t_odict *x, long len, long ptr)
void odict_fullPacket(t_odict *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	t_osc_bndl_s *bndl = osc_bundle_s_alloc(len, ptr);	
	dictionary_clear(x->dict);
	omax_dict_bundleToDictionary(bndl, x->dict);
	t_atom a;
	atom_setsym(&a, x->name);
	outlet_anything(x->outlet, _sym_dictionary, 1, &a);
	osc_bundle_s_free(bndl);
}

void odict_doc(t_odict *x)
{
	omax_doc_outletDoc(x->outlet);
}

void odict_assist(t_odict *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void odict_free(t_odict *x)
{
	object_free(x->dict);
}

void *odict_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_odict *x;
	if((x = (t_odict *)object_alloc(odict_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		x->dict = dictionary_new();
		//previously set name to NULL
		//x->name = NULL;
		x->name = symbol_unique();
		dictobj_register(x->dict, &(x->name));

		//previously attempted to resolve dict stubs before registering
		//if(omax_dict_resolveDictStubs()){
		//omax_dict_dictobj_register(x->dict, &(x->name));
		//}
	}
		   	
	return x;
}

int main(void)
{
	t_class *c = class_new("o.dict", (method)odict_new, NULL, sizeof(t_odict), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)odict_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)odict_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)odict_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)odict_doc, "doc", 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	
	class_register(CLASS_BOX, c);
	odict_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
