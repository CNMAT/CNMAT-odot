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
#define OMAX_DOC_SEEALSO (char *[]){"o.schedule", "o.timetag~", "o.snapshot~"}

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
#include "osc_message_iterator_s.h"
#include "osc_timetag.h"
#include "osc_strfmt.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "omax_realtime.h"

#include "pqops.h"

typedef struct _oschedt_tv{
	t_osc_timetag t;
	double v;
	int channel;
	long len;
	char *bundle;
} t_oschedt_tv;

typedef struct _oschedt{
	t_pxobject ob;
	void *outlet;
	double blockcount;
	long samplerate;
	int nsignals;
	t_symbol **addresses;

	char tmp_tvs_bufnum;
	
	t_oschedt_tv *tmp_tvs[3];
	int tmp_tvs_n[3];
	binary_heap qs;
	t_oschedt_tv *tvs;
	int *tvs_free_slots;
	
	char **outlet_assist_strings;
} t_oschedt;

#define OSCHEDT_QMAX 4096

void *oschedt_class;

void oschedt_fullPacket(t_oschedt *x, long len, long lptr)
{
	// the triple buffering makes locks unnecessary
	
	// this variable is modified by the perform routine,
	// but it is a char which is read/written atomically.
	char tmp_tvs_bufnum = x->tmp_tvs_bufnum;
	tmp_tvs_bufnum = (tmp_tvs_bufnum + 2) % 3;
	char *ptr = (char *)lptr;

	// tmp_tvs_n is triple buffered
	if(x->tmp_tvs_n[tmp_tvs_bufnum] + 1 == OSCHEDT_QMAX){
		// this should output the packet out a max outlet
		object_post((t_object *)x, "queue is full, dropping packet");
		return;
	}
	// signals and addresses don't change after the object has been initialized
	for(int i = 0; i < x->nsignals; i++){
		char *ta = x->addresses[(i * 2)]->s_name;
		char *va = x->addresses[(i * 2) + 1]->s_name;
		t_osc_msg_ar_s *tmas = osc_bundle_s_lookupAddress(len, ptr, ta, 1);
		if(!tmas || osc_message_array_s_getLen(tmas) == 0){
			osc_message_array_s_free(tmas);
			continue;
		}
		t_osc_msg_ar_s *vmas = osc_bundle_s_lookupAddress(len, ptr, va, 1);
		if(!vmas || osc_message_array_s_getLen(vmas) == 0){
			osc_message_array_s_free(tmas);
			osc_message_array_s_free(vmas);
			continue;
		}
		t_osc_msg_it_s *tmis = osc_message_iterator_s_getIterator(osc_message_array_s_get(tmas, 0));
		t_osc_msg_it_s *vmis = osc_message_iterator_s_getIterator(osc_message_array_s_get(vmas, 0));
		// iterate stopping at the end of the shortest list
		while(osc_message_iterator_s_hasNext(tmis) && osc_message_iterator_s_hasNext(vmis)){
			t_osc_atom_s *ts = osc_message_iterator_s_next(tmis);
			t_osc_atom_s *vs = osc_message_iterator_s_next(vmis);
			if(osc_atom_s_getTypetag(ts) != 't'){
				// support other typetags than time?
				// ints = x samples in the future? <--this doesn't really make sense as we don't know what sample we're currently on
				// floats = x seconds in the future? <--smae with this...
				osc_message_iterator_s_destroyIterator(tmis);
				osc_message_iterator_s_destroyIterator(vmis);
				osc_message_array_s_free(tmas);
				osc_message_array_s_free(vmas);
				return;
			}
			char *copy = osc_mem_alloc(len * sizeof(char));
			memcpy(copy, ptr, len);
			t_oschedt_tv tv = (t_oschedt_tv){osc_atom_s_getTimetag(ts), osc_atom_s_getDouble(vs), i, len, copy};
			x->tmp_tvs[tmp_tvs_bufnum][x->tmp_tvs_n[tmp_tvs_bufnum]++] = tv;
		}
		osc_message_iterator_s_destroyIterator(tmis);
		osc_message_iterator_s_destroyIterator(vmis);
		osc_message_array_s_free(tmas);
		osc_message_array_s_free(vmas);
	}
}

void oschedt_freeBundle(t_oschedt *x, t_symbol *msg, int argc, t_atom *argv)
{
	uint64_t lptr = atom_getlong(argv + 1);
	lptr <<= 32;
	lptr |= atom_getlong(argv + 2);
	if(lptr){
		osc_mem_free((char *)lptr);
	}
}

void oschedt_outletMissed(t_oschedt *x, t_symbol *msg, int argc, t_atom *argv)
{
	long len = atom_getlong(argv);
	uint64_t lptr = atom_getlong(argv + 1);
	lptr <<= 32;
	lptr |= atom_getlong(argv + 2);
	omax_util_outletOSC(x->outlet, len, (char *)lptr);
	if(lptr){
		osc_mem_free((char *)lptr);
	}
}

void oschedt_perform64(t_oschedt *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	//static t_osc_timetag foo;
	//static int bar;
	//t_osc_timetag nn = osc_timetag_now();
	t_osc_timetag now, next;
	//printf("**************************************************\n");
	omax_realtime_clock_tick(x);
	omax_realtime_clock_now(&now);
	omax_realtime_clock_next(&next);

	// if(bar > 0){
	// 	printf("%s:%d: interrupt delta = %f, %d\n", __func__, __LINE__, osc_timetag_timetagToFloat(osc_timetag_subtract(nn, foo)), (int)round(x->samplerate * osc_timetag_timetagToFloat(osc_timetag_subtract(nn, foo))));
	// 	printf("%s:%d: next - now = %f (%d)\n", __func__, __LINE__, osc_timetag_timetagToFloat(osc_timetag_subtract(next, now)), (int)round(osc_timetag_timetagToFloat(osc_timetag_subtract(next, now)) * x->samplerate));
	// }
	// bar++;
	// foo = nn;
	
	char tmp_tvs_bufnum = x->tmp_tvs_bufnum;
	int tmp_tvs_n = x->tmp_tvs_n[tmp_tvs_bufnum];
	t_oschedt_tv tvs[tmp_tvs_n];
	memcpy(tvs, x->tmp_tvs[tmp_tvs_bufnum], tmp_tvs_n * sizeof(t_oschedt_tv));
	memset(x->tmp_tvs[tmp_tvs_bufnum], 0, tmp_tvs_n * sizeof(t_oschedt_tv));
	x->tmp_tvs_n[tmp_tvs_bufnum] = 0;
	for(int i = 0; i < tmp_tvs_n; i++){
		node n;
		t_oschedt_tv tv = tvs[i];
		n.length = sizeof(tv);
		n.timestamp = tv.t;
		int overflow = 1;
		for(int j = 0; j < OSCHEDT_QMAX; j++){
			if(x->tvs_free_slots[j] == 0){
				x->tvs_free_slots[j] = 1;
				n.id = j;
				x->tvs[j] = tv;
				//printf("tv.bundle = %p, n.id = %d\n", tv.bundle, n.id);
				overflow = 0;
				break;
			}
		}
		if(overflow){
			// handle overflow case:
			// chuck data onto scheduler and outlet in Max
		}else{
			if(heap_insert(&(x->qs), n) == -1){
				// chuck data onto scheduler and outlet in Max
			}
		}
	}
	for(int i = 0; i < numouts; i++){
		//printf("%p: memset %p\n", x, outs[i]);
		memset(outs[i], 0, vectorsize * sizeof(double));
	}
	double sw = osc_timetag_timetagToFloat(osc_timetag_subtract(next, now)) / (double)vectorsize;
	node_ptr np = heap_max(&(x->qs));
	while(np != NULL){
		t_oschedt_tv tv = x->tvs[np->id];
		//printf("np->id = %d\n", np->id);
		// encode pointer as max atoms
		// do it this way in case we're in 32-bit
		t_atom a[3];
		atom_setlong(a, tv.len);
		atom_setlong(a + 1, (((uint64_t)tv.bundle) & 0xffffffff00000000) >> 32);
		atom_setlong(a + 2, ((uint64_t)tv.bundle) & 0xffffffff);

		double d;
		if(osc_timetag_compare(tv.t, now) < 1){
			d = osc_timetag_timetagToFloat(osc_timetag_subtract(tv.t, now)) * -1.;
		}else{
			d = osc_timetag_timetagToFloat(osc_timetag_subtract(tv.t, now));
		}
		long s = (long)round(d / sw);
		//printf("sw = %f, d = %f, s = %ld\n", sw, d, s);
		//if(osc_timetag_compare(now, np->timestamp) <= 0 && osc_timetag_compare(np->timestamp, next) < 0){
		if(s >= 0 && s < vectorsize){
			//printf("schedule %p\n", tv.bundle);
			//printf("sw = %f, d = %f, s = %ld\n", sw, d, s);
			//printf("schedule: x = %p, outs[%d] = %p, s = %d, v = %f, ind = %f++\n", x, tv.channel * 2, outs[tv.channel * 2], s, tv.v, outs[tv.channel * 2 + 1][s]);
			outs[tv.channel * 2][s] += tv.v;
			outs[tv.channel * 2 + 1][s]++;
			// can probably just call osc_mem_free here, but better to do it in the timer thread
			schedule_delay(x, (method)oschedt_freeBundle, 0, NULL, 3, a);
			//}else if(osc_timetag_compare(np->timestamp, now) < 0){
		}else if(s < 0){
			//printf("missed %p\n", tv.bundle);
			schedule_delay(x, (method)oschedt_outletMissed, 0, NULL, 3, a);
		}else{
			//printf("break %p\n", tv.bundle);
			break;
		}
		// dequeue
		node n = heap_extract_max(&(x->qs));
		x->tvs_free_slots[n.id] = 0;
		np = heap_max(&(x->qs));
	}
	x->blockcount++;
	x->tmp_tvs_bufnum = (x->tmp_tvs_bufnum + 1) % 3;
}

void oschedt_dsp64(t_oschedt *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	x->tmp_tvs_bufnum = 0;
	x->blockcount = 0;
	x->samplerate = samplerate;
	object_method(dsp64, gensym("dsp_add64"), x, oschedt_perform64, 0, NULL);
	omax_realtime_clock_register(x);
}

OMAX_DICT_DICTIONARY(t_oschedt, x, oschedt_fullPacket);

void oschedt_doc(t_oschedt *x)
{
	//omax_doc_outletDoc(x->outlet);
	_omax_doc_outletDoc(x->outlet,
			    OMAX_DOC_NAME,
			    OMAX_DOC_SHORT_DESC,
			    OMAX_DOC_LONG_DESC,
			    1,
			    OMAX_DOC_INLETS_DESC,
			    x->nsignals + 1,
			    x->outlet_assist_strings,
			    OMAX_DOC_NUM_SEE_ALSO_REFS,
			    OMAX_DOC_SEEALSO);
			    
}

void oschedt_assist(t_oschedt *x, void *b, long io, long num, char *buf)
{
	//omax_doc_assist(io, num, buf);
	_omax_doc_assist(io,
			 num,
			 buf,
			 1,
			 OMAX_DOC_INLETS_DESC,
			 x->nsignals + 1,
			 x->outlet_assist_strings);
}

void oschedt_free(t_oschedt *x)
{
	dsp_free((t_pxobject *)x);
	if(x->addresses){
		free(x->addresses);
	}
	for(int i = 0; i < 3; i++){
		if(x->tmp_tvs[i]){
			free(x->tmp_tvs[i]);
		}
	}
	heap_finalize(&(x->qs));
	if(x->tvs){
		free(x->tvs);
	}
	if(x->tvs_free_slots){
		free(x->tvs_free_slots);
	}
	if(x->outlet_assist_strings){
		for(int i = 0; i < x->nsignals + 1; i++){
			if(x->outlet_assist_strings[i]){
				free(x->outlet_assist_strings[i]);
			}
		}
		free(x->outlet_assist_strings);
	}
}

void *oschedt_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oschedt *x = NULL;
	if((x = (t_oschedt *)object_alloc(oschedt_class))){
		if(argc % 2 != 0){
			object_error((t_object *)x, "even number of arguments required");
		}
  		dsp_setup((t_pxobject *)x, 0); 
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->addresses = (t_symbol **)malloc(argc * sizeof(t_symbol*));
		//x->buffers = (double **)malloc((argc / 2) * sizeof(double *));
		for(int i = 0; i < 3; i++){
			x->tmp_tvs[i] = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
			x->tmp_tvs_n[i] = 0;
		}
		x->tmp_tvs_bufnum = 0;
		heap_initialize(&(x->qs), OSCHEDT_QMAX);
		x->tvs = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
		x->tvs_free_slots = (int *)calloc(OSCHEDT_QMAX, sizeof(int));
		x->nsignals = argc / 2;
		x->outlet_assist_strings = (char **)malloc(((x->nsignals * 2) + 1) * sizeof(char *));
		for(int i = 0; i < argc / 2; i++){
			outlet_new((t_object *)x, "signal");
			outlet_new((t_object *)x, "signal");
			x->addresses[i * 2] = atom_getsym(argv + (i * 2));
			x->addresses[i * 2 + 1] = atom_getsym(argv + (i * 2 + 1));
			//x->buffers[i] = (double *)calloc(44100, sizeof(double));
			long len = snprintf(NULL, 0, "Signal containing contents of %s and %s", x->addresses[i * 2]->s_name, x->addresses[(i * 2) + 1]->s_name) + 1;
			x->outlet_assist_strings[i * 2] = (char *)malloc(len * sizeof(char));
			snprintf(x->outlet_assist_strings[i * 2], len, "Signal containing contents of %s and %s", x->addresses[i * 2]->s_name, x->addresses[(i * 2) + 1]->s_name);
			len = snprintf(NULL, 0, "Signal indicating the number of values summed on each sample of %s and %s", x->addresses[i * 2]->s_name, x->addresses[(i * 2) + 1]->s_name) + 1;
			x->outlet_assist_strings[i * 2 + 1] = (char *)malloc(len * sizeof(char));
			snprintf(x->outlet_assist_strings[i * 2 + 1], len, "Signal indicating the number of values summed on each sample of %s and %s", x->addresses[i * 2]->s_name, x->addresses[(i * 2) + 1]->s_name);
		}
		long len = snprintf(NULL, 0, "OSC bundle containing data that missed their deadlines");
		x->outlet_assist_strings[x->nsignals * 2] = (char *)malloc(len * sizeof(char));
		snprintf(x->outlet_assist_strings[x->nsignals * 2], len, "OSC bundle containing data that missed their deadlines");
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.schedule~", (method)oschedt_new, (method)oschedt_free, sizeof(t_oschedt), 0L, A_GIMME, 0);
	class_addmethod(c, (method)oschedt_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oschedt_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oschedt_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oschedt_doc, "doc", 0);
    	class_addmethod(c, (method)oschedt_dsp64, "dsp64", A_CANT, 0);
	//class_addmethod(c, (method)oschedt_bang, "bang", 0);
	//class_addmethod(c, (method)oschedt_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	oschedt_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	omax_realtime_clock_init();
	return 0;
}
