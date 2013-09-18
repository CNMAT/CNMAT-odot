/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2013, The Regents of
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


#define OMAX_DOC_NAME "o.edge~"
#define OMAX_DOC_SHORT_DESC "Report transitions between 0 and non-zero"
#define OMAX_DOC_LONG_DESC "o.edge~ is similar to edge~. It reports all zero to non-zero and non-zero to zero transitions that occur in a signal vector."
#define OMAX_DOC_INLETS_DESC (char *[]){"Signal"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC bundle"}
#define OMAX_DOC_SEEALSO (char *[]){"edge~"}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "ext_sysmem.h"
#include "z_dsp.h"
#include "osc.h"
#include "osc_serial.h"
#include "osc_mem.h"
#include "osc_bundle_iterator_s.h"
#include "osc_timetag.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _oedge{
	t_pxobject ob;
	void *outlet;
	t_critical lock;
	int ac;
	t_atom *av;
	double lastx;
	int gettime;
	t_osc_timetag dspstarttime;
	double blockcount;
} t_oedge;

void *oedge_class;

void oedge_addMessageToBundle(t_osc_bndl_u *b, char *baseaddress, int samplenum, t_osc_timetag t)
{
	t_osc_msg_u *m = osc_message_u_alloc();
	char address[128];
	sprintf(address, "%s/%d", baseaddress, samplenum);
	osc_message_u_setAddress(m, address);
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setTimetag(a, t);
	osc_message_u_appendAtom(m, a);
	osc_bundle_u_addMsg(b, m);
}

t_osc_timetag oedge_computeTime(t_osc_timetag dspstarttime, double samplerate, double blocksize, double blockcount, double samplenum)
{
	t_osc_timetag t = osc_timetag_floatToTimetag(((blockcount * blocksize) + samplenum) / samplerate);
	return osc_timetag_add(dspstarttime, t);
}

void oedge_callback(t_oedge *x, t_symbol *msg, int argc, t_atom *argv)
{
	double lastx = x->lastx;
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	double sr = atom_getfloat(argv);
	double blockcount = atom_getlong(argv + 1);
	t_osc_timetag dspstarttime = x->dspstarttime;
	for(int i = 0; i < argc; i++){
		double xx = atom_getfloat(argv + i + 2);
		if(lastx == 0 && xx != 0){
			t_osc_timetag t = oedge_computeTime(dspstarttime, sr, argc, blockcount, i);
			oedge_addMessageToBundle(b, "/zerotononzero", i, t);
		}else if(lastx != 0 && xx == 0){
			t_osc_timetag t = oedge_computeTime(dspstarttime, sr, argc, blockcount, i);
			oedge_addMessageToBundle(b, "/nonzerotozero", i, t);
		}
		lastx = xx;
	}
	x->lastx = lastx;
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf && len){
		omax_util_outletOSC(x->outlet, len, buf);
		osc_mem_free(buf);
	}
	osc_bundle_u_free(b);
}

void oedge_perform64(t_oedge *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long vectorsize, long flags, void *userparam)
{
	if(x->gettime){
		omax_gconfig_getDspStartTime(&(x->dspstarttime));
		x->gettime = 0;
	}

	atom_setlong(x->av + 1, x->blockcount++);
	atom_setdouble_array(x->ac, x->av + 2, vectorsize, ins[0]);
	schedule_delay(x, (method)oedge_callback, 0, NULL, vectorsize + 2, x->av);
}

t_int *oedge_perform(t_int *w) 
{
	t_oedge *x = (t_oedge *)(w[1]);
	t_float *in = (t_float *)(w[2]);
	t_int n = (t_float *)(w[3]);

	if(x->gettime){
		omax_gconfig_getDspStartTime(&(x->dspstarttime));
		x->gettime = 0;
	}

	atom_setlong(x->av + 1, x->blockcount++);
	atom_setfloat_array(x->ac, x->av + 2, n, in);
	schedule_delay(x, (method)oedge_callback, 0, NULL, n + 2, x->av);
	return w + 4;
}

void oedge_alloc_atom_array(t_oedge *x, int n)
{
	if(n + 2 != x->ac){
		x->ac = n + 2;
		x->av = (t_atom *)sysmem_resizeptr(x->av, (n + 2) * sizeof(t_atom));
	}
}

void oedge_dsp64(t_oedge *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
	x->gettime = 1;
	omax_gconfig_setDspStartTime(osc_timetag_now());
	x->blockcount = 0;
	oedge_alloc_atom_array(x, maxvectorsize);
	atom_setlong(x->av, samplerate);
	object_method(dsp64, gensym("dsp_add64"), x, oedge_perform64, 0, NULL);
}

void oedge_dsp(t_oedge *x, t_signal **sp, short *count)
{
	x->gettime = 1;
	omax_gconfig_setDspStartTime(osc_timetag_now());
	x->blockcount = 0;
	oedge_alloc_atom_array(x, sp[0]->s_n);
	atom_setlong(x->av, sp[0]->s_sr);
	dsp_add(oedge_perform, 3, x, sp[0]->s_vec, sp[0]->s_n);
}

//OMAX_DICT_DICTIONARY(t_oedge, x, oedge_fullPacket);

void oedge_doc(t_oedge *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oedge_assist(t_oedge *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void oedge_free(t_oedge *x)
{
	dsp_free((t_pxobject *)x);
	critical_free(x->lock);
	if(x->av){
		sysmem_freeptr(x->av);
	}
}

void *oedge_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oedge *x = NULL;
	if((x = (t_oedge *)object_alloc(oedge_class))){
  		dsp_setup((t_pxobject *)x, 1); 
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
		x->ac = 0;
		x->av = NULL;
		x->lastx = 0;
		x->gettime = 0;
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.edge~", (method)oedge_new, (method)oedge_free, sizeof(t_oedge), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oedge_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)oedge_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oedge_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oedge_doc, "doc", 0);
    	class_addmethod(c, (method)oedge_dsp, "dsp", A_CANT, 0);
    	class_addmethod(c, (method)oedge_dsp64, "dsp64", A_CANT, 0);
	//class_addmethod(c, (method)oedge_bang, "bang", 0);
	//class_addmethod(c, (method)oedge_anything, "anything", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
    	class_dspinit(c);

	class_register(CLASS_BOX, c);
	oedge_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	srandomdev();
	return 0;
}
/*
t_max_err oedge_notify(t_oedge *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
