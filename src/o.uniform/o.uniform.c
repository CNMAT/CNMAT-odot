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
 NAME: o.uniform
 DESCRIPTION: Generate a uniformly-distributed random number [0. 1.) and bind it to an OSC address
 AUTHORS: Ilya Y. Rostovtsev
 COPYRIGHT_YEARS: 2014-ll
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */

#define OMAX_DOC_NAME "o.uniform"
#define OMAX_DOC_SHORT_DESC "Bind a uniformly-distrubuted random number to an address"
#define OMAX_DOC_LONG_DESC "o.uniform binds a uniformly-distributed random number to a user-specified address."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The OSC packet with a random number bound to an address"}
#define OMAX_DOC_SEEALSO (char *[]){"o.timetag"}

#include <time.h>
#include <stdlib.h>

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
#include "osc_timetag.h"
#include "osc_mem.h"
#include "osc_message_iterator_u.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _ouniform{
	t_object ob;
	void *outlet;
	t_symbol *address;
    long seed;
    long state;
	t_critical lock;
} t_ouniform;


void *ouniform_class;

void ouniform_fullPacket(t_ouniform *x, t_symbol *msg, int argc, t_atom *argv);
void ouniform_doFullPacket(t_ouniform *x, long len, char *ptr);
void ouniform_bang(t_ouniform *x);
void ouniform_anything(t_ouniform *x, t_symbol *msg, short argc, t_atom *argv);
void ouniform_free(t_ouniform *x);
void ouniform_assist(t_ouniform *x, void *b, long io, long num, char *buf);
void *ouniform_new(t_symbol *msg, short argc, t_atom *argv);
long ouniform_getNumber(long len, char *ptr, char *address);

t_symbol *ps_FullPacket;

void ouniform_fullPacket(t_ouniform *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	osc_bundle_s_wrap_naked_message(len, ptr);
	ouniform_doFullPacket(x, len, ptr);
}

void ouniform_doFullPacket(t_ouniform *x,
                           long len,
                           char *ptr)
{
    int seed_is_bound = 0;
    osc_bundle_s_addressIsBound(len, ptr, "/uniform/set/seed", 1, &seed_is_bound);
    if (seed_is_bound) {
        long change_to = ouniform_getNumber(len, ptr, "/uniform/set/seed");
        
        if (change_to > 0) {
            if (x->seed != change_to) {
                x->seed = change_to;
                srand(x->seed);
                x->state = 0;
            }
        }
        osc_bundle_s_removeMessage("/uniform/set/seed", &len, ptr, 1);
    }
    int state_is_bound = 0;
    osc_bundle_s_addressIsBound(len, ptr, "/uniform/set/state", 1, &state_is_bound);
    if (state_is_bound) {
        long change_to = ouniform_getNumber(len, ptr, "/uniform/set/state");
        if (change_to >= 0) {
            x->state = 0;
            srand(x->seed);
            for (int i = 0; i < change_to; ++i) {
                rand();
                ++x->state;
            }
        }
        osc_bundle_s_removeMessage("/uniform/set/state", &len, ptr, 1);
    }
    
    t_osc_bndl_u *copy = osc_bundle_s_deserialize(len, ptr);
    t_osc_message_u *result = NULL;
    if(x->address) {
        result = osc_message_u_allocWithFloat(x->address->s_name, (1.0f * rand() / RAND_MAX));
    }else{
        result = osc_message_u_allocWithFloat("/uniform/random", (1.0f * rand() / RAND_MAX));
    }
    t_osc_message_u *seed = osc_message_u_allocWithAddress("/uniform/seed");
    osc_message_u_appendInt32(seed, x->seed);
    t_osc_message_u *state = osc_message_u_allocWithAddress("/uniform/state");
    osc_message_u_appendInt32(state, x->state);
    osc_bundle_u_addMsgWithoutDups(copy, result);
    osc_bundle_u_addMsgWithoutDups(copy, seed);
    osc_bundle_u_addMsgWithoutDups(copy, state);
    
    ++x->state;
    
    t_osc_bndl_s *bs = osc_bundle_u_serialize(copy);
    if(bs){
	    omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
	    osc_bundle_s_deepFree(bs);
    }
    osc_bundle_u_free(copy);
}

long ouniform_getNumber(long len, char *ptr, char *address)
{
    t_osc_msg_ar_s *matches = osc_bundle_s_lookupAddress(len, ptr, address, 1);
    //long matches_length = osc_array_getLen( matches );
    long change_to = -1;
    t_osc_message_s* msg = ( t_osc_message_s* )osc_array_get( matches, 0 );
    t_osc_atom_s* atom = NULL;
    osc_message_s_getArg( msg, 0, &atom );
    char type = osc_atom_s_getTypetag( atom );
    if (type == 'i') {
        change_to = (long)osc_atom_s_getInt32(atom);
    } else if (type == 'I') {
        change_to = (long)osc_atom_s_getInt64(atom);
    } else if (type == 'I') {
        change_to = (long)osc_atom_s_getUInt32(atom);
    } else if (type == 'I') {
        change_to = (long)osc_atom_s_getUInt64(atom);
    } else {
        // do something here to tell the end user how unclever they are.
    }
    return change_to;
}

void ouniform_bang(t_ouniform *x)
{
	ouniform_doFullPacket(x, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
}

void ouniform_anything(t_ouniform *x, t_symbol *selector, short argc, t_atom *argv)
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
		ouniform_doFullPacket(x, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
		osc_bundle_s_deepFree(bs);
	}
	osc_bundle_u_free(bndl);
}

void ouniform_doc(t_ouniform *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ouniform_free(t_ouniform *x)
{
	critical_free(x->lock);
}

void *ouniform_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ouniform *x;
	if((x = (t_ouniform *)object_alloc(ouniform_class))){
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
		}
		x->outlet = outlet_new((t_object *)x, NULL);
        x->seed = time(NULL);
        x->state = 0;
        srand(x->seed);
		critical_new(&(x->lock));
	}
	return x;
}
#ifdef OMAX_PD_VERSION

int setup_o0x2etimetag(void)
{
	t_class *c = class_new(gensym("o.uniform"), (t_newmethod)ouniform_new, (t_method)ouniform_free, sizeof(t_ouniform), 0L, A_GIMME, 0);
    
	class_addmethod(c, (t_method)ouniform_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)ouniform_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)ouniform_bang, gensym("bang"), 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	ouniform_class = c;
    
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#else

void ouniform_assist(t_ouniform *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

OMAX_DICT_DICTIONARY(t_ouniform, x, ouniform_fullPacket);


int main(void)
{
	t_class *c = class_new("o.uniform", (method)ouniform_new, (method)ouniform_free, sizeof(t_ouniform), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)ouniform_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ouniform_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ouniform_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)ouniform_bang, "bang", 0);
	class_addmethod(c, (method)odot_version, "version", 0);
	class_addmethod(c, (method)ouniform_doc, "doc", 0);
    
	if(omax_dict_resolveDictStubs()){
		//class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_SYM, 0);
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
    
	class_register(CLASS_BOX, c);
	ouniform_class = c;
    
	common_symbols_init();
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION;
	return 0;
}

#endif
