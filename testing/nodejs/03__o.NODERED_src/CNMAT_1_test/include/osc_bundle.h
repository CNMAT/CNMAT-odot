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

/** 	\file osc_bundle.h
	\brief Utilities for manipulating OSC bundles
	\author John MacCallum
*/

#ifndef __OSC_BUNDLE_H__
#define __OSC_BUNDLE_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc.h"
#include "osc_error.h"
#include "osc_message.h"
#include "osc_timetag.h"

/**
 * Structure that represents an OSC bundle.
 */
typedef struct _osc_bundle{
#ifndef OSC_2_0
	//t_osc_timetag timetag;
#endif
	int num_messages; /**< Total number of OSC messages in the buffer */
	/** If this structure is wrapping a serialized OSC bundle, this field can be used
	 * to keep track of where the messages begin in the bundle*/
	//int *msg_offsets; 
	//int *msg_sizes; /**< Sizes of each of the messages not including 4 byte size */
	t_osc_msg *messages; /**< Linked list of messages*/
	struct _osc_bundle *next; /**< Link for a list of bundles */
} t_osc_bundle;

/**
 * Wrap a serialized bundle as a #t_osc_bundle.  This will not make a copy, nor will it
 * deserialized the bundle contained in buf.  The pointers in each of the #t_osc_msg
 * objects will point to the appropriate places in buf.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC bundle
 * @param bundle A pointer to a #t_osc_bundle.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_makeBundle(int len, char *buf, t_osc_bundle *bundle);

/**
 * Allocate and initialize a bundle.  All fields will be set to 0 and all pointers to NULL.
 *
 * @return The newly allocated bundle.  Should be freed with osc_bundle_freeBundle().
 */
t_osc_bundle *osc_bundle_alloc(void);

/**
 * Free a bundle.
 *
 * @param bundle The bundle to be freed
 */
void osc_bundle_freeBundle(t_osc_bundle *bundle);

/**
 * Find out if there is a message after the current one.
 *
 * @param m The current message.
 * @return 0/1 for true or false
 */
int osc_bundle_hasNext(t_osc_msg *m);

/**
 * Find out if there is a message after the current one in a serialized bundle.
 *
 * @param len Bundle length in bytes
 * @param buf Serialized bundle.
 * @param msgptr The current message in the bundle.
 * @return 0/1 for true or false.
 */
int osc_bundle_hasNext_s(int len, char *buf, char *msgptr);

/**
 * Get the next message in a bundle.
 *
 * @param m The current message.
 * @return The next message or NULL if there isn't one
 */
t_osc_msg *osc_bundle_next(t_osc_msg *m);

/**
 * Get the next message in a serialized bundle.
 *
 * @param len Bundle length in bytes
 * @param buf Serialized bundle.
 * @param msgptr The current message in the bundle.
 * @return A pointer to the next message.
 */
char *osc_bundle_next_s(int len, char *buf, char *msgptr);

/**
 * Get the number of messages in a bundle.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC bundle
 * @param count A pointer to an integer where the count will be stored
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_getMsgCount(int len, char *buf, int *count);

/**
 * Get a linked list of messages contained in the bundle.  The address, typetags, and argv
 * pointers in each of the #t_osc_msg structs will point to the appropriate places in buf.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC bundle
 * @param num_messages Pointer to an int where the number of messages found will be stored.
 * @param messages The address of a #t_osc_msg where the first message of a linked list will be stored.
 * @return An error code or #OSC_ERR_NONE
 @note <em>All messages are allocated with #osc_message_alloc and should be freed by the caller.</em>
 */
t_osc_err osc_bundle_getMessages(int len, char *buf, int *num_messages, t_osc_msg **messages);

/**
 * This function wraps each message in buf as a #t_osc_msg and passes it, along with context,
 * to the function pointed to by f.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC buffer
 * @param f Function pointer that will be called for each message
 * @param context User-specified contextual data
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_getMessagesWithCallback(int len, char *buf, void (*f)(t_osc_msg, void *), void *context);

/**
 * Set the OSC bundle identifier (#OSC_IDENTIFIER)
 *
 * @param buf The OSC bundle
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_setBundleID(char *buf);

/**
 * This function uses strcmp to compare the first #OSC_IDENTIFIER_SIZE bytes of buf
 * to #OSC_IDENTIFIER.
 *
 * @param buf The OSC bundle
 * @return The result of the strcmp call
 */
int osc_bundle_strcmpID(char *buf);

#ifdef OSC_2_0
t_osc_timetag osc_bundle_getTimetag(int len, char *buf);
#else
t_osc_timetag osc_bundle_getTimetag(int len, char *buf);
#endif

/**
 * OSC <2.0 used to support naked (unbundled) messages which is no longer cool.  This function
 * will wrap such a message in a bundle.  Can be done in place.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC buffer
 * @param out The new bundle.  ptr and out can be the same as long as out is large enough to store
 *	bundle header (#OSC_HEADER_SIZE) and 4-byte size.
 * @return The length of the new bundle (the old length + #OSC_HEADER_SIZE + 4)	
 */
int osc_bundle_bundleNakedMessage(long len, char *buf, char **out);

/**
 * OSC <2.0 used to support nested bundles which is no longer cool.  This function will flatten
 * a bundle that contains other bundles.  Can be done in place.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC buffer
 * @param out The new bundle.  buf and out can be the same.
 */
int osc_bundle_flatten(long len, char *buf, char **out);

t_osc_err osc_bundle_formatBndl(long len, 
				char *bndl, 
				long *buflen, 
				long *bufpos, 
				char **buf);

/**
 * Format and print a bundle.
 *
 * @param len Length of buf in bytes
 * @param buf Serialized OSC buffer
 * @param p A function pointer to a printf-compatible function
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_printBundle(int len, char *buf, int (*p)(const char *, ...));

/**
 * osc_bundle_printBundle() uses osc_bundle_getMessagesWithCallback() to iterate through its
 * messages and calls this function for each message.  This should probably not need to get called
 * in any other context.
 *
 * @param msg The current message
 * @param context User-specific context
 */
void osc_bundle_printBundleCbk(t_osc_msg msg, void *context);

/**
 * Find a message in a bundle with a given address.  m is a linked list and could
 * possibly have links to additional messages that matched the address pattern.
 *
 * m and all additional linked messages are allocated with osc_message_alloc() and
 * must be freed by the caller with osc_message_free();
 *
 * If no matches are found, m will be NULL.
 *
 * @param len The length of the OSC buffer in bytes
 * @param buf The OSC buffer
 * @param address The address to lookup
 * @param m The address of a t_osc_msg pointer where the address of the first matched message will be stored
 * @param fullmatch Set this to non-zero to indicate that a full match is required
 * @return An error code or OSC_ERR_NONE.
 */
t_osc_err osc_bundle_lookupAddress_s(int len, char *buf, char *address, t_osc_msg **m, int fullmatch);

/**
 * Find a message in a bundle with a given address.  m is a linked list and could
 * possibly have links to additional messages that matched the address pattern.
 * These can be checked with osc_message_hasNext(), osc_message_next(), etc.
 *
 * m and all additional linked messages are copies and are allocated with osc_message_alloc() and
 * must be freed by the caller with osc_message_free();
 *
 * If no matches are found, m will be NULL.
 *
 * @param bundle A pointer to a t_osc_bundle 
 * @param address The address to lookup
 * @param m The address of a t_osc_msg pointer where the address of the first matched message will be stored
 * @param fullmatch Set this to non-zero to indicate that a full match is required
 * @return An error code or OSC_ERR_NONE.
 */
t_osc_err osc_bundle_lookupAddress(t_osc_bundle *bundle, char *address, t_osc_msg **m, int fullmatch);

/**
 * Add a message to the end of the message list of a bundle;
 *
 * @param bundle The bundle to which the message will be added.
 * @param message The message to be added to the bundle.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_addMessage(t_osc_bundle *bundle, t_osc_msg *message);

t_osc_err osc_bundle_addMessage_s(long *len, char **bndl, t_osc_msg *msg);
t_osc_err osc_bundle_addSerializedMessage_s(long *len, char **bndl, long msglen, char *msg);
t_osc_err osc_bundle_replaceMessage_s(long *len, char **bndl, long oldmsglen, char *oldmsg, long newmsglen, char *newmsg);

/**
 * Get the total number of bytes required to serialize a bundle.
 *
 * @param bundle The bundle whose serialized length is to be determined.
 * @param len A pointer to an int where the length will be placed
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_getLen_s(t_osc_bundle *bundle, long *len);

/**
 * Serialize a #t_osc_bundle.  This function will allocate the necessary memory to serialize the
 * bundle using osc_mem_alloc().  The number of bytes (the total length of the serialized OSC bundle)
 * will be placed in len, and a pointer to the serialized bundle will be placed in buffer.
 *
 * It is the responsibility of the caller to free buffer by calling osc_mem_free().
 *
 * @param bundle The bundle to be serialized
 * @param len A pointer to an int where the length of the serialized bundle will be stored.
 * @param buffer A pointer to a char buffer where the serialized bundle will be placed.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_serialize(t_osc_bundle *bundle, long *len, char **buffer);

/**
 * Serialize a bundle using pre-allocated memory.  This function assumes that buffer is a pointer
 * to a block of memory large enough to hold the serialized bundle.  The number of bytes necessary
 * to hold the serialized bundle can be determined by a call to osc_bundle_getLen_s().
 *
 * @param bundle The bundle to be serialized.
 * @param buffer A pointer to a char array to be filled with the serialized bundle.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_serializeWithBuffer(t_osc_bundle *bundle, char *buffer);

/**
 * Set the timetag field of an OSC bundle to the current time.
 *
 * @param bundle Pointer to the OSC bundle
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_bundle_setTimetagNow_s(char *bundle);

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_H__
/**@}*/
