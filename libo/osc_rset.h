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

/** 	\file osc_rset.h
	\author John MacCallum

*/

#ifndef __OSC_RSET_H__
#define __OSC_RSET_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_error.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"

typedef struct _osc_rset_result t_osc_rset_result;
typedef struct _osc_rset t_osc_rset;

// rset methods
t_osc_rset *osc_rset_alloc(void);
void osc_rset_free(t_osc_rset *rset);
void osc_rset_initIterator(t_osc_rset *rset);
int osc_rset_hasNext(t_osc_rset *rset);
t_osc_rset_result *osc_rset_next(t_osc_rset *rset);
void osc_rset_appendResult(t_osc_rset *rset, t_osc_rset_result *res);
t_osc_rset_result *osc_rset_select(t_osc_rset *rset, char *selector);
t_osc_err osc_rset_addCompleteMatch(t_osc_rset *rset, char *selector, t_osc_msg_s *msg);
t_osc_err osc_rset_addPartialMatch(t_osc_rset *rset, char *selector, t_osc_msg_s *msg);
t_osc_err osc_rset_addUnmatched(t_osc_rset *rset, t_osc_msg_s *msg);
t_osc_bndl_s *osc_rset_getUnmatched(t_osc_rset *rset);

// rset_result methods
char *osc_rset_result_getSelector(t_osc_rset_result *res);
int osc_rset_result_getSelectorLen(t_osc_rset_result *res);
t_osc_bndl_s *osc_rset_result_getCompleteMatches(t_osc_rset_result *res);
t_osc_bndl_s *osc_rset_result_getPartialMatches(t_osc_rset_result *res);

#ifdef __cplusplus
}
#endif

#endif
