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

/** 	\file osc_query.r
	\author John MacCallum

*/
#ifndef __OSC_RSET_R__
#define __OSC_RSET_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_hashtab.h"

struct _osc_rset_result{
	char *selector;
	int selector_len;
	t_osc_bndl_s *complete_matches;
	t_osc_bndl_s *partial_matches;
	struct _osc_rset_result *next, *prev;
};

struct _osc_rset{
	t_osc_hashtab *ht;
	struct _osc_rset_result *selectors;
	struct _osc_rset_result *current_selector;
	t_osc_bndl_s *unmatched;
	int numselectors;
};

#ifdef __cplusplus
}
#endif

#endif 

