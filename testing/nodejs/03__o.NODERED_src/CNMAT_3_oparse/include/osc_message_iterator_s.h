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

/** 	\file osc_message_iterator_s.h
	\author John MacCallum
	\brief Utilities for iterating over serialized OSC messages

@details
Given a serialized OSC message, you can iterate over the arguments like this:

@code 
void FullPacket(long len, char *ptr){
	t_osc_msg_s *m = osc_message_alloc();
	osc_message_s_wrap(m, ptr);
	t_osc_msg_it_s *it = osc_msg_it_s_get(m);
	while(osc_msg_it_s_hasNext(it)){
		t_osc_atom_s a = osc_msg_it_s_next(it);
		// do something with a
	}
}
@endcode
*/

#ifndef __OSC_MESSAGE_ITERATOR_S_H__
#define __OSC_MESSAGE_ITERATOR_S_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_message_s.h" 
#include "osc_atom_s.h" 

#define osc_msg_it_s_get(it) osc_message_iterator_s_getIterator((it))
#define osc_msg_it_s_destroy(it) osc_message_iterator_s_destroyIterator((it))
#define osc_msg_it_s_reset(it) osc_message_iterator_s_resetIterator((it))
#define osc_msg_it_s_next(it) osc_message_iterator_s_next((it))
#define osc_msg_it_s_hasNext(it) osc_message_iterator_s_hasNext((it))

/**
   @brief Data structure for iterating over the data in a #t_osc_msg_s
*/
typedef struct _osc_message_iterator_s t_osc_msg_iterator_s, t_osc_msg_it_s;

/**
   @brief Make an iterator from an OSC message
   @param m An OSC message
   @return A #t_osc_msg_it_s object useful for iterating over the data portion of the message
 */
t_osc_msg_it_s *osc_message_iterator_s_getIterator(t_osc_msg_s *m);

/**
   Destroy a #t_osc_msg_it_s object created with #osc_message_getIterator
   @param it The #t_osc_msg_it_s object to be destroyed
 */
void osc_message_iterator_s_destroyIterator(t_osc_msg_it_s *it);

/**
   Reset the an iterator to its initial state.
   @param it The #t_osc_msg_it_s object to reset
 */
void osc_message_iterator_s_resetIterator(t_osc_msg_it_s *it);

/**
   @brief Increment the iterator to its next state and return its data.

   The #t_osc_msg_it_s object is designed so that the first call to 
   #osc_message_it_s_next will return the first element of the OSC message to which
   this iterator refers.

   @param it The #t_osc_msg_it_s object
   @return The data at the iterator's current state
 */
t_osc_atom_s *osc_message_iterator_s_next(t_osc_msg_it_s *it);

/**
   Check to see whether or not the iterator can be incremented further.

   @param it The #t_osc_msg_it_s object.
   @return 1 if the iterator has a next state, or 0 if not.
 */
int osc_message_iterator_s_hasNext(t_osc_msg_it_s *it);


#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_ITERATOR_S_H__
