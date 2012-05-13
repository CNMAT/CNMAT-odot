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

/** 	\file osc_bundle_s.h
	\author John MacCallum
	\brief Utilities for manipulating serialized OSC bundles


*/

#ifndef __OSC_BUNDLE_S_H__
#define __OSC_BUNDLE_S_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _osc_bundle_s t_osc_bundle_s, t_osc_bndl_s;

#include <stdint.h>
#include "osc_bundle_u.h"
#include "osc_message_s.h"
#include "osc_error.h"
#include "osc_array.h"

typedef t_osc_array t_osc_bundle_array_s, t_osc_bndl_ar_s;

#define osc_bundle_s_wrap_naked_message(len, ptr){\
	if(ptr && len >= 8){\
		if(strncmp("#bundle\0", (char *)(ptr), 8)){	\
			char *oldptr = (char *)ptr;\
			long oldlen = len;\
			len += 4 + OSC_HEADER_SIZE;\
			ptr = (long)alloca(len);\
			char alloc = 0;\
			osc_bundle_s_wrapMessage(oldlen, oldptr, &len, (char **)(&ptr), &alloc);\
		}\
	}\
}

t_osc_bndl_s *osc_bundle_s_alloc(long len, char *ptr);
t_osc_bndl_s *osc_bundle_s_allocEmptyBundle(void);
t_osc_err osc_bundle_s_deepCopy(t_osc_bndl_s **dest, t_osc_bndl_s *src);
size_t osc_bundle_s_getStructSize(void);
void osc_bundle_s_free(t_osc_bndl_s *bndl);
void osc_bundle_s_deepFree(t_osc_bndl_s *bndl);
char *osc_bundle_s_getPtr(t_osc_bndl_s *bndl);
long osc_bundle_s_getLen(t_osc_bndl_s *bndl);
void osc_bundle_s_setLen(t_osc_bndl_s *bndl, long len);
void osc_bundle_s_setPtr(t_osc_bndl_s *bndl, char *ptr);
t_osc_err osc_bundle_s_getMsgCount(int len, char *buf, int *count);
t_osc_msg_s *osc_bundle_s_getFirstMsg(t_osc_bndl_s *bndl);
t_osc_err osc_bundle_s_getMessagesWithCallback(int len, char *buf, void (*f)(t_osc_msg_s*, void *), void *context);

t_osc_err osc_bundle_s_addressIsBound(long len, char *buf, char *address, int fullmatch, int *res);
t_osc_err osc_bundle_s_addressExists(long len, char *buf, char *address, int fullmatch, int *res);
t_osc_err osc_bundle_s_lookupAddress(int len, char *buf, const char *address, t_osc_array **osc_msg_s_array, int fullmatch);

t_osc_err osc_bundle_s_wrapMessage(long len, char *msg, long *bndllen, char **bndl, char *alloc);
t_osc_err osc_bundle_s_replaceMessage(long *buflen,
				      long *bufpos,
				      char **bndl,
				      t_osc_msg_s *oldmsg,
				      t_osc_msg_s *newmsg);
t_osc_err osc_bundle_s_appendMessage(long *len, char **bndl, t_osc_msg_s *msg);
t_osc_err osc_bundle_s_appendMessage_b(t_osc_bndl_s **bndl, t_osc_msg_s *msg);
t_osc_err osc_bundle_s_setBundleID(char *buf);
t_osc_err osc_bundle_s_setBundleID_b(t_osc_bndl_s *bndl);
int osc_bundle_s_strcmpID(char *buf);
t_osc_bundle_s *osc_bundle_s_flatten(t_osc_bndl_s *src, int maxlevel, char *sep, int remove_enclosing_address_if_empty);
t_osc_err osc_bundle_s_deserialize(long len, char *ptr, t_osc_bndl_u **bndl);
t_osc_err osc_bundle_s_format(long len, char *bndl, long *buflen, char **buf);
t_osc_err osc_bundle_s_union(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out);
t_osc_err osc_bundle_s_intersection(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out);
t_osc_err osc_bundle_s_difference(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out);
// returns len which is len1 + len2 - OSC_HEADER_SIZE
int osc_bundle_s_concat(long len1, char *bndl1, long len2, char *bndl2, char *bndl);

t_osc_array *osc_bundle_array_s_alloc(long len);

t_osc_bundle_array_s *osc_bundle_array_s_alloc(long len);
#define osc_bundle_array_s_free(ar) osc_array_free((ar))
#define osc_bundle_array_s_clear(ar) osc_array_clear((ar))
#define osc_bundle_array_s_get(ar, idx) osc_array_get((ar), (idx))
#define osc_bundle_array_s_getLen(ar) osc_array_getLen((ar))
#define osc_bundle_array_s_copy(ar) osc_array_copy((ar))
#define osc_bundle_array_s_resize(ar, newlen) osc_array_resize((ar), (newlen))

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_S_H__
