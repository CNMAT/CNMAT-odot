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

/** 	\file osc_rset.c
	\author John MacCallum
	\brief A result set returned by the osc_query* functions.
*/

#include <string.h>
#include <stdio.h>

#include "osc.h"
#include "osc_util.h"
#include "osc_rset.h"
#include "osc_rset.r"
#include "osc_mem.h"
#include "osc_hashtab.h"
#include "osc_error.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"

t_osc_rset_result *osc_rset_result_alloc(char *selector);
void osc_rset_result_free(t_osc_rset_result *res);
t_osc_err osc_rset_result_addCompleteMatch(t_osc_rset_result *res, t_osc_msg_s *msg);
t_osc_err osc_rset_result_addPartialMatch(t_osc_rset_result *res, t_osc_msg_s *msg);
t_osc_rset_result *osc_rset_result_getNext(t_osc_rset_result *res);
t_osc_rset_result *osc_rset_result_getPrev(t_osc_rset_result *res);

static void osc_rset_hashtab_dtor(char *key, void *val);

t_osc_rset *osc_rset_alloc(void)
{
	t_osc_rset *rset = (t_osc_rset *)osc_mem_alloc(sizeof(t_osc_rset));
	if(rset){
		rset->ht = osc_hashtab_new(0, osc_rset_hashtab_dtor);
		rset->selectors = NULL;
		rset->current_selector = NULL;
		rset->numselectors = 0;
		rset->unmatched = NULL;
	}
	return rset;
}

void osc_rset_free(t_osc_rset *rset)
{
	if(rset){
		osc_hashtab_destroy(rset->ht); 
		osc_bundle_s_deepFree(rset->unmatched);
		osc_mem_free(rset);
	}
}

void osc_rset_initIterator(t_osc_rset *rset)
{
	if(rset){
		rset->current_selector = rset->selectors;
	}
}

int osc_rset_hasNext(t_osc_rset *rset)
{
	if(rset){
		if(rset->current_selector){
			return 1;
		}else{
			return 0;
		}
	}else{
		return 0;
	}
}

t_osc_rset_result *osc_rset_next(t_osc_rset *rset)
{
	if(rset){
		if(rset->current_selector){
			t_osc_rset_result *res = rset->current_selector;
			rset->current_selector = rset->current_selector->next;
			return res;
		}else{
			return NULL;
		}
	}else{
		return NULL;
	}
}

void osc_rset_appendResult(t_osc_rset *rset, t_osc_rset_result *res)
{
	if(rset){
		t_osc_rset_result *r = rset->selectors;
		if(!r){
			rset->selectors = res;
		}else{
			while(r->next){
				r = r->next;
			}
			r->next = res;
			res->prev = r;
		}
		osc_hashtab_store(rset->ht, res->selector_len, res->selector, (void *)res);
		rset->numselectors++;
	}
}

t_osc_rset_result *osc_rset_select(t_osc_rset *rset, char *selector)
{
	if(rset && selector){
		return (t_osc_rset_result *)osc_hashtab_lookup(rset->ht, strlen(selector), selector);
	}else{
		return NULL;
	}
}

t_osc_err osc_rset_addCompleteMatch(t_osc_rset *rset, char *selector, t_osc_msg_s *msg)
{
	if(rset){
		t_osc_rset_result *res = osc_rset_select(rset, selector);
		if(!res){
			res = osc_rset_result_alloc(selector);
			osc_rset_appendResult(rset, res);
		}
		t_osc_err e = osc_rset_result_addCompleteMatch(res, msg);
		return e;
	}else{
		return OSC_ERR_NONE;
	}
}

t_osc_err osc_rset_addPartialMatch(t_osc_rset *rset, char *selector, t_osc_msg_s *msg)
{
	if(rset){
		t_osc_rset_result *res = osc_rset_select(rset, selector);
		if(!res){
			res = osc_rset_result_alloc(selector);
			osc_rset_appendResult(rset, res);
		}
		t_osc_err e = osc_rset_result_addPartialMatch(res, msg);
		return e;
	}else{
		return OSC_ERR_NONE;
	}
}

t_osc_err osc_rset_addUnmatched(t_osc_rset *rset, t_osc_msg_s *msg)
{
	if(rset){
		t_osc_err e = osc_bundle_s_appendMessage_b(&(rset->unmatched), msg);
		return e;
	}else{
		return OSC_ERR_NONE;
	}
}

t_osc_bndl_s *osc_rset_getUnmatched(t_osc_rset *rset)
{
	if(rset){
		return rset->unmatched;
	}else{
		return NULL;
	}
}

char *osc_rset_result_getSelector(t_osc_rset_result *res)
{
	if(res){
		return res->selector;
	}else{
		return NULL;
	}
}

int osc_rset_result_getSelectorLen(t_osc_rset_result *res)
{
	if(res){
		return res->selector_len;
	}else{
		return 0;
	}
}

t_osc_bndl_s *osc_rset_result_getCompleteMatches(t_osc_rset_result *res)
{
	if(res){
		return res->complete_matches;
	}else{
		return NULL;
	}
}

t_osc_bndl_s *osc_rset_result_getPartialMatches(t_osc_rset_result *res)
{
	if(res){
		return res->partial_matches;
	}else{
		return NULL;
	}
}

t_osc_rset_result *osc_rset_result_getNext(t_osc_rset_result *res)
{
	if(res){
		return res->next;
	}else{
		return NULL;
	}
}

t_osc_rset_result *osc_rset_result_getPrev(t_osc_rset_result *res)
{
	if(res){
		return res->prev;
	}else{
		return NULL;
	}
}

t_osc_rset_result *osc_rset_result_alloc(char *selector)
{
	t_osc_rset_result *res = (t_osc_rset_result *)osc_mem_alloc(sizeof(t_osc_rset_result));
	if(res){
		res->selector = NULL;
		res->selector_len = osc_util_strdup(&(res->selector), selector);
		res->complete_matches = NULL;//osc_bundle_s_alloc(0, NULL);
		res->partial_matches = NULL;//osc_bundle_s_alloc(0, NULL);
		res->next = NULL;
		res->prev = NULL;
	}
	return res;
}

void osc_rset_result_free(t_osc_rset_result *res)
{
	if(res){
		if(res->selector){
			osc_mem_free(res->selector);
		}
		if(res->complete_matches){
			osc_bundle_s_deepFree(res->complete_matches);
		}
		if(res->partial_matches){
			osc_bundle_s_deepFree(res->partial_matches);
		}
		osc_mem_free(res);
	}
}

t_osc_err osc_rset_result_addCompleteMatch(t_osc_rset_result *res, t_osc_msg_s *msg)
{
	if(res){
		t_osc_err e = osc_bundle_s_appendMessage_b(&(res->complete_matches), msg);
		return e;
	}else{
		return OSC_ERR_NONE;
	}
}

t_osc_err osc_rset_result_addPartialMatch(t_osc_rset_result *res, t_osc_msg_s *msg)
{
	if(res){
		t_osc_err e = osc_bundle_s_appendMessage_b(&(res->partial_matches), msg);
		return e;
	}else{
		return OSC_ERR_NONE;
	}
}

static void osc_rset_hashtab_dtor(char *key, void *val)
{
	if(key){
		osc_rset_result_free((t_osc_rset_result *)val);
	}
}
