/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009-ll, The Regents of
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

/** 	\file osc_bundle_iterator_s.h
	\author John MacCallum
	\brief Utilities for iterating over the messages in a serialized OSC bundle


*/

#ifndef __OSC_BUNDLE_ITERATOR_S_H__
#define __OSC_BUNDLE_ITERATOR_S_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "osc_atom_s.h"
#include "osc_error.h"

typedef struct _osc_bundle_iterator_s t_osc_bundle_iterator_s, t_osc_bndl_it_s;

#define osc_bndl_it_s_get(len, ptr) osc_bundle_iterator_s_getIterator((len), (ptr))
#define osc_bndl_it_s_destroy(it) osc_bundle_iterator_s_destroyIterator((it))
#define osc_bndl_it_s_reset(it) osc_bundle_iterator_s_resetIterator((it))
#define osc_bndl_it_s_next(it) osc_bundle_iterator_s_next((it))
#define osc_bndl_it_s_hasNext(it) osc_bundle_iterator_s_hasNext((it))

t_osc_bndl_it_s *osc_bundle_iterator_s_getIterator(long len, char *ptr);
void osc_bundle_iterator_s_destroyIterator(t_osc_bndl_it_s *it);
void osc_bundle_iterator_s_resetIterator(t_osc_bndl_it_s *it);
t_osc_msg_s *osc_bundle_iterator_s_next(t_osc_bndl_it_s *it);
int osc_bundle_iterator_s_hasNext(t_osc_bndl_it_s *it);

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_ITERATOR_S_H__
