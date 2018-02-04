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
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "omax_realtime.h"

#define OSSHOT_HEADER_SIZE 5
#define OSSHOT_HEADER_SRATE 0
#define OSSHOT_HEADER_BSIZE 1
#define OSSHOT_HEADER_BCOUNT 2
#define OSSHOT_HEADER_TTL 3
#define OSSHOT_HEADER_TTR 4

typedef struct _osshot{
	t_pxobject ob;
	void *outlet;
	t_symbol **addresses;
	char **inlet_assist_strings;
	int nmsgs;
	int ac;
	t_atom *av;
	t_osc_bndl_u *bndl;
	t_osc_msg_u **msgs;
	t_osc_timetag dspstarttime;
	long blockcount;
	char *typetags;
} t_osshot;

void *osshot_class;

void osshot_emitAndFree(t_osshot *x)
{
	t_osc_bndl_s *bs = osc_bundle_u_serialize(x->bndl);
	if(bs){
		omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
		osc_bundle_s_deepFree(bs);
	}

	for(int i = 0; i < x->nmsgs; i++){
		osc_message_u_clearArgs(x->msgs[i]);
	}
}

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
	for(int i = 0; i < x->nmsgs; i++){
		switch(x->typetags[i]){
		case 't':
			for(int j = 0; j < h.blocksize; j++){
				double d = atom_getfloat(argv + OSSHOT_HEADER_SIZE + (i * h.blocksize + j));
				osc_message_u_appendTimetag(x->msgs[i], *((t_osc_timetag *)(&d)));
			}
			break;
		default:
			for(int j = 0; j < h.blocksize; j++){
				osc_message_u_appendDouble(x->msgs[i], atom_getfloat(argv + OSSHOT_HEADER_SIZE + (i * h.blocksize + j)));
			}
		}
 	}
	osshot_emitAndFree(x);
}

void osshot_callback_a32(t_osshot *x, t_symbol *msg, int argc, t_atom *argv)
{
	struct osshot_header h = osshot_decodeHeader(x, argc, argv);
	for(int i = 0; i < x->nmsgs; i++){
		switch(x->typetags[i]){
		case 't':
			for(int j = 0; j < h.blocksize; j++){
				uint64_t f1 = (uint64_t)atom_getlong(argv + OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2));
				uint64_t f2 = (uint64_t)atom_getlong(argv + OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2 + 1));
				uint64_t f = ((f1 & 0xffffffff) << 32) | (f2 & 0xffffffff);
				//printf("%s:%d: channel = %d, sample = %d, f1idx = %d, f2idx = %d, f1val = 0x%llX, f2val = 0x%llX, f = 0x%llX\n", __func__, __LINE__, i, j, OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2), OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2 + 1), f1, f2, f);
				osc_message_u_appendTimetag(x->msgs[i], *((t_osc_timetag *)(&f)));
			}
			break;
		default:
			for(int j = 0; j < h.blocksize; j++){
				uint64_t f1 = (uint64_t)atom_getlong(argv + OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2));
				uint64_t f2 = (uint64_t)atom_getlong(argv + OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2 + 1));
				uint64_t f = ((f1 & 0xffffffff) << 32) | (f2 & 0xffffffff);
				//printf("%s:%d: channel = %d, sample = %d, f1idx = %d, f2idx = %d, f1val = 0x%llX, f2val = 0x%llX, f = 0x%llX\n", __func__, __LINE__, i, j, OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2), OSSHOT_HEADER_SIZE + (i * (h.blocksize * 2)) + (j * 2 + 1), f1, f2, f);
				osc_message_u_appendDouble(x->msgs[i], *((double *)&f));
			}
		}
 	}
	osshot_emitAndFree(x);
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
	for(int i = 0; i < numins; i++){
		atom_setdouble_array(vectorsize, x->av + (i * vectorsize) + OSSHOT_HEADER_SIZE, vectorsize, ins[i]);
	}
	schedule_delay(x, (method)osshot_callback, 0, NULL, numins * vectorsize + OSSHOT_HEADER_SIZE, x->av);
}

// perform routine if we're running in an environment with a 32 bit atom
void osshot_perform64_a32(t_osshot *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	omax_realtime_clock_tick(x);
	t_osc_timetag now;
	omax_realtime_clock_now(&now);

	atom_setlong(x->av + OSSHOT_HEADER_BSIZE, vectorsize);
	atom_setlong(x->av + OSSHOT_HEADER_BCOUNT, x->blockcount++);
	atom_setlong(x->av + OSSHOT_HEADER_TTL, osc_timetag_ntp_getSeconds(now));//(((uint64_t)now) & 0xffffffff00000000) >> 32);
	atom_setlong(x->av + OSSHOT_HEADER_TTR, osc_timetag_ntp_getFraction(now));//(((uint64_t)now) & 0xffffffff));
	for(int i = 0; i < vectorsize; i++){
		for(int j = 0; j < numins; j++){
			uint64_t f = *((uint64_t *)&(ins[j][i]));
			//printf("%s:%d: channel = %d, sample = %d, f1idx = %d, f2idx = %d, f1val = 0x%llX, f2val = 0x%llX, f = 0x%llX\n", __func__, __LINE__, j, i, OSSHOT_HEADER_SIZE + (i * 2) + (j * (vectorsize * 2)), OSSHOT_HEADER_SIZE + (i * 2 + 1) + (j * (vectorsize * 2)), (f & 0xffffffff00000000) >> 32, f & 0x00000000ffffffff, f);
			atom_setlong(x->av + OSSHOT_HEADER_SIZE + (i * 2) + (j * (vectorsize * 2)), (f & 0xffffffff00000000) >> 32);
			atom_setlong(x->av + OSSHOT_HEADER_SIZE + (i * 2 + 1) + (j * (vectorsize * 2)), f & 0x00000000ffffffff);
		}

	}
	schedule_delay(x, (method)osshot_callback_a32, 0, NULL, numins * (vectorsize * 2) + OSSHOT_HEADER_SIZE, x->av);
}

void osshot_alloc_atom_array(t_osshot *x, int n)
{
	if(sizeof(t_atom_long) == 4){
		n *= 2;
	}
	if(n * x->nmsgs + OSSHOT_HEADER_SIZE != x->ac){
		x->ac = n * x->nmsgs + OSSHOT_HEADER_SIZE;
		x->av = (t_atom *)sysmem_resizeptr(x->av, (n * x->nmsgs + OSSHOT_HEADER_SIZE) * sizeof(t_atom));
	}
}

void osshot_dsp64(t_osshot *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	omax_realtime_clock_register(x);
	x->blockcount = 0;
	osshot_alloc_atom_array(x, maxvectorsize);
	atom_setlong(x->av, samplerate);
	if(sizeof(t_atom_long) == 8){
		object_method(dsp64, gensym("dsp_add64"), x, osshot_perform64, 0, NULL);
	}else{
		object_method(dsp64, gensym("dsp_add64"), x, osshot_perform64_a32, 0, NULL);
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
		sysmem_freeptr(x->av);
	}
	if(x->bndl){
		osc_bundle_u_free(x->bndl);
	}
	if(x->msgs){
		osc_mem_free(x->msgs);
	}
	if(x->inlet_assist_strings){
		for(int i = 0; i < x->nmsgs; i++){
			if(x->inlet_assist_strings[i]){
				free(x->inlet_assist_strings[i]);
			}
		}
		free(x->inlet_assist_strings);
	}
}

void *osshot_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_osshot *x = NULL;
	if((x = (t_osshot *)object_alloc(osshot_class))){
  		dsp_setup((t_pxobject *)x, argc); 
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->bndl = osc_bundle_u_alloc();
		x->msgs = (t_osc_msg_u **)osc_mem_alloc(argc * sizeof(t_osc_msg_u *));
		x->addresses = (t_symbol **)malloc(argc * sizeof(t_symbol *));
		x->inlet_assist_strings = (char **)malloc(argc * sizeof(char *));
		for(int i = 0; i < argc; i++){
			x->addresses[i] = atom_getsym(argv + i);
			long ilen = snprintf(NULL, 0, "Signal that will be bound to %s", x->addresses[i]->s_name);
			x->inlet_assist_strings[i] = malloc(ilen + 1);
			snprintf(x->inlet_assist_strings[i], ilen + 1, "Signal that will be bound to %s", x->addresses[i]->s_name);
			x->msgs[i] = osc_message_u_allocWithAddress(atom_getsym(argv + i)->s_name);
			osc_bundle_u_addMsg(x->bndl, x->msgs[i]);
		}
		x->typetags = (char *)calloc(argc, sizeof(char));
		x->nmsgs = argc;
		x->ac = 0;
		x->av = NULL;
		x->dspstarttime = OSC_TIMETAG_NULL;
		x->blockcount = 0;
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
