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
#define OMAX_DOC_SHORT_DESC "Output a bundle if it changes"
#define OMAX_DOC_LONG_DESC "o.change passes a bundle through if it is different from the last bundle that it received.  Any change including reordering the contents will cause the bundle to be passed through."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet", "OSC packet to compare against"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet if it changed", "The OSC packet if identical to the previous packet"}
#define OMAX_DOC_SEEALSO (char *[]){"change"}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_ochange *)(x))->inlet)
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif
#include "osc.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _ochange{
	t_object ob;
	void *outlet_different;
	void *outlet_same;
	int buflen, bufsize;
	char *buf;
	t_critical lock;
#ifdef OMAX_PD_VERSION
	void **proxy;
#else
	void *proxy;
#endif
	long inlet;
} t_ochange;

#ifdef OMAX_PD_VERSION
t_omax_pd_proxy_class *ochange_class;
t_omax_pd_proxy_class *ochange_proxy_class;
#else
void *ochange_class;
#endif

int ochange_copybundle(t_ochange *x, long len, char *ptr);

//void ochange_fullPacket(t_ochange *x, long len, long ptr)
void ochange_fullPacket(t_ochange *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	critical_enter(x->lock);
	long buflen = x->buflen;
	if(proxy_getinlet((t_object *)x) == 1){
		critical_exit(x->lock);
		ochange_copybundle(x, len, ptr);
		return;
	}
	if(!x->buf || buflen == 0){
		critical_exit(x->lock);
		ochange_copybundle(x, len, ptr);
		omax_util_outletOSC(x->outlet_different, len, ptr);
		return;
	}
	char buf[buflen];
	memcpy(buf, x->buf, x->buflen);
	critical_exit(x->lock);
	if(buflen == len && *buf == *ptr){
		if(*buf == '#' && *ptr == '#'){
			if(!memcmp(buf + OSC_HEADER_SIZE, ptr + OSC_HEADER_SIZE, buflen - OSC_HEADER_SIZE)){
				omax_util_outletOSC(x->outlet_same, len, ptr);
				return;
			}
		}else{// if(*buf == '/' && *ptr == '/'){
			if(!memcmp(buf, ptr, buflen)){
				omax_util_outletOSC(x->outlet_same, len, ptr);
				return;
			}
		}
	}
	ochange_copybundle(x, len, ptr);
	omax_util_outletOSC(x->outlet_different, len, ptr);
}

int ochange_copybundle(t_ochange *x, long len, char *ptr){
	char *buf = (char *)osc_mem_alloc(len);
	if(buf){
		memcpy(buf, (char *)ptr, len);
		critical_enter(x->lock);
		char *oldbuf = x->buf;
		x->buf = buf;
		x->bufsize = len;
		x->buflen = len;
		critical_exit(x->lock);
		if(oldbuf){
			osc_mem_free(oldbuf);
		}
	}else{
		object_error((t_object *)x, "out of memory!");
		return 1;
	}
	return 0;
}

void ochange_clear(t_ochange *x)
{
	critical_enter(x->lock);
	x->buflen = 0;
	critical_exit(x->lock);
}

void ochange_anything(t_ochange *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void ochange_bang(t_ochange *x)
{
}

#ifndef OMAX_PD_VERSION

OMAX_DICT_DICTIONARY(t_ochange, x, ochange_fullPacket);

void ochange_assist(t_ochange *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}
#endif

void ochange_doc(t_ochange *x)
{
	omax_doc_outletDoc(x->outlet_different);
}

void ochange_free(t_ochange *x)
{
	critical_free(x->lock);
	if(x->buf){
		osc_mem_free(x->buf);
	}
#ifdef OMAX_PD_VERSION
    pd_free(x->proxy[0]);
    pd_free(x->proxy[1]);
	free(x->proxy);
    x->proxy = NULL;
#else
	object_free(x->proxy);
#endif
}

#ifdef OMAX_PD_VERSION

void *ochange_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ochange *x;
	if((x = (t_ochange *)object_alloc(ochange_class->class))){
        
        x->proxy = (void **)malloc(2 * sizeof(t_omax_pd_proxy *));
        x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), ochange_proxy_class);
        x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), ochange_proxy_class);
        
        x->outlet_different = outlet_new((t_object *)x, gensym("FullPacket"));
		x->outlet_same = outlet_new((t_object *)x, gensym("FullPacket"));
        
		critical_new(&(x->lock));
		x->buf = NULL;
		x->bufsize = x->buflen = 0;
	}
    
	return(x);
}

int setup_o0x2echange(void)
{
    omax_pd_class_new(ochange_class, gensym("o.change"), (t_newmethod)ochange_new, (t_method)ochange_free, sizeof(t_ochange), CLASS_NOINLET, A_GIMME, 0);
    
    t_omax_pd_proxy_class *c = NULL;
	omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
	omax_pd_class_addmethod(c, (t_method)ochange_fullPacket, gensym("FullPacket"));
	omax_pd_class_addmethod(c, (t_method)ochange_doc, gensym("doc"));
	//class_addmethod(c, (t_method)ochange_bang, gensym("bang"), 0);
	//class_addmethod(c, (method)ochange_anything, "anything", A_GIMME, 0);
	//class_addmethod(c, (t_method)ochange_clear, gensym("clear"), 0);
	omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
	
	ochange_proxy_class = c;
    
	ODOT_PRINT_VERSION;
	return 0;
}

#else
void *ochange_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ochange *x;
	if((x = (t_ochange *)object_alloc(ochange_class))){
		x->outlet_same = outlet_new((t_object *)x, "FullPacket");
		x->outlet_different = outlet_new((t_object *)x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		critical_new(&(x->lock));
		x->buf = NULL;
		x->bufsize = x->buflen = 0;
	}
		   	
	return(x);
}

int main(void)
{
	t_class *c = class_new("o.change", (method)ochange_new, (method)ochange_free, sizeof(t_ochange), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)ochange_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)ochange_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ochange_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)stdinletinfo, "inletinfo", A_CANT, 0);
	class_addmethod(c, (method)ochange_doc, "doc", 0);
	//class_addmethod(c, (method)ochange_bang, "bang", 0);
	//class_addmethod(c, (method)ochange_anything, "anything", A_GIMME, 0);
	//class_addmethod(c, (method)ochange_clear, "clear", 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);
	
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
#endif
