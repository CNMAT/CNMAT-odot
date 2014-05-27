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
	\brief Utilities for manipulating OSC messages


*/

#ifndef __OSC_MESSAGE_H__
#define __OSC_MESSAGE_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include "osc_error.h"

/**
 * Data structure for storing a deserialized OSC message.
 */
typedef struct _osc_msg{
	uint32_t size; /**< The size of the message */
	char *address; /**< OSC address of the message */
	char *typetags_start; /**< The first byte of the typetags section of the message */
	char *typetags; /**< Sequence of typetag chars beginning with , */
	/** Position in the typetag buffer.  Useful when adding data to the message sequentially */
	int typetag_buffer_pos;
	int typetag_buffer_size; /**< The size of the typetag buffer in bytes */
	char *argv_start; /**< The first byte of the data section of the message */
	char *argv; /**< Arg array containing all data associated with this message */
	int argc; /**< Number of elements in argv */
	/** Position in the argv buffer.  Useful when adding data to the message sequentially */
	int argv_buffer_pos; 
	int argv_buffer_size; /**< The size of the argv buffer in bytes. */
	/** A link possibly containing a pointer to the next message in the current bundle */
	struct _osc_msg *next;
	/** A link possibly containing a pointer to the previous message in the current bundle */
	struct _osc_msg *prev;
	/** If set to non-zero, indicates that osc_mem_free should be called on 
	    address, typetags, and argv fields. */
	int free_internal_buffers; 
} t_osc_msg;

/**
 * Allocates a new #t_osc_msg using osc_mem_alloc() and sets all numerical fields to 0 and pointers to NULL.
 * The newly allocated #t_osc_msg must be freed with osc_message_free().
 *
 * @return Pointer to a newly allocated #t_osc_msg.
 */
t_osc_msg *osc_message_alloc(void);

void osc_message_free_internal_buffers(t_osc_msg *m);

/**
 * Frees a #t_osc_msg using osc_mem_free().  If the free_internal_buffers flag is set, osc_message_free()
 * will call osc_mem_free on the address, typetags, and argv fields.
 *
 * @param m The message to be freed
 */
void osc_message_free(t_osc_msg *m);

/**
 * Frees a linked list of #t_osc_msg's using osc_mem_free().  If the free_internal_buffers
 * flag is set, osc_message_free() will call osc_mem_free on the address, typetags, and argv fields.
 *
 * @param m The head of the list of messages to be freed.
 */
void osc_message_freeList(t_osc_msg *m);

/**
 * Make a copy of a #t_osc_msg and all data contained in its internal buffers.  The copy should be freed
 * with osc_message_free().
 *
 * @param dest The destination where the source will be copied to.
 * @param source The #t_osc_msg to be copied.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_message_deepCopy(t_osc_msg **dest, t_osc_msg *source);
	
/**
 * This function wraps a serialized OSC message in a #t_osc_msg.  The address, typetags, and argv
 * fields of the #t_osc_msg struct will point to the appropriate locations in buf.  This does not
 * make a copy of buf, nor does it deserialize it.
 *
 * @param n The length of buf in bytes
 * @param buf The OSC buffer
 * @param osc_msg A pointer to a #t_osc_msg whose fields will be filled
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_message_parseMessage(int n, char *buf, t_osc_msg *osc_msg);

/**
 * Get the size of the message in bytes not including the leading 4-byte size
 *
 * @param buf OSC message with 4-byte size in network byte order as the first 4 bytes.
 * @return The size of the message in bytes.
 */
uint32_t osc_message_getSize_s(char *buf);

/**
 * Get the number of arguments for this OSC message
 *
 * @param msg OSC message to be inspected.
 * @return The number of arguments.
 */
int osc_message_getArgCount(t_osc_msg *msg);

/**
 * Increment the argv and typetags pointers to the next argument.
 *
 * @param msg The OSC message that will have its pointers incremented.
 * @return The number of arguments incremented (0 or 1)
 @note When a #t_osc_msg is created with #osc_message_parseMessage, the typetag field
 will point to the ',' indicating to this function that it is ready to be incremented.
 To use this function, simply enter a while loop as follows:
 @code
t_osc_msg m;
osc_message_parseMessage(len, oscbndl, &m);
while(osc_message_incrementArg(&m)){
	switch(*(m.typetags)){
		case 'i':
		case 'f':
		case 's':
	}
}
 @endcode
 */
int osc_message_incrementArg(t_osc_msg *msg);

/**
 * Reset the typetags and argv pointers to their respective beginnings.
 *
 * @param msg The OSC message to reset.
 */
void osc_message_resetArgs(t_osc_msg *msg);

/**
 * Format an OSC message as a string.
 *
 * @param msg The OSC message to be rendered as a string
 * @param buflen A pointer to an int where the length of the buffer will be stored
 * @param bufpos A pointer to the end of the buffer.
 * @param buf A pointer to a buffer where the string will be stored
 *
 * @note osc_message_formatMsg will allocate and resize the buf as needed.  If 
 * buflen and bufpos are 0 and buf is NULL, this function will allocate memory
 * with osc_mem_alloc.  The caller is responsible for freeing buf.  If 
 * this function runs out of memory, it will resize buf using osc_mem_resize
 */
t_osc_err osc_message_formatMsg(t_osc_msg *msg, long *buflen, long *bufpos, char **buf);

/**
 * Format and print an OSC message.
 *
 * @param msg The OSC message to be printed.
 * @param p A printf-compatible function.
 */
void osc_message_printMsg(t_osc_msg *msg, int (*p)(const char *, ...));

/**
 * Rename a message.
 *
 * @param len The length of the current OSC message not including the 4-byte size
 * @param buffer The message to be renamed.  The first 4 bytes can be the size in network order, or the first byte can point to the first character of the address.  This function will look at the first byte and if it is not a /, it will assume it's the size and skip over it.
 * @param new_address The new address
 * @param new_buffer The address of a buffer where the newly renamed message will be stored.
 *		This can be the same as buffer for an inplace rename as long as new_buffer is long enough
 *		to accomidate the new size (it will not be resized).
 * @return The length of new_buffer in bytes
 */
int osc_message_rename(int len, char *buffer, char *new_address, char **new_buffer);

/**
 * Get the size of a serializedOSC message in bytes.  The number returned does not include the 4-byte size at the beginning of
 * the message, i.e., this number should be used as that size.
 *
 * @param m The OSC message to be inspected
 * @return The size in bytes.
 */
int osc_message_getSize(t_osc_msg *m);

/**
 * Serialize an OSC message using preallocated memory.
 *
 * @param m The OSC message to be serialized
 * @param buffer A buffer to hold the serialized array
 * @return The length of the serialized message in bytes including the 4-byte size
 */
int osc_message_serialize(t_osc_msg *m, char *buffer);

t_osc_err osc_message_setAddress(t_osc_msg *m, char *address);
t_osc_err osc_message_addData(t_osc_msg *m, int ntypetags, char *typetags, int argv_len_bytes, char *argv);
void osc_message_clear(t_osc_msg *m);

#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_H__
