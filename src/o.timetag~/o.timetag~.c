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


#define OMAX_DOC_NAME "o.timetag~"
#define OMAX_DOC_SHORT_DESC "Outputs timetags as an audio signal."
#define OMAX_DOC_LONG_DESC "o.timetag~ outputs a signal containing the time of each sample."
#define OMAX_DOC_INLETS_DESC (char *[]){"(inactive)"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC timetags synced with timer thread (signal)", "OSC timetag representing the system time when perform routine was called (signal)", "Sample index", "Block count since DSP was turned on", "Info / doc (OSC)"}
#define OMAX_DOC_SEEALSO (char *[]){"timetag~"}

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

typedef struct _otimetagt{
	t_pxobject ob;
	void *out0, *out1, *docout;
	double samplerate;
	double blockcount;
} t_otimetagt;

void *otimetagt_class;

void otimetagt_perform64(t_otimetagt *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	t_osc_timetag now, next, gtod;
	omax_realtime_clock_tick(x);
	omax_realtime_clock_now(&now);
	omax_realtime_clock_next(&next);
	gtod = osc_timetag_now();
	double sw = osc_timetag_timetagToFloat(osc_timetag_subtract(next, now)) / (double)vectorsize;
	double blockcount = (x->blockcount)++;
	for(int i = 0; i < vectorsize; i++){
		t_osc_timetag tt = osc_timetag_add(now, osc_timetag_floatToTimetag(sw * i));
		outs[0][i] = *((double *)&tt);
		outs[1][i] = *((double *)&gtod);
		outs[2][i] = i;
		outs[3][i] = blockcount;
	}
}

void otimetagt_dsp64(t_otimetagt *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	x->samplerate = samplerate;
	x->blockcount = 0;
	omax_realtime_clock_register(x);
	t_atom tt;
	atom_setlong(&tt, 't');
	//outlet_anything((void *)(((t_object *)x)->o_outlet), gensym("o.typetag"), 1, &tt);
	outlet_anything(x->out1, gensym("o.typetag"), 1, &tt);
	outlet_anything(x->out0, gensym("o.typetag"), 1, &tt);
	object_method(dsp64, gensym("dsp_add64"), x, otimetagt_perform64, 0, NULL);
}

//OMAX_DICT_DICTIONARY(t_otimetagt, x, otimetagt_fullPacket);

void otimetagt_doc(t_otimetagt *x)
{
	omax_doc_outletDoc(x->docout);
}

void otimetagt_assist(t_otimetagt *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void otimetagt_free(t_otimetagt *x)
{
	dsp_free((t_pxobject *)x);
}

void *otimetagt_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otimetagt *x = NULL;
	if((x = (t_otimetagt *)object_alloc(otimetagt_class))){
  		dsp_setup((t_pxobject *)x, 0);
		x->docout = outlet_new((t_object *)x, "FullPacket");
		outlet_new((t_object *)x, "signal");
		outlet_new((t_object *)x, "signal");
		x->out1 = outlet_new((t_object *)x, "signal");
		x->out0 = outlet_new((t_object *)x, "signal");
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.timetag~", (method)otimetagt_new, (method)otimetagt_free, sizeof(t_otimetagt), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)otimetagt_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)otimetagt_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)otimetagt_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otimetagt_doc, "doc", 0);
    	class_addmethod(c, (method)otimetagt_dsp64, "dsp64", A_CANT, 0);
	//class_addmethod(c, (method)otimetagt_bang, "bang", 0);
	//class_addmethod(c, (method)otimetagt_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	otimetagt_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	omax_realtime_clock_init();
	return 0;
}
