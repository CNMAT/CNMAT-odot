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

/** 	\file osc_message_s.r
	\author John MacCallum
	\brief Definition of _osc_message_s


*/

#ifndef __OSC_MESSAGE_S_R__
#define __OSC_MESSAGE_S_R__

#ifdef __cplusplus
extern "C" {
#endif

struct _osc_message_s{
	char *size; /**< Pointer to the size field of the message */
	char *address; /**< Pointer to the address field of the message */
	char *typetags; /**< Pointer to the typetags field of the message */
	char *data; /**< Pointer to the data field of the message */
	int cache_buf_size; /**< Size of the cache buffer */
	int cache_size; /**< Number of elements stored in the cache buffer */
	int *data_offset_cache; /**< Offsets from the #t_osc_msg_s.data for each item */
	int *data_size_cache; /**< Size of each element of data stored in the data field */
};

#ifdef __cplusplus
extern "C"{
#endif

#endif // __OSC_MESSAGE_S_R__
