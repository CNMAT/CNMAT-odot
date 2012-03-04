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

/** 	\file osc_message.h
	\author John MacCallum
	\brief Utilities for manipulating serialized OSC messages


*/

#ifndef __OSC_MESSAGE_S_H__
#define __OSC_MESSAGE_S_H__

#ifdef __cplusplus
extern "C" {
#endif

/**
   @brief Data structure for storing a serialized OSC message.
 
   This struct can be used to wrap a byte array containing a serialized OSC message
   with pointers into that array that point to the various elements of the message.
*/
typedef struct _osc_message_s t_osc_message_s, t_osc_msg_s;

#include <stdint.h>
#include "osc_atom_s.h"
#include "osc_error.h"
#include "osc_array.h"

typedef t_osc_array t_osc_message_array_s, t_osc_msg_ar_s;

/**
   Allocate a #t_osc_msg_s object and initialize it
   @return A newly allocated #t_osc_msg_s with all fields initialized
 */
t_osc_msg_s *osc_message_s_alloc(void);

/**
   @return The size of the #t_osc_msg_s struct.
 */
size_t osc_message_s_getStructSize(void);

/**
   Free a #t_osc_msg_s object and any memory associated with it.
   @param m The OSC message to be freed
 */
void osc_message_s_free(t_osc_msg_s *m);
void osc_message_s_deepFree(t_osc_msg_s *m);

/**
   Initialize all fields of a #t_osc_msg_s
   @param m OSC message
 */
void osc_message_s_initMsg(t_osc_msg_s *m);

/**
   Make a copy of a #t_osc_msg_s.  This will only make a copy of the 
   struct, not the data that its members point to.
   @param dest The destination message.  Pass the address of a NULL pointer to have a new message allocated.
   @param src The #t_osc_msg_s that will be copied.
 */
void osc_message_s_copy(t_osc_msg_s **dest, t_osc_msg_s *src);

/**
   Rename a serialized message---makes a copy and places the contents in dest.  The original message
   will remain unaffected.
   @param dest Buffer where the copy will be placed.
   @param src Message to be copied and renamed.
   @param new_address_len Length of the new address.
   @param new_address The new address.
   @return The length of the renamed (copied) message.
 */
int osc_message_s_renameCopy(char *dest, t_osc_msg_s *src, int new_address_len, char *new_address);

/**
   Wrap an array of bytes containing a serialized OSC message in a #t_osc_msg_s object
   @param m OSC message
   @return An error or #OSC_ERR_NONE
 */
t_osc_err osc_message_s_wrap(t_osc_msg_s *m, char *bytes);

/**
   Return the size of a serialized OSC message.

   @param m OSC message
   @return Size of the message
*/
uint32_t osc_message_s_getSize(t_osc_msg_s *m);

/**
   Return a pointer to the address field of m.

   @param m OSC message
   @return Pointer to the address field of m.
*/
char *osc_message_s_getAddress(t_osc_msg_s *m);

/**
   Return a pointer to the typetag field of m.

   @param m OSC message
   @return Pointer to the typetag field of m.
*/
char *osc_message_s_getTypetags(t_osc_msg_s *m);

/**
   Return a pointer to the data field of m.

   @param m OSC message
   @return Pointer to the data field of m.
*/
char *osc_message_s_getData(t_osc_msg_s *m);

/**
   Return the number of data items in m
   @param m OSC message
   @return The number of data items in m
 */
int osc_message_s_getArgCount(t_osc_msg_s *m);

char *osc_message_s_getPtr(t_osc_msg_s *m);

/**
   @brief Return the nth typetag for OSC message m.
   This function counts the typetags from 0 starting with the first typetag
   after the comma.  

   @param m OSC message
   @param n The typetag number to return
   @return The typetag
 */
char osc_message_s_getTypetag(t_osc_msg_s *m, int n);

/**
   @brief Return a pointer to the nth data element for OSC message m.
   Data elements are counted starting at 0.

   @param m OSC message
   @param n The data item to return
   @param atom A pointer to an atom where the result will be stored, or NULL to have one 
allocated which must be freed by the caller using #osc_mem_free.
   @return A #t_osc_atom containing a pointer to the nth data element
 */
void osc_message_s_getArg(t_osc_msg_s *m, int n, t_osc_atom_s **atom);

/**
   @brief Precompute the sizes and positions of the arguments in m.
   @param m A #t_osc_msg_s.
   @return A #t_osc_err or OSC_ERR_NONE
 */
t_osc_err osc_message_s_cacheDataOffsets(t_osc_msg_s *m);

t_osc_err osc_message_s_deserialize(t_osc_msg_s *msg, t_osc_msg_u **msg_u);

/**
   Convert the contents of a #t_osc_msg_s to a string suitable for display.
   @param m The #t_osc_msg_s to convert to a string.
   @param buflen A pointer to a long integer where the length of the buffer will be stored.
   @param buf The address of a pointer that will be set to a buffer containing the formatted string.
The string will be allocated with #osc_mem_alloc and must be freed by the caller using #osc_mem_free
   @return An error or #OSC_ERR_NONE
 */
t_osc_err osc_message_s_format(t_osc_msg_s *m, long *buflen, char **buf);

t_osc_err osc_message_s_formatArgs(t_osc_msg_s *m, long *buflen, char **buf, int offset);

t_osc_message_array_s *osc_message_array_s_alloc(long len);
#define osc_message_array_s_free(ar) osc_array_free((ar))
#define osc_message_array_s_clear(ar) osc_array_clear((ar))
#define osc_message_array_s_get(ar, idx) osc_array_get((ar), (idx))
#define osc_message_array_s_getLen(ar) osc_array_getLen((ar))
#define osc_message_array_s_copy(ar) osc_array_copy((ar))
#define osc_message_array_s_resize(ar, newlen) osc_array_resize((ar), (newlen))


#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_S_H__
