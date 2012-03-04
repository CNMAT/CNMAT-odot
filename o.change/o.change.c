/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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
  NAME: o.change
  DESCRIPTION: Pass a bundle through if it is different from the previous one
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2011
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#define OMAX_DOC_NAME "o.change"
#define OMAX_DOC_SHORT_DESC "Output a bundle if it changes."
#define OMAX_DOC_LONG_DESC "o.change passes a bundle through if it is different from the last bundle that it received.  Any change including reordering the contents will cause the bundle to be passed through"
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet if it changed."}
#define OMAX_DOC_SEEALSO (char *[]){"change"}

#include "../odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"

typedef struct _ochange{
	t_object ob;
	void *outlet;
	int buflen, bufsize;
	char *buf;
	t_critical lock;
} t_ochange;

void *ochange_class;

void ochange_fullPacket(t_ochange *x, long len, long ptr);
void ochange_cbk(t_osc_msg msg, void *v);
int ochange_copybundle(t_ochange *x, long len, char *ptr);
void ochange_clear(t_ochange *x);
void ochange_anything(t_ochange *x, t_symbol *msg, int argc, t_atom *argv);
void ochange_bang(t_ochange *x);
void ochange_free(t_ochange *x);
void *ochange_new(t_symbol *msg, short argc, t_atom *argv);

void ochange_fullPacket(t_ochange *x, long len, long ptr){
	if(!x->buf || x->buflen == 0){
		ochange_copybundle(x, len, (char *)ptr);
		omax_util_outletOSC(x->outlet, len, (char *)ptr);
		return;
	}
	long buflen = x->buflen;
	char buf[buflen];
	critical_enter(x->lock);
	memcpy(buf, x->buf, buflen);
	critical_exit(x->lock);
	if(buflen == len){
		if(!memcmp(buf, (char *)ptr, buflen)){
			return;
		}
	}
	ochange_copybundle(x, len, (char *)ptr);
	omax_util_outletOSC(x->outlet, len, (char *)ptr);
}

int ochange_copybundle(t_ochange *x, long len, char *ptr){
	char *buf = (char *)osc_mem_alloc(len);
	if(buf){
		memcpy(buf, (char *)ptr, len);
		critical_enter(x->lock);
		char *oldbuf = x->buf;
		x->buf = buf;
		x->bufsize = x->buflen = len;
		osc_mem_free(oldbuf);
		critical_exit(x->lock);
	}else{
		object_error((t_object *)x, "out of memory!");
		return 1;
	}
	return 0;
}

void ochange_clear(t_ochange *x)
{
	x->buflen = 0;
}

void ochange_anything(t_ochange *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void ochange_bang(t_ochange *x)
{
	long len = x->buflen;
	char buf[len];
	critical_enter(x->lock);
	memcpy(buf, x->buf, len);
	critical_exit(x->lock);
	omax_util_outletOSC(x->outlet, len, buf);
}

void ochange_doc(t_ochange *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ochange_assist(t_ochange *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void ochange_free(t_ochange *x)
{
	critical_free(x->lock);
	if(x->buf){
		osc_mem_free(x->buf);
	}
}

void *ochange_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ochange *x;
	if(x = (t_ochange *)object_alloc(ochange_class)){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
		x->buf = NULL;
		x->bufsize = x->buflen = 0;
	}
		   	
	return(x);
}

int main(void)
{
	t_class *c = class_new("o.change", (method)ochange_new, (method)ochange_free, sizeof(t_ochange), 0L, A_GIMME, 0);
	class_addmethod(c, (method)ochange_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)ochange_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ochange_doc, "doc", 0);
	//class_addmethod(c, (method)ochange_notify, "notify", A_CANT, 0);
	class_addmethod(c, (method)ochange_bang, "bang", 0);
	class_addmethod(c, (method)ochange_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)ochange_clear, "clear", 0);
	
	class_register(CLASS_BOX, c);
	ochange_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
/*
t_max_err ochange_notify(t_ochange *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
