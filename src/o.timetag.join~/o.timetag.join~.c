/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2017, The Regents of
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


#define OMAX_DOC_NAME "o.timetag.join~"
#define OMAX_DOC_SHORT_DESC "Combines the output of o.timetag.split~ into an o.timetag."
#define OMAX_DOC_LONG_DESC "o.timetag.join~ takes the two signals from o.timetag.split~, the seconds since 1/1/1900, and the fractions of a second, and joins them into an o.timetag"
#define OMAX_DOC_OUTLETS_DESC (char *[]){"o.timetag (signal)"}
#define OMAX_DOC_INLETS_DESC (char *[]){"Seconds since 1/1/1900 (signal)", "Fractions of a second (signal)"}
#define OMAX_DOC_SEEALSO (char *[]){"o.timetag~", "o.timetag.split~"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_sysmem.h"
#include "z_dsp.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_iterator_s.h"
#include "osc_timetag.h"
#include "osc_strfmt.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "omax_realtime.h"

typedef struct _otimetagjoin{
	t_pxobject ob;
	void *out0, *docout;
} t_otimetagjoin;

void *otimetagjoin_class;

void otimetagjoin_perform64(t_otimetagjoin *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	for(int i = 0; i < vectorsize; i++){
		t_osc_timetag tt = (t_osc_timetag){(uint32_t)ins[0][i], (uint32_t)ins[1][i]};
		outs[0][i] = *((double *)&tt);
	}
}

void otimetagjoin_dsp64(t_otimetagjoin *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	t_atom tt;
	atom_setlong(&tt, 't');
	outlet_anything(x->out0, gensym("o.typetag"), 1, &tt);
	object_method(dsp64, gensym("dsp_add64"), x, otimetagjoin_perform64, 0, NULL);
}

//OMAX_DICT_DICTIONARY(t_otimetagjoin, x, otimetagjoin_fullPacket);

void otimetagjoin_doc(t_otimetagjoin *x)
{
	omax_doc_outletDoc(x->docout);
}

void otimetagjoin_assist(t_otimetagjoin *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void otimetagjoin_free(t_otimetagjoin *x)
{
	dsp_free((t_pxobject *)x);
}

void *otimetagjoin_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otimetagjoin *x = NULL;
	if((x = (t_otimetagjoin *)object_alloc(otimetagjoin_class))){
  		dsp_setup((t_pxobject *)x, 2);
		x->docout = outlet_new((t_object *)x, "FullPacket");
		x->out0 = outlet_new((t_object *)x, "signal");
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.timetag.join~", (method)otimetagjoin_new, (method)otimetagjoin_free, sizeof(t_otimetagjoin), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)otimetagjoin_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)otimetagjoin_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)otimetagjoin_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otimetagjoin_doc, "doc", 0);
    	class_addmethod(c, (method)otimetagjoin_dsp64, "dsp64", A_CANT, 0);
	//class_addmethod(c, (method)otimetagjoin_bang, "bang", 0);
	//class_addmethod(c, (method)otimetagjoin_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	otimetagjoin_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	return 0;
}
