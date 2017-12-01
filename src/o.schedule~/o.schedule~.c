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


#define OMAX_DOC_NAME "o.schedule~"
#define OMAX_DOC_SHORT_DESC "Insert values into one or more audio channels"
#define OMAX_DOC_LONG_DESC "o.schedule~ takes an OSC bundle with time tags and values and puts the values in the audio stream at the closest sample."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC bundle"}
#define OMAX_DOC_SEEALSO (char *[]){"sched~"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
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

typedef struct _osched{
	t_pxobject ob;
	void *outlet;
	t_critical lock;
	double blockcount;
	long samplerate;
	t_symbol **addresses;
	double **buffers;
	int bufptr;
} t_osched;

void *osched_class;

void osched_fullPacket(t_osched *x, long len, long lptr)
{
	char *ptr = (char *)lptr;
	t_osc_timetag now;
	omax_realtime_clock_now(&now);
	
}

void osched_perform64(t_osched *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	critical_enter(&(x->lock));
	omax_realtime_clock_tick(x);
	critical_exit(&(x->lock));
	t_osc_timetag now;
	omax_realtime_clock_now(&now);

	
	x->blockcount++;
}

void osched_dsp64(t_osched *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	omax_realtime_clock_register(x);
	x->blockcount = 0;
	x->samplerate = samplerate;
	object_method(dsp64, gensym("dsp_add64"), x, osched_perform64, 0, NULL);
}

OMAX_DICT_DICTIONARY(t_osched, x, osched_fullPacket);

void osched_doc(t_osched *x)
{
	omax_doc_outletDoc(x->outlet);
}

void osched_assist(t_osched *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void osched_free(t_osched *x)
{
	dsp_free((t_pxobject *)x);
	critical_free(x->lock);
}

void *osched_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_osched *x = NULL;
	if((x = (t_osched *)object_alloc(osched_class))){
		if(argc % 2 != 0){
			object_error((t_object *)x, "even number of arguments required");
		}
  		dsp_setup((t_pxobject *)x, 0); 
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->addresses = (t_symbol **)malloc(argc * sizeof(t_symbol*));
		x->buffers = (double **)malloc((argc / 2) * sizeof(double *));
		for(int i = 0; i < argc / 2; i++){
			outlet_new((t_object *)x, "signal");
			x->addresses[i * 2] = atom_getsym(argv + (i * 2));
			x->addresses[i * 2 + 1] = atom_getsym(argv + (i * 2 + 1));
			x->buffers[i] = (double *)calloc(44100, sizeof(double));
		}
		x->bufptr = 0;
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.schedule~", (method)osched_new, (method)osched_free, sizeof(t_osched), 0L, A_GIMME, 0);
	class_addmethod(c, (method)osched_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)osched_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)osched_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)osched_doc, "doc", 0);
    	class_addmethod(c, (method)osched_dsp64, "dsp64", A_CANT, 0);
	//class_addmethod(c, (method)osched_bang, "bang", 0);
	//class_addmethod(c, (method)osched_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	osched_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	omax_realtime_clock_init();
	return 0;
}
