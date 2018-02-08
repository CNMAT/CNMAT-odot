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


#define OMAX_DOC_NAME "o.snapshot~"
#define OMAX_DOC_SHORT_DESC "Outputs the current signal vector in an OSC bundle"
#define OMAX_DOC_LONG_DESC "o.snapshot~ takes a list of addresses and creates a signal inlet for each of them. It then outputs a bundle containing the signal vector for each input assigned to the corresponding address."
//#define OMAX_DOC_INLETS_DESC (char *[]){"Signal"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC bundle"}
#define OMAX_DOC_SEEALSO (char *[]){"o.edge~"}

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
#include "osc_util.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "omax_realtime.h"

#define OSSHOT_AC 9
#define OSSHOT_HEADER_SIZE 5
#define OSSHOT_HEADER_SRATE 0
#define OSSHOT_HEADER_BSIZE 1
#define OSSHOT_HEADER_BCOUNT 2
#define OSSHOT_HEADER_TTL 3
#define OSSHOT_HEADER_TTR 4

#define OSSHOT_AV_BNDLLEN 5
#define OSSHOT_AV_BNDLPTRL 6
#define OSSHOT_AV_BNDLPTRR 7
#define OSSHOT_AV_SHOULDFREE 8

typedef struct _osshot{
	t_pxobject ob;
	void *outlet;
	t_symbol **addresses;
	char **inlet_assist_strings;
	int nmsgs;
	int ac;
	t_atom *av;
	long bndllen;
	char *bndls;
	int bufnum;
	int32_t *dataptrs;
	t_osc_timetag dspstarttime;
	long blockcount;
	long prevblocksize;
	char *typetags;
} t_osshot;

void *osshot_class;

struct osshot_header
{
	double sr;
	long blocksize;
	double blockcount;
	t_osc_timetag dspstarttime;
	t_osc_timetag now;
} osshot_decodeHeader(t_osshot *x, int argc, t_atom *argv)
{
	return (struct osshot_header){
		(double)atom_getfloat(argv + OSSHOT_HEADER_SRATE),
		(long)atom_getlong(argv + OSSHOT_HEADER_BSIZE),
		(double)atom_getfloat(argv + OSSHOT_HEADER_BCOUNT),
		x->dspstarttime,
		(t_osc_timetag){atom_getlong(argv + OSSHOT_HEADER_TTL), atom_getlong(argv + OSSHOT_HEADER_TTR)}
	};
}

void osshot_callback(t_osshot *x, t_symbol *msg, int argc, t_atom *argv)
{
	struct osshot_header h = osshot_decodeHeader(x, argc, argv);
	long len = atom_getlong(argv + OSSHOT_AV_BNDLLEN);
	uint64_t lptr = ((uint64_t)atom_getlong(argv + OSSHOT_AV_BNDLPTRL) << 32) | ((uint64_t)atom_getlong(argv + OSSHOT_AV_BNDLPTRR));
	char *ptr = (char *)lptr;
	omax_util_outletOSC(x->outlet, len, ptr);
	ptr[0] = 0;
	if(atom_getlong(argv + OSSHOT_AV_SHOULDFREE)){
		osc_mem_free(ptr);
	}
}

void osshot_perform64(t_osshot *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	omax_realtime_clock_tick(x);
	t_osc_timetag now;
	omax_realtime_clock_now(&now);

	atom_setlong(x->av + OSSHOT_HEADER_BSIZE, vectorsize);
	atom_setlong(x->av + OSSHOT_HEADER_BCOUNT, x->blockcount++);
	atom_setlong(x->av + OSSHOT_HEADER_TTL, osc_timetag_ntp_getSeconds(now));//(((uint64_t)now) & 0xffffffff00000000) >> 32);
	atom_setlong(x->av + OSSHOT_HEADER_TTR, osc_timetag_ntp_getFraction(now));//(((uint64_t)now) & 0xffffffff));
	
	char *bndlptr = x->bndls + (x->bufnum * x->bndllen);
	int shouldfree = 0;
	if(bndlptr[0]){
		bndlptr = (char *)osc_mem_alloc(x->bndllen);
		memcpy(bndlptr, x->bndls, x->bndllen);
		shouldfree = 1;
	}
	bndlptr[0] = '#';
	int tvec[numins], dvec[numins];
	int ntvec = 0, ndvec = 0;
	for(int i = 0; i < numins; i++){
		if(x->typetags[i] == 't'){
			tvec[ntvec++] = i;
		}else{
			dvec[ndvec++] = i;
		}
	}
	for(int i = 0; i < vectorsize; i++){
		for(int j = 0; j < ntvec; j++){
			osc_timetag_encodeForHeader(*((t_osc_timetag *)&(ins[tvec[j]][i])), bndlptr + x->dataptrs[tvec[j]] + (i * 8));
		}
		for(int j = 0; j < ndvec; j++){
			*((uint64_t *)(bndlptr + x->dataptrs[dvec[j]] + (i * 8))) = hton64(*((uint64_t *)&(ins[dvec[j]][i])));
		}
	}
	atom_setlong(x->av + OSSHOT_AV_BNDLLEN, x->bndllen);
	atom_setlong(x->av + OSSHOT_AV_BNDLPTRL, (((uint64_t)bndlptr) & 0xffffffff00000000) >> 32);
	atom_setlong(x->av + OSSHOT_AV_BNDLPTRR, (((uint64_t)bndlptr) & 0xffffffff));
	atom_setlong(x->av + OSSHOT_AV_SHOULDFREE, shouldfree);
	schedule_delay(x, (method)osshot_callback, 0, NULL, OSSHOT_AC, x->av);
	x->bufnum = (x->bufnum + 1) % 3;
}

void osshot_dsp64(t_osshot *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	omax_realtime_clock_register(x);
	x->blockcount = 0;
	atom_setlong(x->av + OSSHOT_HEADER_SRATE, samplerate);
	object_method(dsp64, gensym("dsp_add64"), x, osshot_perform64, 0, NULL);
	if(x->prevblocksize != maxvectorsize){
		if(x->bndls){
			osc_mem_free(x->bndls);
			x->bndllen = 0;
		}
		t_osc_bndl_u *b = osc_bundle_u_alloc();
		t_osc_msg_u *m[x->nmsgs];
		for(int i = 0; i < x->nmsgs; i++){
			m[i] = osc_message_u_allocWithAddress(x->addresses[i]->s_name);
			osc_bundle_u_addMsg(b, m[i]);
		}
		for(int i = 0; i < maxvectorsize; i++){
			for(int j = 0; j < x->nmsgs; j++){
				switch(x->typetags[j]){
				case 't':
					osc_message_u_appendTimetag(m[j], OSC_TIMETAG_NULL);
					break;
				default:
					osc_message_u_appendDouble(m[j], 0.);
					break;
				}
			}
		}
		t_osc_bndl_s *bs = osc_bundle_u_serialize(b);
		osc_bundle_u_free(b);
		long bndllen = x->bndllen = osc_bundle_s_getLen(bs);
		char *bndlptr = osc_bundle_s_getPtr(bs);
		x->bndls = (char *)osc_mem_alloc(bndllen * 3);
		for(int i = 0; i < 3; i++){
			memcpy(x->bndls + (i * bndllen), bndlptr, bndllen);
			x->bndls[i * bndllen] = 0;
		}
		int32_t p = OSC_HEADER_SIZE;
		int i = 0;
		while(p  < bndllen && i < x->nmsgs){
			long size = ntoh32(*((int32_t *)(bndlptr + p)));
			size_t palen = osc_util_getPaddedStringLen(bndlptr + p + 4);
			size_t pttlen = osc_util_getPaddedStringLen(bndlptr + p + 4 + palen);
			x->dataptrs[i] = p + 4 + palen + pttlen;
			p += size + 4;
			i++;
		}
		x->bufnum = 0;
		osc_bundle_s_deepFree(bs);
	}
}

void osshot_otypetag(t_osshot *x, t_symbol *msg, short argc, t_atom *argv)
{
	int inlet = proxy_getinlet((t_object *)x);
	if(argc && inlet < x->nmsgs){
		x->typetags[inlet] = (char)atom_getlong(argv);
	}
}

//OMAX_DICT_DICTIONARY(t_osshot, x, osshot_fullPacket);

void osshot_doc(t_osshot *x)
{
	//omax_doc_outletDoc(x->outlet);
	_omax_doc_outletDoc(x->outlet,
			    OMAX_DOC_NAME,
			    OMAX_DOC_SHORT_DESC,
			    OMAX_DOC_LONG_DESC,
			    x->nmsgs,
			    x->inlet_assist_strings,
			    1,
			    OMAX_DOC_OUTLETS_DESC,
			    OMAX_DOC_NUM_SEE_ALSO_REFS,
			    OMAX_DOC_SEEALSO);
}

void osshot_assist(t_osshot *x, void *b, long io, long num, char *buf)
{
	//omax_doc_assist(io, num, buf);
	_omax_doc_assist(io,
			 num,
			 buf,
			 x->nmsgs,
			 x->inlet_assist_strings,
			 1,
			 OMAX_DOC_OUTLETS_DESC);
}

void osshot_free(t_osshot *x)
{
	dsp_free((t_pxobject *)x);
	if(x->addresses){
		free(x->addresses);
	}
	if(x->av){
		free(x->av);
	}
	if(x->dataptrs){
		free(x->dataptrs);
	}
	if(x->bndls){
		osc_mem_free(x->bndls);
	}
	if(x->inlet_assist_strings){
		for(int i = 0; i < x->nmsgs; i++){
			if(x->inlet_assist_strings[i]){
				free(x->inlet_assist_strings[i]);
			}
		}
		free(x->inlet_assist_strings);
	}
	if(x->typetags){
		free(x->typetags);
	}
}

void *osshot_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_osshot *x = NULL;
	if(argc == 0){
		return NULL;
	}
	if((x = (t_osshot *)object_alloc(osshot_class))){
  		dsp_setup((t_pxobject *)x, argc); 
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->addresses = (t_symbol **)malloc(argc * sizeof(t_symbol *));
		x->inlet_assist_strings = (char **)malloc(argc * sizeof(char *));
		for(int i = 0; i < argc; i++){
			x->addresses[i] = atom_getsym(argv + i);
			long ilen = snprintf(NULL, 0, "Signal that will be bound to %s", x->addresses[i]->s_name);
			x->inlet_assist_strings[i] = malloc(ilen + 1);
			snprintf(x->inlet_assist_strings[i], ilen + 1, "Signal that will be bound to %s", x->addresses[i]->s_name);
		}
	        x->nmsgs = argc;
		x->dataptrs = (int32_t *)calloc(x->nmsgs, sizeof(int32_t));
		x->typetags = (char *)calloc(argc, sizeof(char));
		x->ac = OSSHOT_AC;
		x->av = (t_atom *)malloc(x->ac * sizeof(t_atom));
		x->dspstarttime = OSC_TIMETAG_NULL;
		x->blockcount = 0;
		x->prevblocksize = 0;
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.snapshot~", (method)osshot_new, (method)osshot_free, sizeof(t_osshot), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)osshot_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)osshot_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)osshot_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)osshot_doc, "doc", 0);
    	class_addmethod(c, (method)osshot_dsp64, "dsp64", A_CANT, 0);
	class_addmethod(c, (method)osshot_otypetag, "o.typetag", A_GIMME, 0);
	//class_addmethod(c, (method)osshot_bang, "bang", 0);
	//class_addmethod(c, (method)osshot_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	osshot_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	omax_realtime_clock_init();
	return 0;
}
