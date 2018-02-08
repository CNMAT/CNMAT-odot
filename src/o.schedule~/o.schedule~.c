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
#include "osc_util.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "omax_realtime.h"

#include "../o.schedule/pqops.h"

#define OSCHEDT_TV_STATUS_FREE 0
#define OSCHEDT_TV_STATUS_ACTIVE 1
#define OSCHEDT_TV_STATUS_SCHEDULED 2
#define OSCHEDT_TV_STATUS_MISSED 3

typedef struct _oschedt_tv{
	int status;
	t_osc_timetag t;
	double v;
	int channel;
} t_oschedt_tv;

typedef struct _oschedt_pbndl{
	long len;
	char *ptr;
	long tptr, vptr;
} t_oschedt_pbndl;

typedef struct _oschedt{
	t_pxobject ob;
	void *outlet;
	double blockcount;
	long samplerate;
	int nsignals;
	t_symbol **addresses;
	t_oschedt_pbndl *missed_pbndls, *overflow_pbndls;

	char bufnum;

	// these buffers are filled by the FullPacket routine and emptied by the perform routine
	t_oschedt_tv *buftoperform[3];
	int buftoperform_n[3];
	// these buffers are filled by the perform routine and emptied by the FullPacket routine
	t_oschedt_tv *buftooutlet[3];
	int buftooutlet_n[3];
	
	binary_heap q;
	t_oschedt_tv *qbuf;
	
	char **outlet_assist_strings;
} t_oschedt;

#define OSCHEDT_QMAX 4096

void *oschedt_class;

t_symbol *ps_FullPacket;


void oschedt_outputBundle(t_oschedt *x, t_oschedt_pbndl *pbndls, t_oschedt_tv tv)
{
	t_oschedt_pbndl pbndl = pbndls[tv.channel];
	long len = pbndl.len;
	char *ptr = pbndl.ptr;
	char copy[len];
	memcpy(copy, ptr, len);
	osc_timetag_encodeForHeader(tv.t, copy + pbndl.tptr);
	uint64_t fi = *((uint64_t *)(&(tv.v)));
	*((uint64_t *)(copy + pbndl.vptr)) = hton64(fi);
	omax_util_outletOSC(x->outlet, len, copy);
}

void oschedt_outputMissed(t_oschedt *x, t_oschedt_tv tv)
{
	oschedt_outputBundle(x, x->missed_pbndls, tv);
}

void oschedt_outputOverflow(t_oschedt *x, t_oschedt_tv tv)
{
	oschedt_outputBundle(x, x->overflow_pbndls, tv);
}

void oschedt_fullPacket(t_oschedt *x, long len, long lptr)
{
	// the triple buffering makes locks unnecessary
	
	// this variable is modified by the perform routine,
	// but it is a char which is read/written atomically.
	char bufnum = x->bufnum;
	bufnum = (bufnum + 2) % 3;
	char *ptr = (char *)lptr;
	int buftooutlet_n = x->buftooutlet_n[bufnum];
	for(int i = 0; i < buftooutlet_n; i++){
		oschedt_outputMissed(x, x->buftooutlet[bufnum][i]);
		x->buftooutlet[bufnum][i].status = 0;
	}
	x->buftooutlet_n[bufnum] = 0;
	
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
				// floats = x seconds in the future? <--same with this...
				osc_message_iterator_s_destroyIterator(tmis);
				osc_message_iterator_s_destroyIterator(vmis);
				osc_message_array_s_free(tmas);
				osc_message_array_s_free(vmas);
				return;
			}
			t_oschedt_tv tv = (t_oschedt_tv){OSCHEDT_TV_STATUS_ACTIVE, osc_atom_s_getTimetag(ts), osc_atom_s_getDouble(vs), i};
			if(x->buftoperform_n[bufnum] + 1 == OSCHEDT_QMAX){
				oschedt_outputMissed(x, tv);
			}else{
				x->buftoperform[bufnum][x->buftoperform_n[bufnum]++] = tv;
			}
		}
		osc_message_iterator_s_destroyIterator(tmis);
		osc_message_iterator_s_destroyIterator(vmis);
		osc_message_array_s_free(tmas);
		osc_message_array_s_free(vmas);
	}
}

void oschedt_perform64(t_oschedt *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	t_osc_timetag now, next;
	omax_realtime_clock_tick(x);
	omax_realtime_clock_now(&now);
	omax_realtime_clock_next(&next);

	char bufnum = x->bufnum;
	int buftoperform_n = x->buftoperform_n[bufnum];
	//t_oschedt_tv qbuf[buftoperform_n];
	//memcpy(qbuf, x->buftoperform[bufnum], buftoperform_n * sizeof(t_oschedt_tv));
	//memset(x->buftoperform[bufnum], 0, buftoperform_n * sizeof(t_oschedt_tv));
	//x->buftoperform_n[bufnum] = 0;

	int enqueued;
	for(enqueued = 0; enqueued < buftoperform_n; enqueued++){
		node n;
		t_oschedt_tv tv = x->buftoperform[bufnum][enqueued];
		n.length = sizeof(tv);
		n.timestamp = tv.t;
		int overflow = 1;
		for(int j = 0; j < OSCHEDT_QMAX; j++){
			if(x->qbuf[j].status == 0){
				n.id = j;
				x->qbuf[j] = tv;
				overflow = 0;
				x->buftoperform[bufnum][enqueued].status = 0;
				break;
			}
		}
		if(overflow || heap_insert(&(x->q), n) == -1){
			break;
		}
	}
	// if there are any tvs that didn't get added to the queue, move them to the beginning,
	// adjust the count to reflect how many there are left, and we'll try to get to them next time
	for(int i = enqueued; i < buftoperform_n; i++){
		x->buftoperform[bufnum][i - enqueued] = x->buftoperform[bufnum][i];
	}
	x->buftoperform_n[bufnum] -= enqueued;
	//memset(x->buftoperform[bufnum], 0, buftoperform_n * sizeof(t_oschedt_tv));
	//x->buftoperform_n[bufnum] = 0;
	for(int i = 0; i < numouts; i++){
		memset(outs[i], 0, vectorsize * sizeof(double));
	}
	double sw = osc_timetag_timetagToFloat(osc_timetag_subtract(next, now)) / (double)vectorsize;
	node_ptr np = heap_max(&(x->q));
	while(np != NULL){
		t_oschedt_tv tv = x->qbuf[np->id];
		double d;
		if(osc_timetag_compare(tv.t, now) < 1){
			d = osc_timetag_timetagToFloat(osc_timetag_subtract(tv.t, now)) * -1.;
		}else{
			d = osc_timetag_timetagToFloat(osc_timetag_subtract(tv.t, now));
		}
		long s = (long)round(d / sw);
		if(s >= 0 && s < vectorsize){
			outs[tv.channel * 2][s] += tv.v;
			outs[tv.channel * 2 + 1][s]++;
		}else if(s < 0){
			tv.status = OSCHEDT_TV_STATUS_MISSED;
			x->buftooutlet[bufnum][x->buftooutlet_n[bufnum]++] = tv;
		}else if(osc_timetag_isImmediate(tv.t)){
			outs[tv.channel][0] += tv.v;
			outs[tv.channel * 2 + 1][0]++;
		}else{
			break;
		}
		// dequeue
		node n = heap_extract_max(&(x->q));
		//x->qbuf_free_slots[n.id] = 0;
		x->qbuf[n.id].status = 0;
		np = heap_max(&(x->q));
	}
	x->blockcount++;
	x->bufnum = (x->bufnum + 1) % 3;
}

void oschedt_dsp64(t_oschedt *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	x->bufnum = 0;
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
		if(x->buftoperform[i]){
			free(x->buftoperform[i]);
		}
	}
	heap_finalize(&(x->q));
	if(x->qbuf){
		free(x->qbuf);
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
			x->buftoperform[i] = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
			x->buftoperform_n[i] = 0;
			x->buftooutlet[i] = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
			x->buftooutlet_n[i] = 0;
		}
		x->bufnum = 0;
		heap_initialize(&(x->q), OSCHEDT_QMAX);
		x->qbuf = (t_oschedt_tv *)calloc(OSCHEDT_QMAX, sizeof(t_oschedt_tv));
		x->nsignals = argc / 2;
		x->outlet_assist_strings = (char **)malloc(((x->nsignals * 2) + 1) * sizeof(char *));
		char *prefixes[] = {"/misseddeadline", "/queueoverflow"};
		
		x->missed_pbndls = osc_mem_alloc(sizeof(t_oschedt_pbndl) * x->nsignals);
		x->overflow_pbndls = osc_mem_alloc(sizeof(t_oschedt_pbndl) * x->nsignals);
		t_oschedt_pbndl *pbndls[] = {x->missed_pbndls, x->overflow_pbndls};
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

			for(int j = 0; j < sizeof(prefixes) / sizeof(char*); j++){
				char *prefix = prefixes[j];
				int taddresslen = strlen(prefix) + strlen(x->addresses[i * 2]->s_name);
				int vaddresslen = strlen(prefix) + strlen(x->addresses[i * 2 + 1]->s_name);
				char taddress[taddresslen + 1];
				char vaddress[vaddresslen + 1];
				snprintf(taddress, taddresslen + 1, "%s%s", prefix, x->addresses[i * 2]->s_name);
				snprintf(vaddress, vaddresslen + 1, "%s%s", prefix, x->addresses[i * 2 + 1]->s_name);
				t_osc_bndl_u *bu = osc_bundle_u_alloc();
				t_osc_msg_u *tmu = osc_message_u_allocWithAddress(taddress);
				t_osc_msg_u *vmu = osc_message_u_allocWithAddress(vaddress);
				osc_message_u_appendTimetag(tmu, osc_timetag_now());
				osc_message_u_appendDouble(vmu, 0.);
				osc_bundle_u_addMsg(bu, tmu);
				osc_bundle_u_addMsg(bu, vmu);
				t_osc_bndl_s *bs = osc_bundle_u_serialize(bu);
				char *p = osc_bundle_s_getPtr(bs);
				long tp = OSC_HEADER_SIZE + 4 + osc_util_getPaddedStringLen(taddress) + 4;
				long vp = tp + 8 + 4 + osc_util_getPaddedStringLen(vaddress) + 4;
				pbndls[j][i] = (t_oschedt_pbndl){osc_bundle_s_getLen(bs), p, tp, vp};
				osc_bundle_u_free(bu);
				osc_bundle_s_free(bs);
			}
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
	ps_FullPacket = gensym("FullPacket");
	

	ODOT_PRINT_VERSION;

	omax_realtime_clock_init();
	return 0;
}
