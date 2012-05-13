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
*/

/** 	\file osc_dispatch.c
	\author John MacCallum

*/

#include <string.h>
#include <stdio.h>
#include "osc.h"
#include "osc_dispatch.h"
#include "osc_mem.h"
#include "osc_error.h"
#include "osc_match.h"
#include "osc_bundle_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_array_u.h"
#include "osc_vtable.h"

t_osc_err osc_dispatch_impl(t_osc_vtable *vtab,
			    long bndllen,
			    char *bndl,
			    int strip_matched_portion_of_address,
			    t_osc_bndl_s **partial_matches,
			    t_osc_bndl_s **complete_matches,
			    t_osc_bndl_s **unmatched);

t_osc_err osc_dispatch_impl_nest(char *selector,
				 long bndllen,
				 char *bndl,
				 int strip_matched_portion_of_address,
				 t_osc_bndl_s **partial_match,
			    	 t_osc_bndl_s **complete_match);

int osc_dispatch_msg(t_osc_msg_s *msg,
		     char *selector,
		     int strip_matched_portion_of_address,
		     t_osc_bndl_s **partial_match,
		     t_osc_bndl_s **complete_match)
{
	int ret, ao, po;
	ret = osc_match(osc_message_s_getAddress(msg), selector, &po, &ao);
	// if the match failed because a trailing star at the end of the pattern didn't match,
	// say /foo/* and /foo, we'll call it a match
	int star_at_end = 0;
	if(osc_message_s_getAddress(msg)[po] == '*' && osc_message_s_getAddress(msg)[po + 1] == '\0'){
		star_at_end = 1;
	}

#define NEST
#ifdef NEST
	if(selector[ao] == ':'){
		if(selector[ao + 1] == '/'){
			// go through each arg looking for a nested bundle
			t_osc_msg_it_s *msg_it = osc_msg_it_s_get(msg);
			while(osc_msg_it_s_hasNext(msg_it)){
				t_osc_atom_s *a = osc_msg_it_s_next(msg_it);
				if(osc_atom_s_getTypetag(a) == OSC_BUNDLE_TYPETAG){
					char *nested_bndl = osc_atom_s_getData(a);
					char *sel_offset = selector + ao + 1;
					osc_dispatch_impl_nest(sel_offset,
							       ntoh32(*((uint32_t *)nested_bndl)),
							       nested_bndl + 4,
							       strip_matched_portion_of_address,
							       partial_match,
							       complete_match);
				}
			}
			osc_msg_it_s_destroy(msg_it);
			return 0;
		}else{
			// this appears to be either a trailing colon /foo:, or a random colon (maybe Jamoma-style?)
			// /foo:bar.  either way, ignore it quietly.  if we end up reporting different
			// types of errors, this would be a good place for a verbose one
		}
	}
#endif	

	// these are the conditions that constitute a match
	if((ret & OSC_MATCH_ADDRESS_COMPLETE) && ((ret & OSC_MATCH_PATTERN_COMPLETE))){
		// complete match
		osc_bundle_s_appendMessage_b(complete_match, msg);
		return 1;
	}else if(po > 0 && ((osc_message_s_getAddress(msg)[po] == '/') || star_at_end == 1)){
		// partial match
		if(strip_matched_portion_of_address){
			char buf[osc_message_s_getSize(msg) + 4];
			char *address = osc_message_s_getAddress(msg);
			osc_message_s_renameCopy(buf, msg, strlen(address) - ao, address + ao);
			char msg_s[osc_message_s_getStructSize()];
			osc_message_s_wrap((t_osc_msg_s *)msg_s, buf);
			osc_bundle_s_appendMessage_b(partial_match, (t_osc_msg_s *)msg_s);
			//int msglen = osc_message_s_getLen(msg) + 4;
			//char buf[msglen];

			//osc_message_s_setAddress(msg_u, osc_message_s_getAddress(msg) + ao);
			//osc_bundle_s_addMsg(partial_matches, msg_u);
		}else{
			osc_bundle_s_appendMessage_b(partial_match, msg);
		}
		return 1;
	}else{
		return 0;
	}
}

t_osc_err osc_dispatch_impl_nest(char *selector,
				 long bndllen,	
			         char *bndl,
				 int strip_matched_portion_of_address,
				 t_osc_bndl_s **partial_match,
				 t_osc_bndl_s **complete_match)
{
	t_osc_bndl_it_s *b_it = osc_bundle_iterator_s_getIterator(bndllen, bndl);
	while(osc_bundle_iterator_s_hasNext(b_it)){
		t_osc_msg_s *msg = osc_bundle_iterator_s_next(b_it);
		osc_dispatch_msg(msg,
				 selector,
				 strip_matched_portion_of_address,
				 partial_match,
				 complete_match);
	}
	osc_bndl_it_s_destroy(b_it);
	return OSC_ERR_NONE;
}

t_osc_err osc_dispatch_impl(t_osc_vtable *vtab,
			    long bndllen,
			    char *bndl,
			    int strip_matched_portion_of_address,
			    t_osc_bndl_s **partial_matches,
			    t_osc_bndl_s **complete_matches,
			    t_osc_bndl_s **unmatched)
{
	int nentries = osc_vtable_getNumEntries(vtab);
	t_osc_bndl_it_s *b_it = osc_bundle_iterator_s_getIterator(bndllen, bndl);
	while(osc_bundle_iterator_s_hasNext(b_it)){
		int match = 0;
		t_osc_msg_s *msg = osc_bundle_iterator_s_next(b_it);

		int entrynum;
		for(entrynum = 0; entrynum < nentries; entrynum++){
			t_osc_vtable_entry *e = osc_vtable_getEntryByIndex(vtab, entrynum);
			match += osc_dispatch_msg(msg,
						  osc_vtable_entry_getSelector(e),
						  strip_matched_portion_of_address,
						  partial_matches + entrynum,
						  complete_matches + entrynum);
		}
		if(!match){
			osc_bundle_s_appendMessage_b(unmatched, msg);
		}
	}
	osc_bndl_it_s_destroy(b_it);
	return OSC_ERR_NONE;
}

t_osc_err osc_dispatch(t_osc_vtable *vtab,
		       long bndllen,
		       char *bndl,
		       int strip_matched_portion_of_address)
{
	if(!bndl){
		return OSC_ERR_NOBUNDLE;
	}
	if(bndllen == OSC_HEADER_SIZE){
		// empty bundle--dispatch
		char bytes[osc_bundle_s_getStructSize()];
		t_osc_bndl_s *unmatched = (t_osc_bndl_s *)bytes;
		osc_bundle_s_setLen(unmatched, bndllen);
		osc_bundle_s_setPtr(unmatched, bndl);
		osc_vtable_delegate(vtab, bndllen, bndl, unmatched);
		return OSC_ERR_NONE;
	}
	int nentries = osc_vtable_getNumEntries(vtab);
	t_osc_bndl_s *partial_matches[nentries];
	t_osc_bndl_s *complete_matches[nentries];
	t_osc_bndl_s *unmatched = NULL;//osc_bundle_s_alloc(0, NULL);
	//osc_bundle_s_setBundleID_b(unmatched);
	memset(partial_matches, '\0', nentries * sizeof(t_osc_bndl_s *));
	memset(complete_matches, '\0', nentries * sizeof(t_osc_bndl_s *));

	int ret = osc_dispatch_impl(vtab,
				    bndllen,
				    bndl,
				    strip_matched_portion_of_address,
				    partial_matches,
				    complete_matches,
				    &unmatched);
	if(ret){
		return ret;
	}
	if(unmatched){
		osc_vtable_delegate(vtab, bndllen, bndl, unmatched);
	}

	int i;
	for(i = 0; i < nentries; i++){
		osc_vtable_callWithEntry(vtab, osc_vtable_getEntryByIndex(vtab, i), bndllen, bndl, partial_matches[i], complete_matches[i]);
		if(partial_matches[i]){
			osc_bundle_s_deepFree(partial_matches[i]);
		}
		if(complete_matches[i]){
			osc_bundle_s_deepFree(complete_matches[i]);
		}
	}
	osc_bundle_s_deepFree(unmatched);
	return OSC_ERR_NONE;
}		       

t_osc_err osc_dispatch_selectors(t_osc_vtable *vtab,
				 int nselectors,
				 char **selectors,
				 long bndllen,
				 char *bndl,
				 int strip_matched_portion_of_address)
{
	if(!bndl){
		return OSC_ERR_NOBUNDLE;
	}
	if(bndllen == OSC_HEADER_SIZE){
		// empty bundle--dispatch
		char bytes[osc_bundle_s_getStructSize()];
		t_osc_bndl_s *unmatched = (t_osc_bndl_s *)bytes;
		osc_bundle_s_setLen(unmatched, bndllen);
		osc_bundle_s_setPtr(unmatched, bndl);
		osc_vtable_delegate(vtab, bndllen, bndl, unmatched);
		return OSC_ERR_NONE;
	}
	int nentries = osc_vtable_getNumEntries(vtab);
	t_osc_bndl_s *partial_matches[nentries];
	t_osc_bndl_s *complete_matches[nentries];
	t_osc_bndl_s *unmatched = NULL;//osc_bundle_s_alloc(0, NULL);
	//osc_bundle_s_setBundleID_b(unmatched);
	memset(partial_matches, '\0', nentries * sizeof(t_osc_bndl_s *));
	memset(complete_matches, '\0', nentries * sizeof(t_osc_bndl_s *));

	int ret = osc_dispatch_impl(vtab,
				    bndllen,
				    bndl,
				    strip_matched_portion_of_address,
				    partial_matches,
				    complete_matches,
				    &unmatched);
	if(ret){
		return ret;
	}
	if(unmatched){
		osc_vtable_delegate(vtab, bndllen, bndl, unmatched);
	}

	int i;
	for(i = 0; i < nselectors; i++){
		char *selector = selectors[i];
		t_osc_vtable_entry *e = osc_vtable_getEntryBySelector(vtab, selector);
		if(e){
			int index = osc_vtable_getIndexForEntry(vtab, e);
			osc_vtable_callWithEntry(vtab, e, bndllen, bndl, partial_matches[index], complete_matches[index]);
		}
	}
	for(i = 0; i < nentries; i++){
		if(partial_matches[i]){
			osc_bundle_s_deepFree(partial_matches[i]);
		}
		if(complete_matches[i]){
			osc_bundle_s_deepFree(complete_matches[i]);
		}
	}
	osc_bundle_s_deepFree(unmatched);
	return OSC_ERR_NONE;
}
