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
 NAME: o.listiter
 DESCRIPTION: Spit out dedicated subbundles for every element of a list at a user-defined OSC address.
 AUTHORS: Ilya Y. Rostovtsev
 COPYRIGHT_YEARS: 2014-ll
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */

#define OMAX_DOC_NAME "o.listiter"
#define OMAX_DOC_SHORT_DESC "Iterate over a list at a user-defined OSC address"
#define OMAX_DOC_LONG_DESC "o.listiter iterates over a list at a user-defined OSC address."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packets for each element of the list.", "Delegation outlet - unmatched OSC addresses."}
#define OMAX_DOC_SEEALSO (char *[]){"o.route"}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif
#include "osc.h"
#include "osc_mem.h"
#include "osc_message_iterator_u.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _olistiter{
	t_object ob;
	void **outlets;
	t_symbol *address;
	t_critical lock;
} t_olistiter;


void *olistiter_class;

void olistiter_fullPacket(t_olistiter *x, t_symbol *msg, int argc, t_atom *argv);
void olistiter_doFullPacket(t_olistiter *x, long len, char *ptr);
void olistiter_bang(t_olistiter *x);
void olistiter_anything(t_olistiter *x, t_symbol *msg, short argc, t_atom *argv);
void olistiter_free(t_olistiter *x);
void olistiter_assist(t_olistiter *x, void *b, long io, long num, char *buf);
void *olistiter_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_FullPacket;

void olistiter_fullPacket(t_olistiter *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	osc_bundle_s_wrap_naked_message(len, ptr);
	olistiter_doFullPacket(x, len, ptr);
}

void olistiter_doFullPacket(t_olistiter *x,
                           long len,
                           char *ptr)
{
    if (!x->address) {
        return;
    }
    t_osc_array* matches = NULL;
    osc_bundle_s_lookupAddress(len, ptr, x->address->s_name, &matches, 1);
    
    char delegate[len];
    long dlen = len;
    memcpy(delegate, ptr, len);
    
    if (matches) {
        // right outlet:
        osc_bundle_s_removeMessage(x->address->s_name, &dlen, delegate, 1);
        omax_util_outletOSC(x->outlets[0], dlen, delegate);
        
        // left outlet:
        for (int i = 0; i < osc_array_getLen(matches); ++i) {
            t_osc_message_s* message_match = (t_osc_message_s*)osc_array_get(matches, i);
            t_osc_message_u* unserialized_msg = NULL;
            osc_message_s_deserialize(message_match, &unserialized_msg);
            
            int array_length = osc_message_u_getArgCount(unserialized_msg);

            for (int j = 0; j < array_length; ++j) {
                t_osc_atom_u* iter_atom = NULL;
                osc_message_u_getArg(unserialized_msg, j, &iter_atom);
                if (iter_atom) {
                    t_osc_bundle_u* unserialized_result = NULL;
                    
                    char type = osc_atom_u_getTypetag(iter_atom);
                    
                    if (type == '.') { // subbundle
                        osc_bundle_u_copy(&unserialized_result, osc_atom_u_getBndl(iter_atom));
                    } else { // not a subbundle
                        unserialized_result = osc_bundle_u_alloc();
                        t_osc_message_u* value = osc_message_u_allocWithAddress("/anonymous");
                        osc_message_u_appendAtom(value, iter_atom);
                        osc_bundle_u_addMsg(unserialized_result, value);
                    }
                    
                    t_osc_message_u* count = osc_message_u_allocWithAddress("/iterationcount");
                    osc_message_u_appendInt32(count, (j+1));
                    t_osc_message_u* length = osc_message_u_allocWithAddress("/length");
                    osc_message_u_appendInt32(length, array_length);
                    osc_bundle_u_addMsg(unserialized_result, count);
                    osc_bundle_u_addMsg(unserialized_result, length);
                    long serialized_result_length = 0;
                    char* serialized_result = NULL;
                    osc_bundle_u_serialize(unserialized_result, &serialized_result_length, &serialized_result);
                    
                    if (serialized_result) {
                        omax_util_outletOSC(x->outlets[1], serialized_result_length, serialized_result);
                        osc_mem_free(serialized_result);
                        osc_bundle_u_free(unserialized_result);
                        unserialized_result = NULL;
                    }
                }
            }
            osc_message_u_free(unserialized_msg);
        }
    } else {
        // right outlet:
        omax_util_outletOSC(x->outlets[0], dlen, delegate);
        
        // left outlet:
        t_osc_message_u* count = osc_message_u_allocWithAddress("/iterationcount");
        osc_message_u_appendInt32(count, 0);
        t_osc_message_u* length = osc_message_u_allocWithAddress("/length");
        osc_message_u_appendInt32(length, 0);
        t_osc_bundle_u* unserialized_result = osc_bundle_u_alloc();
        osc_bundle_u_addMsg(unserialized_result, count);
        osc_bundle_u_addMsg(unserialized_result, length);
        
        long serialized_result_length = 0;
        char* serialized_result = NULL;
        osc_bundle_u_serialize(unserialized_result, &serialized_result_length, &serialized_result);
        
        if (serialized_result) {
            omax_util_outletOSC(x->outlets[1], serialized_result_length, serialized_result);
            osc_mem_free(serialized_result);
            osc_bundle_u_free(unserialized_result);
            unserialized_result = NULL;
        }
    }
    osc_mem_free(delegate);
}

void olistiter_bang(t_olistiter *x)
{
	olistiter_doFullPacket(x, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
}

void olistiter_anything(t_olistiter *x, t_symbol *selector, short argc, t_atom *argv)
{
	t_osc_msg_u *msg = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg, selector, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		return;
	}
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	osc_bundle_u_addMsg(bndl, msg);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(bndl, &len, &buf);
	if(buf){
		olistiter_doFullPacket(x, len, buf);
		osc_mem_free(buf);
	}
	osc_bundle_u_free(bndl);
}

void olistiter_doc(t_olistiter *x)
{
	omax_doc_outletDoc(x->outlets[0]);
}

void olistiter_free(t_olistiter *x)
{
	critical_free(x->lock);
    free(x->outlets);
}

void *olistiter_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_olistiter *x;
	if((x = (t_olistiter *)object_alloc(olistiter_class))){
		x->address = NULL;
		if(argc){
			if(atom_gettype(argv) == A_SYM){
				t_symbol *s = atom_getsym(argv);
				if(s->s_name[0] != '/'){
					object_error((t_object *)x, "address must begin with a slash");
					return NULL;
				}
				x->address = s;
			}else{
				object_error((t_object *)x, "argument must be an OSC address (symbol)");
				return NULL;
			}
            x->outlets = osc_mem_alloc(2 * sizeof(void *));
            x->outlets[0] = outlet_new((t_object*)x, NULL);
            x->outlets[1] = outlet_new((t_object*)x, NULL);
            critical_new(&(x->lock));
		} else {
            object_error((t_object*)x, "o.listiter needs an OSC address as its first argument");
        }
	}
	return x;
}
#ifdef OMAX_PD_VERSION

int setup_o0x2elistiter(void)
{
	t_class *c = class_new(gensym("o.listiter"), (t_newmethod)olistiter_new, (t_method)olistiter_free, sizeof(t_olistiter), 0L, A_GIMME, 0);
    
	class_addmethod(c, (t_method)olistiter_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)olistiter_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)olistiter_bang, gensym("bang"), 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	olistiter_class = c;
    
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#else

void olistiter_assist(t_olistiter *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_olistiter, x, olistiter_fullPacket);


int main(void)
{
	t_class *c = class_new("o.listiter", (method)olistiter_new, (method)olistiter_free, sizeof(t_olistiter), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)olistiter_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)olistiter_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)olistiter_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)olistiter_bang, "bang", 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)olistiter_doc, "doc", 0);
    
	if(omax_dict_resolveDictStubs()){
		//class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_SYM, 0);
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
    
	class_register(CLASS_BOX, c);
	olistiter_class = c;
    
	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#endif
