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

/** 	\file osc_query.c
	\author John MacCallum

*/

#include <string.h>
#include <stdio.h>
#include "osc.h"
#include "osc_query.h"
#include "osc_rset.h"
#include "osc_mem.h"
#include "osc_error.h"
#include "osc_match.h"
#include "osc_bundle_iterator_u.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_array_u.h"

#define OSC_QUERY_FULL_MATCH 1
#define OSC_QUERY_PARTIAL_MATCH 2
#define OSC_QUERY_NO_MATCH 3

int osc_query_select_impl(int nselectors,
			  char **selectors,
			  char *rec_selector,
			  long bndllen,
			  char *bndl,
			  int strip_matched_portion_of_address,
			  t_osc_rset **rset)
{
	int result = 0;
	t_osc_bndl_it_s *b_it = osc_bndl_it_s_get(bndllen, bndl);
	while(osc_bndl_it_s_hasNext(b_it)){
		t_osc_msg_s *msg = osc_bndl_it_s_next(b_it);
		int i;
		int match = 0;
		for(i = 0; i < nselectors; i++){
			char *selector = selectors[i];
			if(!selector){
				continue;
			}
			int ret, ao, po;
			ret = osc_match(osc_message_s_getAddress(msg), selector, &po, &ao);
			// if the match failed because a trailing star at the end of the pattern didn't match,
			// say /foo/* and /foo, we'll call it a match down below
			int star_at_end = 0;
			if(osc_message_s_getAddress(msg)[po] == '*' &&
			   osc_message_s_getAddress(msg)[po + 1] == '\0'){
				star_at_end = 1;
			}
#define NEST
#ifdef NEST
			if(selector[ao] == '.'){
				if(selector[ao + 1] == '/'){
					// go through each arg looking for a nested bundle
					t_osc_msg_it_s *msg_it = osc_msg_it_s_get(msg);
					while(osc_msg_it_s_hasNext(msg_it)){
						t_osc_atom_s *a = osc_msg_it_s_next(msg_it);
						if(osc_atom_s_getTypetag(a) == OSC_BUNDLE_TYPETAG){
							char *nested_bndl = osc_atom_s_getData(a);
							char *sel_offset = selector + ao + 1;
							result = osc_query_select_impl(1,
										       &sel_offset,
										       rec_selector ? rec_selector : selector,
										       ntoh32(*((uint32_t *)nested_bndl)),
										       nested_bndl + 4,
										       strip_matched_portion_of_address,
										       rset);
						}
					}
					osc_msg_it_s_destroy(msg_it);
					if(rec_selector || result){
						goto out;
					}
				}else{
					// this appears to be a trailing .
					// ignore it quietly.  if we end up reporting different
					// types of errors, this would be a good place for a verbose one
				}
			}
#endif 
			// these are the conditions that constitute a match
			if((ret & OSC_MATCH_ADDRESS_COMPLETE) && ((ret & OSC_MATCH_PATTERN_COMPLETE))){
				// complete match
				//osc_bundle_s_appendMessage_b(complete_match, msg);
				osc_rset_addCompleteMatch(*rset, rec_selector ? rec_selector : selector, msg);
				match++;
				result = OSC_QUERY_FULL_MATCH;
			}else if(po > 0 && ((osc_message_s_getAddress(msg)[po] == '/') || star_at_end == 1)){
				// partial match
				if(strip_matched_portion_of_address){
					char buf[osc_message_s_getSize(msg) + 4];
					char *address = osc_message_s_getAddress(msg);
					osc_message_s_renameCopy(buf, msg, strlen(address) - po, address + po);
					char msg_s[osc_message_s_getStructSize()];
					osc_message_s_wrap((t_osc_msg_s *)msg_s, buf);
					//osc_bundle_s_appendMessage_b(partial_match, (t_osc_msg_s *)msg_s);
					osc_rset_addPartialMatch(*rset,
								 rec_selector ? rec_selector : selector,
								 (t_osc_msg_s *)msg_s);
				}else{
					//osc_bundle_s_appendMessage_b(partial_match, msg);
					osc_rset_addPartialMatch(*rset, rec_selector ? rec_selector : selector, msg);
				}
				match++;
				result = OSC_QUERY_PARTIAL_MATCH;
			}else{
			}
		}
		if(!match && !rec_selector){
			osc_rset_addUnmatched(*rset, msg);
				result = OSC_QUERY_NO_MATCH;
		}
	}
 out:
	osc_bndl_it_s_destroy(b_it);

	return result;
}

t_osc_err osc_query_select(int nselectors,
			   char **selectors,
			   long bndllen,
			   char *bndl,
			   int strip_matched_portion_of_address,
			   t_osc_rset **rset)
{
	if(!bndl){
		return OSC_ERR_NOBUNDLE;
	}
	if(!(*rset)){
		*rset = osc_rset_alloc();
	}

	if(bndllen == OSC_HEADER_SIZE){
		osc_rset_addUnmatched(*rset, NULL);
		return OSC_ERR_NONE;
	}
	osc_query_select_impl(nselectors,
			      selectors,
			      NULL,
			      bndllen,
			      bndl,
			      strip_matched_portion_of_address,
			      rset);
	return OSC_ERR_NONE;
}
