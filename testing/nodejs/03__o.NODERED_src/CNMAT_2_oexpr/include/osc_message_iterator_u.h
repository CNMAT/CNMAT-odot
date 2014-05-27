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

/** 	\file osc_message_iterator_u.h
	\author John MacCallum
	\brief Utilities for iterating over unserialized OSC messages
*/

#ifndef __OSC_MESSAGE_ITERATOR_U_H__
#define __OSC_MESSAGE_ITERATOR_U_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_message_u.h" 
#include "osc_atom_u.h" 

#define osc_msg_it_u_get(it) osc_message_iterator_u_getIterator((it))
#define osc_msg_it_u_destroy(it) osc_message_iterator_u_destroyIterator((it))
#define osc_msg_it_u_reset(it) osc_message_iterator_u_resetIterator((it))
#define osc_msg_it_u_next(it) osc_message_iterator_u_next((it))
#define osc_msg_it_u_hasNext(it) osc_message_iterator_u_hasNext((it))

typedef struct _osc_message_iterator_u t_osc_msg_iterator_u, t_osc_msg_it_u;

t_osc_msg_it_u *osc_message_iterator_u_getIterator(t_osc_msg_u *m);
void osc_message_iterator_u_destroyIterator(t_osc_msg_it_u *it);
void osc_message_iterator_u_resetIterator(t_osc_msg_it_u *it);
t_osc_atom_u *osc_message_iterator_u_next(t_osc_msg_it_u *it);
int osc_message_iterator_u_hasNext(t_osc_msg_it_u *it);

#ifdef __cplusplus
}
#endif

#endif //__OSC_MESSAGE_ITERATOR_U_H__
