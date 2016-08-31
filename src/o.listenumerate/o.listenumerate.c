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
 NAME: o.listenumerate
 DESCRIPTION: Spit out dedicated subbundles for every element of a list at a user-defined OSC address.
 AUTHORS: Ilya Y. Rostovtsev
 COPYRIGHT_YEARS: 2014-ll
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 VERSION 0.9: Delegation Outlet; Everything but the nomenclature for the output.
 VERSION RC : Functions to-spec, 1.0 after testing.
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */

#define OMAX_DOC_NAME "o.listenumerate"
#define OMAX_DOC_SHORT_DESC "Iterate over a list at a specified OSC address"
#define OMAX_DOC_LONG_DESC "o.listenumerate enumerates the values of a list at an OSC address and outputs them out one at a time."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packets for each element of the list", "Delegation outlet - unmatched OSC addresses"}
#define OMAX_DOC_SEEALSO (char *[]){"o.messageiterate"}

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

typedef struct _olistenumerate{
	t_object ob;
	void **outlets;
	t_symbol *address;
	t_critical lock;
} t_olistenumerate;


void *olistenumerate_class;

void olistenumerate_fullPacket(t_olistenumerate *x, t_symbol *msg, int argc, t_atom *argv);
void olistenumerate_doFullPacket(t_olistenumerate *x, long len, char *ptr);
void olistenumerate_noMatchesOrData(t_olistenumerate *x);
void olistenumerate_bang(t_olistenumerate *x);
void olistenumerate_anything(t_olistenumerate *x, t_symbol *msg, short argc, t_atom *argv);
void olistenumerate_free(t_olistenumerate *x);
void olistenumerate_assist(t_olistenumerate *x, void *b, long io, long num, char *buf);
void *olistenumerate_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_FullPacket;

void olistenumerate_fullPacket(t_olistenumerate *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	osc_bundle_s_wrap_naked_message(len, ptr);
	olistenumerate_doFullPacket(x, len, ptr);
}

void olistenumerate_doFullPacket(t_olistenumerate *x,
                           long len,
                           char *ptr)
{
    if (!x->address) {
        return;
    }
    
    critical_enter(x->lock);
    char* address_name = x->address->s_name;
    critical_exit(x->lock);
    
    t_osc_msg_ar_s *matches = osc_bundle_s_lookupAddress(len, ptr, address_name, 1);
    
    char delegate[len];
    long dlen = len;
    memcpy(delegate, ptr, len);
    
    if (matches) {
        // right outlet:
        osc_bundle_s_removeMessage(address_name, &dlen, delegate, 1);
        int message_count = 0;
        osc_bundle_s_getMsgCount(dlen, delegate, &message_count);
        if (message_count > 0) {
            omax_util_outletOSC(x->outlets[0], dlen, delegate);
            OSC_MEM_INVALIDATE(delegate);
        }
        
        // left outlet:
        for (int i = 0; i < osc_array_getLen(matches); ++i)
        {
            t_osc_message_s* message_match = (t_osc_message_s*)osc_array_get(matches, i);
            t_osc_message_u* unserialized_msg = osc_message_s_deserialize(message_match);
            
            int array_length = osc_message_u_getArgCount(unserialized_msg);
            if (array_length > 0)
            {
                for (int j = 0; j < array_length; ++j)
                {
			t_osc_atom_u* iter_atom = osc_message_u_getArg(unserialized_msg, j);
                    t_osc_atom_u* atom_copy = osc_atom_u_copy(iter_atom);
                    if (atom_copy)
                    {
                        t_osc_bundle_u* unserialized_result = NULL;
                        //char type = osc_atom_u_getTypetag(atom_copy);
                        unserialized_result = osc_bundle_u_alloc();
                        t_osc_message_u* value = osc_message_u_allocWithAddress("/value");
                        osc_message_u_appendAtom(value, atom_copy);
                        osc_bundle_u_addMsg(unserialized_result, value);
                        
                        t_osc_message_u* address = osc_message_u_allocWithString("/address", address_name);
                        t_osc_message_u* index = osc_message_u_allocWithAddress("/index");
                        osc_message_u_appendInt32(index, j);
                        t_osc_message_u* length = osc_message_u_allocWithAddress("/length");
                        osc_message_u_appendInt32(length, array_length);
                        osc_bundle_u_addMsg(unserialized_result, address);
                        osc_bundle_u_addMsg(unserialized_result, index);
                        osc_bundle_u_addMsg(unserialized_result, length);
                        t_osc_bndl_s *bs = osc_bundle_u_serialize(unserialized_result);
                        osc_bundle_u_free(unserialized_result); // frees value, count, length and atom_copy
                        unserialized_result = NULL;
                        atom_copy = NULL;
                        
                        if (bs)
                        {
				omax_util_outletOSC(x->outlets[1], osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
				osc_bundle_s_deepFree(bs);
                            bs = NULL;
                        }
                    }
                }
                
                if (unserialized_msg) {
                    osc_message_u_free(unserialized_msg);
                    unserialized_msg = NULL;
                }
                
            } else {
                olistenumerate_noMatchesOrData(x);
            }
        }
    } else { // no matches
        // right outlet:
        omax_util_outletOSC(x->outlets[0], dlen, delegate);
    }
    
    if (matches) {
        osc_array_free(matches);
    }
}

void olistenumerate_noMatchesOrData(t_olistenumerate *x)
{
    // left outlet:
    t_osc_message_u* address = osc_message_u_allocWithString("/address", x->address->s_name);
    t_osc_message_u* length = osc_message_u_allocWithAddress("/length");
    osc_message_u_appendInt32(length, 0);
    t_osc_bundle_u* unserialized_result = osc_bundle_u_alloc();
    osc_bundle_u_addMsg(unserialized_result, address);
    osc_bundle_u_addMsg(unserialized_result, length);
    
    t_osc_bndl_s *bs = osc_bundle_u_serialize(unserialized_result);
    osc_bundle_u_free(unserialized_result);
    unserialized_result = NULL;
    
    if (bs) {
	    omax_util_outletOSC(x->outlets[1], osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
	    osc_bundle_s_deepFree(bs);
        bs = NULL;
    }
}

void olistenumerate_bang(t_olistenumerate *x)
{
	//olistenumerate_doFullPacket(x, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
    return; // ignore bangs
}

void olistenumerate_anything(t_olistenumerate *x, t_symbol *selector, short argc, t_atom *argv)
{
	t_osc_msg_u *msg = NULL;
	t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg, selector, argc, argv);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		return;
	}
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	osc_bundle_u_addMsg(bndl, msg);
	t_osc_bndl_s *bs = osc_bundle_u_serialize(bndl);
	if(bs){
		olistenumerate_doFullPacket(x, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
		osc_bundle_s_deepFree(bs);
	}
	osc_bundle_u_free(bndl);
}

void olistenumerate_doc(t_olistenumerate *x)
{
	omax_doc_outletDoc(x->outlets[0]);
}

void olistenumerate_free(t_olistenumerate *x)
{
	critical_free(x->lock);
    if (x->outlets) {
        free(x->outlets);
    }
}

void *olistenumerate_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_olistenumerate *x;
	if((x = (t_olistenumerate *)object_alloc(olistenumerate_class))){
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
            object_error((t_object*)x, "o.listenumerate needs an OSC address as its first argument");
            return NULL;
        }
	}
	return x;
}
#ifdef OMAX_PD_VERSION

int setup_o0x2elistiter(void)
{
	t_class *c = class_new(gensym("o.listenumerate"), (t_newmethod)olistenumerate_new, (t_method)olistenumerate_free, sizeof(t_olistenumerate), 0L, A_GIMME, 0);
    
	class_addmethod(c, (t_method)olistenumerate_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)olistenumerate_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)olistenumerate_bang, gensym("bang"), 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	olistenumerate_class = c;
    
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#else

void olistenumerate_assist(t_olistenumerate *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_olistenumerate, x, olistenumerate_fullPacket);


int main(void)
{
	t_class *c = class_new("o.listenumerate", (method)olistenumerate_new, (method)olistenumerate_free, sizeof(t_olistenumerate), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)olistenumerate_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)olistenumerate_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)olistenumerate_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)olistenumerate_bang, "bang", 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)olistenumerate_doc, "doc", 0);
    
	//if(omax_dict_resolveDictStubs()){
		//class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_SYM, 0);
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
    
	class_register(CLASS_BOX, c);
	olistenumerate_class = c;
    
	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#endif
