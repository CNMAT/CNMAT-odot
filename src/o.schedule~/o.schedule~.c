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
} t_oschedt_tv;

typedef struct _oschedt{
	t_pxobject ob;
	void *outlet;
	double blockcount;
	long samplerate;
	int nsignals;
	t_symbol **addresses;
	t_oschedt_tv *tmp_tvs[3];
	char tmp_tvs_bufnum;
	int tmp_tvs_n[3];
	binary_heap qs;
	t_oschedt_tv *tvs;
	int *tvs_free_slots;
} t_oschedt;

#define OSCHEDT_QMAX 4096

void *oschedt_class;

void oschedt_fullPacket(t_oschedt *x, long len, long lptr)
{
	char tmp_tvs_bufnum = x->tmp_tvs_bufnum;
	tmp_tvs_bufnum = (tmp_tvs_bufnum + 2) % 3;
	printf("%s:%d: tmp_tvs_bufnum = %d\n", __func__, __LINE__, tmp_tvs_bufnum);
	char *ptr = (char *)lptr;
	for(int i = 0; i < x->nsignals; i++){
		char *ta = x->addresses[(i * 2)]->s_name;
		char *va = x->addresses[(i * 2) + 1]->s_name;
		t_osc_msg_ar_s *tmas = osc_bundle_s_lookupAddress(len, ptr, ta, 1);
		if(!tmas || osc_message_array_s_getLen(tmas) == 0){
			return;
		}
		t_osc_msg_ar_s *vmas = osc_bundle_s_lookupAddress(len, ptr, va, 1);
		if(!vmas || osc_message_array_s_getLen(vmas) == 0){
			return;
		}
		t_osc_msg_it_s *tmis = osc_message_iterator_s_getIterator(osc_message_array_s_get(tmas, 0));
		t_osc_msg_it_s *vmis = osc_message_iterator_s_getIterator(osc_message_array_s_get(vmas, 0));
		while(osc_message_iterator_s_hasNext(tmis) && osc_message_iterator_s_hasNext(vmis)){
			printf("%s:%d: while\n", __func__, __LINE__);
			t_osc_atom_s *ts = osc_message_iterator_s_next(tmis);
			t_osc_atom_s *vs = osc_message_iterator_s_next(vmis);
			if(osc_atom_s_getTypetag(ts) != 't'){
				printf("%s:%d: bail\n",  __func__, __LINE__);
				osc_message_iterator_s_destroyIterator(tmis);
				osc_message_iterator_s_destroyIterator(vmis);
				return;
			}
			t_oschedt_tv tv = (t_oschedt_tv){osc_atom_s_getTimetag(ts), osc_atom_s_getDouble(vs), i};
			x->tmp_tvs[tmp_tvs_bufnum][x->tmp_tvs_n[tmp_tvs_bufnum]++] = tv;
			// node n;
			// n.length = sizeof(tv);
			// n.timestamp = tv.t;
			// for(int j = 0; j < OSCHEDT_QMAX; j++){
			// 	if(x->tvs_free_slots[bufnum][j] == 0){
			// 		x->tvs_free_slots[bufnum][j] = 1;
			// 		n.id = j;
			// 		x->tvs[bufnum][j] = tv;
			// 		break;
			// 	}
			// 	// queue overflow
			// }
			// printf("%s:%d: insert %d", __func__, __LINE__, n.id);
			// heap_insert(&(x->qs[bufnum]), n);
		}
		osc_message_iterator_s_destroyIterator(tmis);
		osc_message_iterator_s_destroyIterator(vmis);
	}
}

void oschedt_perform64(t_oschedt *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	omax_realtime_clock_tick(x);
	t_osc_timetag now, next;
	omax_realtime_clock_now(&now);
	omax_realtime_clock_next(&next);
	
	char tmp_tvs_bufnum = x->tmp_tvs_bufnum;
	int tmp_tvs_n = x->tmp_tvs_n[tmp_tvs_bufnum];
	t_oschedt_tv tvs[tmp_tvs_n];
	memcpy(tvs, x->tmp_tvs[tmp_tvs_bufnum], tmp_tvs_n * sizeof(t_oschedt_tv));
	memset(x->tmp_tvs[tmp_tvs_bufnum], 0, tmp_tvs_n * sizeof(t_oschedt_tv));
	x->tmp_tvs_n[tmp_tvs_bufnum] = 0;
	printf("%s:%d: tmp_tvs_bufnum = %d\n", __func__, __LINE__, tmp_tvs_bufnum);
	for(int i = 0; i < tmp_tvs_n; i++){
		node n;
		t_oschedt_tv tv = tvs[i];
		n.length = sizeof(tv);
		n.timestamp = tv.t;
		for(int j = 0; j < OSCHEDT_QMAX; j++){
			if(x->tvs_free_slots[j] == 0){
				x->tvs_free_slots[j] = 1;
				n.id = j;
				x->tvs[j] = tv;
				break;
			}
			// queue overflow
		}
		printf("%s:%d: insert %d\n", __func__, __LINE__, n.id);
		heap_insert(&(x->qs), n);
	}
	
	node_ptr np = heap_max(&(x->qs));
	printf("%s:%d: np = %p\n", __func__, __LINE__, np);
	for(int i = 0; i < numouts; i++){
		memset(outs[i], 0, vectorsize * sizeof(double));
	}
	while(np != NULL){
		printf("%s:%d: %s %s %s\n", __func__, __LINE__, osc_timetag_format(now), osc_timetag_format(np->timestamp), osc_timetag_format(next));
		printf("%s:%d: tt compare: %d %d\n", __func__, __LINE__, osc_timetag_compare(now, np->timestamp), osc_timetag_compare(np->timestamp, next));
		if(osc_timetag_compare(now, np->timestamp) <= 0 && osc_timetag_compare(np->timestamp, next) <= 0){
			node n = heap_extract_max(&(x->qs));
			x->tvs_free_slots[n.id] = 0;
			printf("%s:%d: EXTRACT n.id = %d\n", __func__, __LINE__, n.id);
			t_oschedt_tv tv = x->tvs[n.id];
			double d = osc_timetag_timetagToFloat(osc_timetag_subtract(tv.t, now));
			long s = (long)round(d * x->samplerate);
			printf("%s:%d: d = %f, s = %d\n", __func__, __LINE__, d, s);
			outs[tv.channel][s] += tv.v;
		}else if(osc_timetag_compare(np->timestamp, now) < 0){
			node n = heap_extract_max(&(x->qs));
			x->tvs_free_slots[n.id] = 0;
			printf("%s:%d: MISSED n.id = %d\n", __func__, __LINE__, n.id);
		}else{
			// must be too early
			printf("%s:%d: WAITING n.id = %d\n", __func__, __LINE__, np->id);
			break;
		}
		np = heap_max(&(x->qs));
	}
	
	x->blockcount++;
	x->tmp_tvs_bufnum = (x->tmp_tvs_bufnum + 1) % 3;
}

void oschedt_dsp64(t_oschedt *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	omax_realtime_clock_register(x);
	x->blockcount = 0;
	x->samplerate = samplerate;
	object_method(dsp64, gensym("dsp_add64"), x, oschedt_perform64, 0, NULL);
}

OMAX_DICT_DICTIONARY(t_oschedt, x, oschedt_fullPacket);

void oschedt_doc(t_oschedt *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oschedt_assist(t_oschedt *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oschedt_free(t_oschedt *x)
{
	dsp_free((t_pxobject *)x);
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
			x->tmp_tvs[i] = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt));
			x->tmp_tvs_n[i] = 0;
		}
		x->tmp_tvs_bufnum = 0;
		heap_initialize(&(x->qs), OSCHEDT_QMAX);
		x->tvs = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
		x->tvs_free_slots = (int *)calloc(OSCHEDT_QMAX, sizeof(int));
		for(int i = 0; i < argc / 2; i++){
			outlet_new((t_object *)x, "signal");
			x->addresses[i * 2] = atom_getsym(argv + (i * 2));
			x->addresses[i * 2 + 1] = atom_getsym(argv + (i * 2 + 1));
			//x->buffers[i] = (double *)calloc(44100, sizeof(double));
		}
		x->nsignals = argc / 2;
		//x->bufptr = 0;
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
