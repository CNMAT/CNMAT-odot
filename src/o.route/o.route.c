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
NAME: o.route
DESCRIPTION: OSC-route for full packets
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
VERSION 0.1: Addresses to match can now have patterns
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#if !defined(SELECT) && !defined(ATOMIZE)

#define OMAX_DOC_NAME "o.route"
#define OMAX_DOC_SHORT_DESC "Dispatch OSC messages according to an address hierarchy stripping off the portion of the address that matched"
#define OMAX_DOC_LONG_DESC "o.route does pattern matching on addresses contained in OSC packets.  All messages in a bundle with addresses that match an address specified as an argument to o.route are bundled together and sent out the corresponding outlet with the portion of the address that match removed."
#define OMAX_DOC_SEEALSO (char *[]){"o.select", "o.atomize", "route"}

#endif

#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet"}




#include "odot_version.h"

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_oroute *)(x))->inlet)
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif

#include "osc.h"
#include "osc_mem.h"
#include "osc_match.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_message_u.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "osc_rset.h"
#include "osc_query.h"

#include "o.h"

typedef struct _oroute{
	t_object ob;
	void *delegation_outlet;
	void **outlets;
	t_critical lock;
	char **selectors;
	int num_selectors;
	char **unique_selectors;
	int num_unique_selectors;
	int nbytes_selector; // length in bytes of the longest selector
	int max_message; // set this to note that the event originated as a max message and not a FullPacket
	char *schema;
	long schemalen;
//void **proxy;
//long inlet;
//char **inlet_assist_strings;
	char **outlet_assist_strings;
} t_oroute;

#ifdef OMAX_PD_VERSION
t_omax_pd_proxy_class *oroute_class;
t_omax_pd_proxy_class *oroute_proxy_class;
#else
void *oroute_class;
#endif

void oroute_dispatch_rset(t_oroute *x, t_osc_rset *rset, int num_selectors, char **selectors);
void oroute_anything(t_oroute *x, t_symbol *msg, short argc, t_atom *argv);
void oroute_free(t_oroute *x);
void oroute_doSet(t_oroute *x, long index, t_symbol *sym);
void oroute_makeSchema(t_oroute *x);
void oroute_atomizeBundle(void *outlet, long len, char *bndl);
void oroute_makeUniqueSelectors(int nselectors,
				char **selectors,
				int *nunique_selectors,
				char ***unique_selectors);
void *oroute_new(t_symbol *msg, short argc, t_atom *argv);

t_symbol *ps_oscschemalist, *ps_FullPacket, *_ps_deprecated_set;

//void oroute_fullPacket(t_oroute *x, long len, long ptr)
void oroute_fullPacket(t_oroute *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
	if(len == OSC_HEADER_SIZE){
		omax_util_outletOSC(x->delegation_outlet, len, ptr);
		return;
	}
	if(x->num_selectors > 0){
		t_osc_rset *rset = NULL;
		int strip_matched_portion_of_address = 1;
#if (defined SELECT) || (defined ATOMIZE)
		strip_matched_portion_of_address = 0;
#endif
		critical_enter(x->lock);
		int num_unique_selectors = x->num_unique_selectors;
		char unique_selectors[num_unique_selectors][x->nbytes_selector + 1];
		char *unique_selectors_ptrs[num_unique_selectors];
		int num_selectors = x->num_selectors;
		char selectors[num_selectors][x->nbytes_selector + 1];
		char *selectors_ptrs[num_selectors];
		for(int i = 0; i < num_unique_selectors; i++){
			strcpy(unique_selectors[i], x->unique_selectors[i]);
			unique_selectors_ptrs[i] = unique_selectors[i];
		}
		for(int i = 0; i < num_selectors; i++){
			strcpy(selectors[i], x->selectors[i]);
			selectors_ptrs[i] = selectors[i];
		}
		critical_exit(x->lock);
		osc_query_select(num_unique_selectors,
				 unique_selectors_ptrs,
				 len,
				 ptr,
				 strip_matched_portion_of_address,
				 &rset);
		if(rset){
			oroute_dispatch_rset(x, rset, num_selectors, selectors_ptrs);
			osc_rset_free(rset);
		}
	}else{
#ifdef ATOMIZE
		oroute_atomizeBundle(x->delegation_outlet, len, ptr);
#else
		omax_util_outletOSC(x->delegation_outlet, len, ptr);
#endif
	}
}

void oroute_dispatch_rset(t_oroute *x, t_osc_rset *rset, int num_selectors, char **selectors)
{
	t_osc_bndl_s *unmatched = osc_rset_getUnmatched(rset);
	if(unmatched){
#ifdef ATOMIZE
		oroute_atomizeBundle(x->delegation_outlet,
				    osc_bundle_s_getLen(unmatched),
				    osc_bundle_s_getPtr(unmatched));
#else
		printf("%s: %d: %ld, %ld\n", __func__, __LINE__, osc_bundle_s_getLen(unmatched),
				    osc_bundle_s_getPtr(unmatched));
		omax_util_outletOSC(x->delegation_outlet,
				    osc_bundle_s_getLen(unmatched),
				    osc_bundle_s_getPtr(unmatched));
#endif
	}
	int i;
	for(i = 0; i < num_selectors; i++){
		char *selector = selectors[i];
		t_osc_rset_result *res = osc_rset_select(rset, selector);
		if(res){
			t_osc_bndl_s *partial_matches = osc_rset_result_getPartialMatches(res);
			t_osc_bndl_s *complete_matches = osc_rset_result_getCompleteMatches(res);
#ifdef SELECT
			if(partial_matches || complete_matches){
				long len = osc_bundle_s_getLen(partial_matches) +
					osc_bundle_s_getLen(complete_matches);
				char concat[len];
				len = osc_bundle_s_concat(osc_bundle_s_getLen(partial_matches),
							  osc_bundle_s_getPtr(partial_matches),
							  osc_bundle_s_getLen(complete_matches),
							  osc_bundle_s_getPtr(complete_matches),
							  concat);
				omax_util_outletOSC(x->outlets[i], len, concat);
			}
#else
			if(partial_matches){
#ifdef ATOMIZE
				oroute_atomizeBundle(x->outlets[i],
						  osc_bundle_s_getLen(partial_matches),
						  osc_bundle_s_getPtr(partial_matches));
#else
				omax_util_outletOSC(x->outlets[i],
						    osc_bundle_s_getLen(partial_matches),
						    osc_bundle_s_getPtr(partial_matches));
#endif
			}
			if(complete_matches){
#ifdef ATOMIZE
				oroute_atomizeBundle(x->outlets[i],
						  osc_bundle_s_getLen(complete_matches),
						  osc_bundle_s_getPtr(complete_matches));
#else
				t_osc_bndl_it_s *it = osc_bndl_it_s_get(osc_bundle_s_getLen(complete_matches),
									osc_bundle_s_getPtr(complete_matches));
				while(osc_bndl_it_s_hasNext(it)){
					t_osc_msg_s *msg = osc_bndl_it_s_next(it);
					int num_atoms = omax_util_getNumAtomsInOSCMsg(msg);
					t_atom a[num_atoms];
#ifdef OMAX_PD_VERSION
                    if(omax_util_oscMsg2MaxAtoms(msg, a))
                    {
                        object_error((t_object *)x, "pure data does not like { }, hopefully someone will fix this eventually\n");
                        return;
                    }
#else
					omax_util_oscMsg2MaxAtoms(msg, a);
#endif
                    if(num_atoms - 1 == 0){
						outlet_bang(x->outlets[i]);
					}else{
						outlet_atoms(x->outlets[i], num_atoms - 1, a + 1);
					}
				}
				osc_bndl_it_s_destroy(it);
#endif
			}
#endif
		}
	}
}

void oroute_anything(t_oroute *x, t_symbol *msg, short argc, t_atom *argv)
{
	if(x->num_selectors == 0){
		outlet_anything(x->delegation_outlet, msg, argc, argv);
		return;
	}
	/*
	long inlet = proxy_getinlet((t_object *)x);
	if(inlet > 0){
		oroute_doSet(x, inlet, msg);
		return;
	}
	*/
	if(!msg){
		object_error((t_object *)x, "doesn't look like an OSC message");
		return;
	}
	if(msg->s_name[0] != '/'){
		object_error((t_object *)x, "OSC addresses must begin with a /");
		return;
	}
	int i;
	int match = 0;
	for(i = 0; i < x->num_selectors; i++){
		//int outletnum = x->num_selectors - i - 1;
		int outletnum = i;
		critical_enter(x->lock);
		int selectorlen = strlen(x->selectors[i]);
		char s[selectorlen + 1];
		strncpy(s, x->selectors[i], selectorlen + 1);
		critical_exit(x->lock);
		int ret, ao, po;
		ret = osc_match(msg->s_name, s, &po, &ao);
		// if the match failed because a trailing star at the end of the pattern didn't match,
		// say /foo/* and /foo, we'll call it a match
		int star_at_end = 0;
		if(msg->s_name[po] == '*' && msg->s_name[po + 1] == '\0'){
			star_at_end = 1;
		}
#if defined SELECT || defined ATOMIZE
		if(((ret & OSC_MATCH_ADDRESS_COMPLETE) && (ret & OSC_MATCH_PATTERN_COMPLETE)) ||
		   (po > 0 && ((msg->s_name[po] == '/') || star_at_end == 1))){
			outlet_anything(x->outlets[outletnum], msg, argc, argv);
			match++;
		}
#else // route
		if((ret & OSC_MATCH_ADDRESS_COMPLETE) && ((ret & OSC_MATCH_PATTERN_COMPLETE))){
			// complete match
			if(argc){
				//outlet_list(x->outlets[i], NULL, argc, argv);
				outlet_atoms(x->outlets[outletnum], argc, argv);
			}else{
				outlet_bang(x->outlets[outletnum]);
			}
			match++;
		}else if(po > 0 && ((msg->s_name[po] == '/') || star_at_end == 1)){
			// partial match
			t_symbol *ss = gensym(msg->s_name + po);
			outlet_anything(x->outlets[outletnum], ss, argc, argv);
			match++;
		}else{
		}
#endif
	}
	if(!match){
		outlet_anything(x->delegation_outlet, msg, argc, argv);
	}
}

//void oroute_set(t_oroute *x, long index, t_symbol *sym)
void oroute_set(t_oroute *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(!_ps_deprecated_set->s_thing){
		object_error((t_object *)x, "The set message to %s has been deprecated and will be removed in the future", OMAX_DOC_NAME);
		_ps_deprecated_set->s_thing = (void *)1;
	}
	if(argc != 2){
		object_error((t_object *)x, "%s: expected 2 arguments (index and address), but got %d", __func__, argc);
		return;
	}
	if(atom_gettype(argv) != A_LONG){
		object_error((t_object *)x, "%s: first argument to message set should be the index (int)", __func__);
		return;
	}
	if(atom_gettype(argv + 1) != A_SYM){
		object_error((t_object *)x, "%s: second argument to message set should be an address (symbol)", __func__);
		return;
	}
	long index = atom_getlong(argv);
	t_symbol *sym = atom_getsym(argv + 1);
	oroute_doSet(x, index, sym);
}

void oroute_doSet(t_oroute *x, long index, t_symbol *sym){
	if(index < 1 || index > x->num_selectors){
		object_error((t_object *)x, "index (%ld) out of bounds", index);
		return;
	}
	critical_enter(x->lock);
	int len = strlen(sym->s_name);
	if(len > x->nbytes_selector){
		x->nbytes_selector = len;
	}
	x->selectors[x->num_selectors - index] = sym->s_name;
	oroute_makeUniqueSelectors(x->num_selectors,
				   x->selectors,
				   &(x->num_unique_selectors),
				   &(x->unique_selectors));
	oroute_makeSchema(x);
	critical_exit(x->lock);
}

#ifndef OMAX_PD_VERSION

OMAX_DICT_DICTIONARY(t_oroute, x, oroute_fullPacket);

void oroute_assist(t_oroute *x, void *b, long io, long num, char *buf)
{
	_omax_doc_assist(io,
                     num,
                     buf,
                     x->num_selectors + 1,
			 //x->inlet_assist_strings,
			 OMAX_DOC_INLETS_DESC,
                     x->num_selectors + 1,
                     x->outlet_assist_strings);
}
#endif

void oroute_doc(t_oroute *x)
{
	void *outlet = x->delegation_outlet;
	if(x->num_selectors > 0){
		outlet = x->outlets[x->num_selectors - 1];
	}
    
#ifdef OMAX_PD_VERSION
    omax_doc_outletDoc(outlet); //<< I think this also works in max, but left JM code just in case -- rama
#else
	_omax_doc_outletDoc(outlet,
			    OMAX_DOC_NAME,		
			    OMAX_DOC_SHORT_DESC,	
			    OMAX_DOC_LONG_DESC,		
			    x->num_selectors + 1,
			    //x->inlet_assist_strings,
			    OMAX_DOC_INLETS_DESC,
			    x->num_selectors + 1,
			    x->outlet_assist_strings,
			    OMAX_DOC_NUM_SEE_ALSO_REFS,	
			    OMAX_DOC_SEEALSO);
#endif
}



void oroute_free(t_oroute *x)
{
	critical_free(x->lock);
	if(x->outlets){
		free(x->outlets);
	}
	/*
	if(x->proxy){
		for(int i = 0; i < x->num_selectors; i++){
			if(x->proxy[i]){
#ifdef OMAX_PD_VERSION
                pd_free(x->proxy[i+1]);  //<< I think this is not required for the pd version since they are all new classes?
#else
                object_free(x->proxy[i]);
#endif
			}
		}
#ifdef OMAX_PD_VERSION
        pd_free(x->proxy[0]);
        free(x->proxy);
#endif
	}
	*/
    
	if(x->selectors){
		free(x->selectors);
	}
	if(x->unique_selectors){
		free(x->unique_selectors);
	}
	if(x->schema){
		osc_mem_free(x->schema);
	}
#ifndef OMAX_PD_VERSION
	for(int i = 0; i < x->num_selectors + 1; i++){
		/*
		if(x->inlet_assist_strings[i]){
			osc_mem_free(x->inlet_assist_strings[i]);
		}
		*/
		if(x->outlet_assist_strings[i]){
			osc_mem_free(x->outlet_assist_strings[i]);
		}
	}
	/*
	if(x->inlet_assist_strings){
		osc_mem_free(x->inlet_assist_strings);
	}
	*/
	if(x->outlet_assist_strings){
		osc_mem_free(x->outlet_assist_strings);
	}
#endif
   
}

void oroute_makeSchema(t_oroute *x)
{
	return;
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	t_osc_msg_u *msg = osc_message_u_alloc();
	if(!bndl || !msg){
		return;
	}
	osc_message_u_setAddress(msg, "/osc/schema/list");

	int i;
	for(i = 0; i < x->num_selectors; i++){
		osc_message_u_appendString(msg, x->selectors[i]);
	}
	osc_bundle_u_addMsg(bndl, msg);
	osc_bundle_u_serialize(bndl, &(x->schemalen), &(x->schema));
	osc_bundle_u_free(bndl);
}

void oroute_atomizeBundle(void *outlet, long len, char *bndl)
{
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, bndl);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *msg = osc_bndl_it_s_next(it);
		int natoms = omax_util_getNumAtomsInOSCMsg(msg);
		t_atom atoms[natoms];
#ifdef OMAX_PD_VERSION
		if(omax_util_oscMsg2MaxAtoms(msg, atoms))
        {
            object_error((t_object *)x, "pure data does not like { }, hopefully someone will fix this eventually\n");
            return;
        }
#else
        omax_util_oscMsg2MaxAtoms(msg, atoms);
#endif
		t_symbol *address = atom_getsym(atoms);
		outlet_anything(outlet, address, natoms - 1, atoms + 1);
	}
	osc_bndl_it_s_destroy(it);
}

void oroute_makeUniqueSelectors(int nselectors,
				char **selectors,
				int *nunique_selectors,
				char ***unique_selectors)
{
	if(!unique_selectors){
		*unique_selectors = (char **)malloc(nselectors * sizeof(char *));
	}
	int n = 0;
	char **us = *unique_selectors;
	int i;
	for(i = 0; i < nselectors; i++){
		char *s = selectors[i];
		int match = 0;
		int j;
		for(j = 0; j < n; j++){
			if(!strcmp(us[j], s)){
				match++;
				break;
			}
		}
		if(!match){
			us[n++] = s;
		}
	}
	*nunique_selectors = n;
}

#ifdef OMAX_PD_VERSION
void *oroute_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oroute *x;
	if((x = (t_oroute *)object_alloc(oroute_class->class))){
		critical_new(&(x->lock));
		x->outlets = (void **)malloc(argc * sizeof(void *));

		x->selectors = (char **)malloc(argc * sizeof(char *));
		x->num_selectors = argc;
		x->unique_selectors = (char **)malloc(x->num_selectors * sizeof(char *));
        
		x->nbytes_selector = 0;
        
            int i;
            //x->proxy = (void **)malloc((argc + 1) * sizeof(t_omax_pd_proxy *));
            //x->proxy[0] = proxy_new((t_object *)x, 0, &(x->inlet), oroute_proxy_class);
        
            for(i = 0; i < argc; i++){
                x->outlets[argc - i - 1] = outlet_new(&x->ob, NULL);
                //x->proxy[i+1] = proxy_new((t_object *)x, i+1, &(x->inlet), oroute_proxy_class);

                if(atom_gettype(argv + i) != A_SYM){
                    object_error((t_object *)x, "argument %d is not an OSC address", i);
                    return NULL;
                }
                
                char *selector = atom_getsym(argv + i)->s_name;
                int len = strlen(selector);
                if(len > x->nbytes_selector){
                    x->nbytes_selector = len;
                }
                x->selectors[x->num_selectors - i - 1] = selector;
                
            }
   
        
        x->delegation_outlet = outlet_new(&x->ob, gensym("FullPacket"));

		oroute_makeUniqueSelectors(x->num_selectors,
                                   x->selectors,
                                   &(x->num_unique_selectors),
                                   &(x->unique_selectors));
		x->schema = NULL;
		x->schemalen = 0;
		oroute_makeSchema(x);
		
	}
    
	return(x);
}

#ifdef SELECT
int setup_o0x2eselect(void)
{
	t_symbol *name = gensym("o.select");
#elif defined ATOMIZE
int setup_o0x2eatomize(void)
{
	t_symbol *name = gensym("o.atomize");
#else
int setup_o0x2eroute(void)
{
	t_symbol *name = gensym("o.route");
#endif
    omax_pd_class_new(oroute_class, name, (t_newmethod)oroute_new, (t_method)oroute_free, sizeof(t_oroute),  CLASS_NOINLET, A_GIMME, 0);
    
    t_omax_pd_proxy_class *c = NULL;
    omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
	omax_pd_class_addmethod(c, (t_method)oroute_set, gensym("set"));
	omax_pd_class_addmethod(c, (t_method)oroute_fullPacket, gensym("FullPacket"));
	omax_pd_class_addanything(c, (t_method)oroute_anything);

    omax_pd_class_addmethod(c, (t_method)oroute_doc, gensym("doc"));
    
    oroute_proxy_class = c;
    
	ps_FullPacket = gensym("FullPacket");
	ps_oscschemalist = gensym("/osc/schema/list");
	_ps_deprecated_set = gensym(OMAX_DOC_NAME"_deprecated_set");
    
	ODOT_PRINT_VERSION;
	return 0;
}

#else
void *oroute_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oroute *x;
	if((x = (t_oroute *)object_alloc(oroute_class))){
		critical_new(&(x->lock));
		x->delegation_outlet = outlet_new(x, "FullPacket");
		x->outlets = (void **)malloc(argc * sizeof(void *));
		//x->proxy = (void **)malloc(argc * sizeof(void *));
		x->selectors = (char **)malloc(argc * sizeof(char *));
		x->num_selectors = argc;
		x->unique_selectors = (char **)malloc(x->num_selectors * sizeof(char *));

		//x->inlet_assist_strings = (char **)osc_mem_alloc((argc + 1) * sizeof(char *));
		x->outlet_assist_strings = (char **)osc_mem_alloc((argc + 1) * sizeof(char *));

		//char *left_inlet_assist_str = "OSC bundle or Max message";
		//long left_inlet_assist_str_len = strlen(left_inlet_assist_str);
		//x->inlet_assist_strings[0] = osc_mem_alloc(left_inlet_assist_str_len + 1);
		//snprintf(x->inlet_assist_strings[0], left_inlet_assist_str_len + 1, "%s", left_inlet_assist_str);
		x->nbytes_selector = 0;
		int i;
		for(i = 0; i < argc; i++){
			x->outlets[i] = outlet_new(x, NULL);
			//x->proxy[i] = proxy_new((t_object *)x, argc - i, &(x->inlet));
			if(atom_gettype(argv + i) != A_SYM){
				object_error((t_object *)x, "argument %d is not an OSC address", i);
				return NULL;
			}

			char *selector = atom_getsym(argv + i)->s_name;
			int len = strlen(selector);
			if(len > x->nbytes_selector){
				x->nbytes_selector = len;
			}
			x->selectors[x->num_selectors - i - 1] = selector;

			long ilen = snprintf(NULL, 0, "Change the selector %s", selector);
			long olen = snprintf(NULL, 0, "Messages that match %s", selector);
			//x->inlet_assist_strings[i + 1] = osc_mem_alloc(ilen + 1);
			x->outlet_assist_strings[i] = osc_mem_alloc(olen + 1);
			//snprintf(x->inlet_assist_strings[i + 1], ilen + 1, "Change the selector %s", selector);
			snprintf(x->outlet_assist_strings[i], olen + 1, "Messages that match %s", selector);
		}
		char *delegation_assist_str = "Unmatched messages (delegation)";
		long delegation_assist_str_len = strlen(delegation_assist_str);
		x->outlet_assist_strings[argc] = osc_mem_alloc(delegation_assist_str_len + 1);
		snprintf(x->outlet_assist_strings[argc], delegation_assist_str_len + 1, "%s", delegation_assist_str);

		oroute_makeUniqueSelectors(x->num_selectors,
					   x->selectors,
					   &(x->num_unique_selectors),
					   &(x->unique_selectors));

		x->schema = NULL;
		x->schemalen = 0;
		oroute_makeSchema(x);
		
		attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void)
{
#ifdef SELECT
	char *name = "o.select";
#elif defined ATOMIZE
	char *name = "o.atomize";
#else
	char *name = "o.route";
#endif

	t_class *c = class_new(name, (method)oroute_new, (method)oroute_free, sizeof(t_oroute), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oroute_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oroute_fullPacket, "FullPacket", A_GIMME, 0);

	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	class_addmethod(c, (method)oroute_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oroute_doc, "doc", 0);
	class_addmethod(c, (method)oroute_anything, "anything", A_GIMME, 0);
	//class_addmethod(c, (method)oroute_set, "set", A_LONG, A_SYM, 0);
	class_addmethod(c, (method)oroute_set, "set", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	oroute_class = c;

	ps_FullPacket = gensym("FullPacket");
	ps_oscschemalist = gensym("/osc/schema/list");
	_ps_deprecated_set = gensym(OMAX_DOC_NAME"_deprecated_set");

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
#endif
