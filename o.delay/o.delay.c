/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009, The Regents of
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


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
NAME: o.delay
DESCRIPTION: Rewrites the timetag of an OSC bundle to a future time
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#include "version.h"
#include "ext.h"
#include "version.c"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "cmmjl/cmmjl.h"
#include "cmmjl/cmmjl_osc.h"
#include "cmmjl/cmmjl_osc_timetag.h"

typedef struct _odelay{
	t_object ob;
	void *outlet;
	void *proxy;
	long inlet;
	double delaytime;
} t_odelay;

void *odelay_class;

void odelay_fullPacket(t_odelay *x, long len, long ptr);
void odelay_change_timestamp(t_odelay *x, long len, char *buf);
void odelay_output_bundle(t_odelay *x, long len, char *buf);
void odelay_cbk(t_cmmjl_osc_message msg, void *v);
void odelay_anything(t_odelay *x, t_symbol *msg, short argc, t_atom *argv);
void odelay_int(t_odelay *x, long l);
void odelay_float(t_odelay *x, double f);
void odelay_free(t_odelay *x);
void odelay_assist(t_odelay *x, void *b, long m, long a, char *s);
void odelay_clear(t_odelay *x);
void *odelay_new(t_symbol *msg, short argc, t_atom *argv);

void odelay_fullPacket(t_odelay *x, long len, long ptr){
	long n = len;
	char buf[n * 2];
	memcpy(buf, (char *)ptr, n);
	if(strncmp((char *)ptr, "#bundle\0", 8)){
		if((n = cmmjl_osc_bundle_naked_message(len, buf, buf)) < 0){
			error("problem bundling naked message");
			return;
		}
	}

	// flatten any nested bundles
	cmmjl_osc_flatten(n, buf, buf);

	odelay_change_timestamp(x, n, buf);
	odelay_output_bundle(x, n, buf);
}

void odelay_change_timestamp(t_odelay *x, long len, char *buf){
	ntptime now, ndel, nout;
	cmmjl_osc_timetag_now_to_ntp(&now);
	cmmjl_osc_timetag_float_to_ntp(x->delaytime / 1000., &ndel);
	cmmjl_osc_timetag_add(&now, &ndel, &nout);
	cmmjl_osc_timetag_set(len, (long)buf, &nout);
}

void odelay_output_bundle(t_odelay *x, long len, char *buf){
	t_atom out[2];
	atom_setlong(&(out[0]), len);
	atom_setlong(&(out[1]), (long)buf);
	outlet_anything(x->outlet, ps_FullPacket, 2, out);
}

void odelay_int(t_odelay *x, long l){
	if(proxy_getinlet((t_object *)x) == 1){
		x->delaytime = (double)l;
	}
}

void odelay_float(t_odelay *x, double f){
	if(proxy_getinlet((t_object *)x) == 1){
		x->delaytime = f;
	}
}

void odelay_anything(t_odelay *x, t_symbol *msg, short argc, t_atom *argv){
	if(!msg){
		error("o.delay: not a properly formatted OSC-style message");
		return;
	}
	long ac = argc + 1;
	t_atom av[ac];
	atom_setsym(av, msg);
	memcpy(av + 1, argv, argc * sizeof(t_atom));
	char buf[4096];
	int len = 4096;
	cmmjl_osc_init_bundle(len, buf, NULL);
	len = cmmjl_osc_make_bundle_from_atoms(ac, av, &len, buf + 16) + 16;
	odelay_change_timestamp(x, len, buf);
	odelay_output_bundle(x, len, buf);
}

void odelay_assist(t_odelay *x, void *b, long m, long a, char *s){
	if (m == ASSIST_OUTLET)
		sprintf(s,"Probability distribution and arguments");
	else {
		switch (a) {	
		case 0:
			sprintf(s,"Random variate");
			break;
		}
	}
}

void odelay_clear(t_odelay *x){
}

void odelay_free(t_odelay *x){
	object_free(x->proxy);
}

void *odelay_new(t_symbol *msg, short argc, t_atom *argv){
	t_odelay *x;
	int i;
	if(x = (t_odelay *)object_alloc(odelay_class)){
		cmmjl_init(x, NAME, 0);
		x->outlet = outlet_new(x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		x->delaytime = 0;
		if(argc){
			x->delaytime = atom_getfloat(argv);
		}
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.delay", (method)odelay_new, (method)odelay_free, sizeof(t_odelay), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)odelay_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	//class_addmethod(c, (method)odelay_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)odelay_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)odelay_clear, "clear", 0);
	class_addmethod(c, (method)odelay_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)odelay_int, "int", A_LONG, 0);
	class_addmethod(c, (method)odelay_float, "float", A_FLOAT, 0);
    
	class_register(CLASS_BOX, c);
	odelay_class = c;

	common_symbols_init();
	return 0;
}
