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


#define OMAX_DOC_NAME "o.timetag.split~"
#define OMAX_DOC_SHORT_DESC "Outputs the seconds and fractions of a second on different channels."
#define OMAX_DOC_LONG_DESC "o.timetag.split~ takes a signal from o.timetag~ and outputs the seconds since 1/1/1900 out the left outlet, and the fractions of a second out the right."
#define OMAX_DOC_INLETS_DESC (char *[]){"o.timetag (signal)"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Seconds since 1/1/1900 (signal)", "Fractions of a second (signal)", "Info / Doc (FullPacket)"}
#define OMAX_DOC_SEEALSO (char *[]){"o.timetag~", "o.timetag.join~"}

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

typedef struct _otimetagsplit{
	t_pxobject ob;
	void *docout;
	int timetag_connected;
} t_otimetagsplit;

void *otimetagsplit_class;

void otimetagsplit_perform64(t_otimetagsplit *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	for(int i = 0; i < vectorsize; i++){
		t_osc_timetag tt = *((t_osc_timetag *)&(ins[0][i]));
		outs[0][i] = (double)tt.sec;
		outs[1][i] = (double)tt.frac_sec;
	}
}

void otimetagsplit_dsp64(t_otimetagsplit *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	object_method(dsp64, gensym("dsp_add64"), x, otimetagsplit_perform64, 0, NULL);
}

void otimetagsplit_otypetag(t_otimetagsplit *x, t_symbol *msg, short argc, t_atom *argv)
{
	int inlet = proxy_getinlet((t_object *)x);
	if(argc && inlet == 1 && (char)atom_getlong(argv) == 't'){
		x->timetag_connected = 1;
	}
}

//OMAX_DICT_DICTIONARY(t_otimetagsplit, x, otimetagsplit_fullPacket);

void otimetagsplit_doc(t_otimetagsplit *x)
{
	omax_doc_outletDoc(x->docout);
}

void otimetagsplit_assist(t_otimetagsplit *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void otimetagsplit_free(t_otimetagsplit *x)
{
	dsp_free((t_pxobject *)x);
}

void *otimetagsplit_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otimetagsplit *x = NULL;
	if((x = (t_otimetagsplit *)object_alloc(otimetagsplit_class))){
  		dsp_setup((t_pxobject *)x, 1);
		x->docout = outlet_new((t_object *)x, "FullPacket");
		outlet_new((t_object *)x, "signal");
		outlet_new((t_object *)x, "signal");
		x->timetag_connected = 0;
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.timetag.split~", (method)otimetagsplit_new, (method)otimetagsplit_free, sizeof(t_otimetagsplit), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)otimetagsplit_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)otimetagsplit_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)otimetagsplit_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otimetagsplit_doc, "doc", 0);
    	class_addmethod(c, (method)otimetagsplit_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)otimetagsplit_otypetag, "o.typetag", A_GIMME, 0);
	//class_addmethod(c, (method)otimetagsplit_bang, "bang", 0);
	//class_addmethod(c, (method)otimetagsplit_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	otimetagsplit_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	return 0;
}
