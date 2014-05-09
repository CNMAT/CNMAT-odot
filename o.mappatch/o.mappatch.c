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
NAME: o.mappatch
DESCRIPTION: Map a patch onto the contents of an OSC bundle
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
VERSION 1.0: New name
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.mappatch"
#define OMAX_DOC_SHORT_DESC "Map the contents of an OSC bundle onto a Max patch."
#define OMAX_DOC_LONG_DESC "o.mappatch takes an OSC bundle in the right inlet and outputs each of the messages contained in it in sequence out the right outlet as OSC-style Max-messages.  After processing each message, it should be sent back into the right inlet (or not if it is to be excluded from the bundle).  After all messages have been processed, the resulting bundle with any modifications will come out the left outlet."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC FullPacket", "OSC-style Max messages to be included in the bundle."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket: results of the mapping", "OSC-style Max messages contained in the bundle."}
#define OMAX_DOC_SEEALSO (char *[]){"o.expr", "o.callpatch", "o.atomize"}


#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_omap *)(x))->inlet)
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"
#include <assert.h>

/*
When a new FullPacket message comes in, we make an unserialized bundle and stick it in our object
struct and then iterate over each message in the bundle that just came in, convert it to a Max
message, and output it out the right outlet.  If anything comes in the right inlet, add it to 
the unserialized bundle that's in our object struct--any message that went out the right outlet
that didn't produce a corresponding message in the right inlet is left out of the bundle. (this is
like the behavior of mapcan in lisp--we probably need a version of this object that behaves like
mapcar as well)

This object is inherently vulnerable to reentrancy bugs because we rely on this unserialized 
bundle in our object struct.  In order to protect against that, we set a variable in our
object struct to note that we are currently busy.  If we receive a FullPacket message while
busy, we simply copy it and add it to our queue and process it when we're done with the current
FullPacket message.

 */

typedef struct _omap_qitem{
	char *bndl;
	long len;
	struct _omap_qitem *next;
} t_omap_qitem;

typedef struct _omap{
	t_object ob;
	void *outlets[2];
#ifdef OMAX_PD_VERSION
    void **proxy;
#else
	void *proxy;
#endif
	long inlet;
	t_critical lock;
	t_omap_qitem *fifo;
	t_osc_bndl_u *bndl;
	t_osc_msg_s *msg;
	int busy;
} t_omap;

#ifdef OMAX_PD_VERSION
t_omax_pd_proxy_class *omap_class;
t_omax_pd_proxy_class *omap_proxy_class;
#else
void *omap_class;
#endif

void omap_list(t_omap *x, t_symbol *sym, short argc, t_atom *argv);
void omap_addQitem(t_omap *x, t_omap_qitem *qi);

t_symbol *ps_FullPacket;

//void omap_fullPacket(t_omap *x, long len, long ptr)
void omap_fullPacket(t_omap *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(proxy_getinlet((t_object *)x) == 1){
		if(!(x->msg) && !(x->bndl)){
			return;
		}
		// this is the argument to an OSC messsage (nested bundle)
		t_atom a[3];
		atom_setsym(a, ps_FullPacket);
		atom_setlong(a + 1, len);
		atom_setlong(a + 2, ptr);
		omap_list(x, NULL, 3, a);
		return;
	}
    
	if(x->busy){
		t_omap_qitem *qi = (t_omap_qitem *)osc_mem_alloc(sizeof(t_omap_qitem));
		qi->len = len;
		qi->bndl = (char *)osc_mem_alloc(len);
		qi->next = NULL;
		memcpy(qi->bndl, ptr, len);
		omap_addQitem(x, qi);
		return;
	}else{
		critical_enter(x->lock);
		x->busy = 1;
		critical_exit(x->lock);
	}
	x->bndl = osc_bundle_u_alloc();

	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *msg = osc_bndl_it_s_next(it);
		x->msg = msg;
		long len = omax_util_getNumAtomsInOSCMsg(msg);
		t_atom atoms[len];
		omax_util_oscMsg2MaxAtoms(msg, atoms);
		outlet_anything(x->outlets[1], atom_getsym(atoms), len - 1, atoms + 1);
	}
	osc_bndl_it_s_destroy(it);

	// I don't think we need a lock here since we're still busy
	char *buffer = NULL;
	long buflen = 0;
	critical_enter(x->lock);
	osc_bundle_u_serialize(x->bndl, &buflen, &buffer);
	critical_exit(x->lock);
	omax_util_outletOSC(x->outlets[0], buflen, buffer);
	if(buffer){
		osc_mem_free(buffer);
	}
	critical_enter(x->lock);
	if(x->bndl){
		osc_bundle_u_free(x->bndl);
		x->bndl = NULL;
	}
	x->msg = NULL;
	x->busy = 0;
	if(x->fifo){
		t_omap_qitem *qi = x->fifo;
		x->fifo = qi->next;
		// we want to do this recursively rather than use the scheduler to avoid 
		// recursion so that we don't get interrupted by a new FullPacket message while
		// we're waiting for the scheduler to execute.
		critical_exit(x->lock);
		//omap_fullPacket(x, qi->len, (long)(qi->bndl));
		t_atom a[2];
		atom_setlong(a, qi->len);
		atom_setlong(a + 1, (long)(qi->bndl));
		omap_fullPacket(x, NULL, 2, a);
		osc_mem_free(qi);
	}
	critical_exit(x->lock);
}

void omap_int(t_omap *x, long l)
{
	if(proxy_getinlet((t_object *)x) == 0){
		return;
	}
	if(!(x->msg) && !(x->bndl)){
		return;
	}
	t_atom a;
	atom_setlong(&a, l);
	omap_list(x, NULL, 1, &a);
}

void omap_float(t_omap *x, double f)
{
	if(proxy_getinlet((t_object *)x) == 0){
		return;
	}
	if(!(x->msg) && !(x->bndl)){
		return;
	}
	t_atom a;
	atom_setfloat(&a, f);
	omap_list(x, NULL, 1, &a);
}

void omap_anything(t_omap *x, t_symbol *msg, short argc, t_atom *argv)
{
	if(proxy_getinlet((t_object *)x) == 0){
		return;
	}
	if(!(x->msg) && !(x->bndl)){
		return;
	}
	if(msg){
		t_atom a[argc + 1];
		atom_setsym(a, msg);
		memcpy(a + 1, argv, argc * sizeof(t_atom));
		omap_list(x, NULL, argc + 1, a);
	}else{
		omap_list(x, NULL, argc, argv);
	}
}

void omap_list(t_omap *x, t_symbol *sym, short argc, t_atom *argv)
{
	// sym is always NULL
	if(proxy_getinlet((t_object *)x) != 1){
		// not sure what to do with this...
		return;
	}
	if(!(x->msg) && !(x->bndl)){
		return;
	}
	t_osc_msg_u *msg = NULL;
	if(atom_gettype(argv) == A_SYM){
		t_symbol *address = atom_getsym(argv);
        
        if(address)
        {
		
            if(*(address->s_name) == '/'){
                omax_util_maxAtomsToOSCMsg_u(&msg, address, argc - 1, argv + 1);
                critical_enter(x->lock);
                osc_bundle_u_addMsg(x->bndl, msg);
                critical_exit(x->lock);
                return;
            }
        }
	}
	critical_enter(x->lock);
	t_symbol *address = gensym(osc_message_s_getAddress(x->msg));
    if(address)
    {
        omax_util_maxAtomsToOSCMsg_u(&msg, address, argc, argv);
        osc_bundle_u_addMsg(x->bndl, msg);
    }
	critical_exit(x->lock);
	//t_atom av[argc + 1];
	//atom_setsym(av, address);
	//memcpy(av + 1, argv, argc * sizeof(t_atom));
	//x->buffer_pos += omax_util_encode_atoms(x->buffer + x->buffer_pos, address, argc, argv);
}

void omap_addQitem(t_omap *x, t_omap_qitem *qi)
{
	critical_enter(x->lock);
	if(x->fifo){
		t_omap_qitem *q = x->fifo;
		while(q->next){
			q = q->next;
		}
		q->next = qi;
	}else{
		x->fifo = qi;
	}
	critical_exit(x->lock);
}


void omap_doc(t_omap *x)
{
	omax_doc_outletDoc(x->outlets[0]);
}

void omap_free(t_omap *x)
{
#ifdef OMAX_PD_VERSION
    if(x->proxy){
        pd_free(x->proxy[0]); 
        pd_free(x->proxy[1]);
        free(x->proxy);
    }
#else
	if(x->proxy){
		object_free(x->proxy);
	}
#endif
}

#ifdef OMAX_PD_VERSION

void *omap_new(t_symbol *msg, short argc, t_atom *argv){
	t_omap *x;
	if((x = (t_omap *)object_alloc(omap_class->class))){
		x->outlets[0] = outlet_new((t_object *)x, NULL);
		x->outlets[1] = outlet_new((t_object *)x, gensym("FullPacket"));
		x->proxy = (void **)malloc(2 * sizeof(t_omax_pd_proxy *));
		x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), omap_proxy_class);
		x->proxy[1] = proxy_new((t_object *)x, 1, &(x->inlet), omap_proxy_class);
        
		x->bndl = NULL;
		x->msg = NULL;
		x->fifo = NULL;
		x->busy = 0;
		critical_new(&(x->lock));
	}
    
	return(x);
}

int setup_o0x2emappatch(void){
    
    omax_pd_class_new(omap_class, gensym("o.mappatch"), (t_newmethod)omap_new, (t_method)omap_free, sizeof(t_omap),  CLASS_NOINLET, A_GIMME, 0);
    
    t_omax_pd_proxy_class *c = NULL;
	omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
	omax_pd_class_addmethod(c, (t_method)omap_fullPacket, gensym("FullPacket"));
    omax_pd_class_addmethod(c, (t_method)omap_list, gensym("list"));
	omax_pd_class_addanything(c, (t_method)omap_anything);
	omax_pd_class_addfloat(c, (t_method)omap_float);
    //	omax_pd_class_addmethod(c, (t_method)opack_doc, gensym("doc")); //<<crashes
    
	omap_proxy_class = c;
    
	ODOT_PRINT_VERSION;
	return 0;
}

#else

void omap_assist(t_omap *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_omap, x, omap_fullPacket);

void *omap_new(t_symbol *msg, short argc, t_atom *argv){
	t_omap *x;
	if((x = (t_omap *)object_alloc(omap_class))){
		x->outlets[1] = outlet_new((t_object *)x, NULL);
		x->outlets[0] = outlet_new((t_object *)x, "FullPacket");
		x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
		x->bndl = NULL;
		x->msg = NULL;
		x->fifo = NULL;
		x->busy = 0;
		critical_new(&(x->lock));
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.mappatch", (method)omap_new, (method)omap_free, sizeof(t_omap), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)omap_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)omap_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)omap_doc, "doc", 0);
	class_addmethod(c, (method)omap_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)omap_int, "int", A_LONG, 0);
	class_addmethod(c, (method)omap_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)omap_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)omap_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}


	class_register(CLASS_BOX, c);
	omap_class = c;

	ps_FullPacket = gensym("FullPacket");

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}

#endif
