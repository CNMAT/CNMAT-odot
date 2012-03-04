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

/** 	\file osc_bundle_u.h
	\author John MacCallum
	\brief Utilities for manipulating userialized OSC bundles


*/

#ifndef __OSC_BUNDLE_U_H__
#define __OSC_BUNDLE_U_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _osc_bundle_u t_osc_bundle_u, t_osc_bndl_u;

#include <stdint.h>
#include "osc_message_u.h"
#include "osc_error.h"
#include "osc_array.h"

typedef t_osc_array t_osc_bundle_array_u, t_osc_bndl_ar_u;

t_osc_bndl_u *osc_bundle_u_alloc(void);
size_t osc_bundle_u_getStructSize(void);
void osc_bundle_u_free(t_osc_bndl_u *bndl);
int osc_bundle_u_getMsgCount(t_osc_bndl_u *bndl);
t_osc_err osc_bundle_u_getMessagesWithCallback(t_osc_bndl_u *bndl, void (*f)(t_osc_msg_u*, void *), void *context);
t_osc_err osc_bundle_u_lookupAddress(t_osc_bndl_u *bndl, char *address, t_osc_bndl_ar_u **osc_msg_u_array, int fullmatch);
t_osc_err osc_bundle_u_addMsg(t_osc_bndl_u *bndl, t_osc_msg_u *msg);
t_osc_err osc_bundle_u_addMsgCopy(t_osc_bndl_u *bndl, t_osc_msg_u *msg);
t_osc_err osc_bundle_u_addMsgArrayCopy(t_osc_bndl_u *bndl, t_osc_array *ar);
t_osc_err osc_bundle_u_serialize(t_osc_bndl_u *bndl, long *buflen, char **buf);
t_osc_err osc_bundle_u_format(t_osc_bndl_u *bndl, long *buflen, char **buf);

t_osc_bundle_array_u *osc_bundle_array_u_alloc(long len);
#define osc_bundle_array_u_free(ar) osc_array_free((ar))
#define osc_bundle_array_u_clear(ar) osc_array_clear((ar))
#define osc_bundle_array_u_get(ar, idx) osc_array_get((ar), (idx))
#define osc_bundle_array_u_getLen(ar) osc_array_getLen((ar))
#define osc_bundle_array_u_copy(ar) osc_array_copy((ar))
#define osc_bundle_array_u_resize(ar, newlen) osc_array_resize((ar), (newlen))

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_U_H__
