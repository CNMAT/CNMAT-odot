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

#ifndef __OSC_MESSAGE_U_H__
#define __OSC_MESSAGE_U_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _osc_message_u t_osc_message_u, t_osc_msg_u;

#include <stdint.h>
#include "osc_bundle_u.h"
#include "osc_bundle_s.h"
#include "osc_atom_u.h"
#include "osc_array.h"

typedef t_osc_array t_osc_message_array_u, t_osc_msg_ar_u;

t_osc_msg_u *osc_message_u_alloc(void);
size_t osc_message_u_getStructSize(void);
void osc_message_u_free(t_osc_msg_u *m);
void osc_message_u_initMsg(t_osc_msg_u *m);
void osc_message_u_clearArgs(t_osc_msg_u *m);
void osc_message_u_copy(t_osc_msg_u **dest, t_osc_msg_u *src);
t_osc_err osc_message_u_deepCopy(t_osc_msg_u **dest, t_osc_msg_u *src);
uint32_t osc_message_u_getSize(t_osc_msg_u *m);
char *osc_message_u_getAddress(t_osc_msg_u *m);
t_osc_err osc_message_u_setAddress(t_osc_msg_u *m, const char *address);
t_osc_err osc_message_u_setAddressPtr(t_osc_msg_u *m, char *newAddress, char **oldAddress);
int osc_message_u_getArgCount(t_osc_msg_u *m);
void osc_message_u_getArg(t_osc_msg_u *m, int n, t_osc_atom_u **atom);

t_osc_err osc_message_u_appendAtom(t_osc_msg_u *m, t_osc_atom_u *a);
t_osc_err osc_message_u_prependAtom(t_osc_msg_u *m, t_osc_atom_u *a);
t_osc_err osc_message_u_insertAtom(t_osc_msg_u *m, t_osc_atom_u *a, int pos);
void osc_message_u_removeAtom(t_osc_msg_u *m, t_osc_atom_u *a);

t_osc_atom_u *osc_message_u_appendInt8(t_osc_msg_u *m, int8_t v);
t_osc_atom_u *osc_message_u_appendInt16(t_osc_msg_u *m, int16_t v);
t_osc_atom_u *osc_message_u_appendInt32(t_osc_msg_u *m, int32_t v);
t_osc_atom_u *osc_message_u_appendInt64(t_osc_msg_u *m, int64_t v);
t_osc_atom_u *osc_message_u_appendUInt8(t_osc_msg_u *m, uint8_t v);
t_osc_atom_u *osc_message_u_appendUInt16(t_osc_msg_u *m, uint16_t v);
t_osc_atom_u *osc_message_u_appendUInt32(t_osc_msg_u *m, uint32_t v);
t_osc_atom_u *osc_message_u_appendUInt64(t_osc_msg_u *m, uint64_t v);
t_osc_atom_u *osc_message_u_appendFloat(t_osc_msg_u *m, float v);
t_osc_atom_u *osc_message_u_appendDouble(t_osc_msg_u *m, double v);
t_osc_atom_u *osc_message_u_appendStringPtr(t_osc_msg_u *m, char *v);
t_osc_atom_u *osc_message_u_appendString(t_osc_msg_u *m, const char *v);
t_osc_atom_u *osc_message_u_appendBool(t_osc_msg_u *m, int v);
t_osc_atom_u *osc_message_u_appendTrue(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_appendFalse(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_appendNull(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_appendBndl(t_osc_msg_u *m, long len, char *bndl);
t_osc_atom_u *osc_message_u_appendBndl_s(t_osc_msg_u *m, long len, char *bndl);
t_osc_atom_u *osc_message_u_appendBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b);

t_osc_atom_u *osc_message_u_prependInt8(t_osc_msg_u *m, int8_t v);
t_osc_atom_u *osc_message_u_prependInt16(t_osc_msg_u *m, int16_t v);
t_osc_atom_u *osc_message_u_prependInt32(t_osc_msg_u *m, int32_t v);
t_osc_atom_u *osc_message_u_prependInt64(t_osc_msg_u *m, int64_t v);
t_osc_atom_u *osc_message_u_prependUInt8(t_osc_msg_u *m, uint8_t v);
t_osc_atom_u *osc_message_u_prependUInt16(t_osc_msg_u *m, uint16_t v);
t_osc_atom_u *osc_message_u_prependUInt32(t_osc_msg_u *m, uint32_t v);
t_osc_atom_u *osc_message_u_prependUInt64(t_osc_msg_u *m, uint64_t v);
t_osc_atom_u *osc_message_u_prependFloat(t_osc_msg_u *m, float v);
t_osc_atom_u *osc_message_u_prependDouble(t_osc_msg_u *m, double v);
t_osc_atom_u *osc_message_u_prependStringPtr(t_osc_msg_u *m, char *v);
t_osc_atom_u *osc_message_u_prependString(t_osc_msg_u *m, char *v);
t_osc_atom_u *osc_message_u_prependBool(t_osc_msg_u *m, int v);
t_osc_atom_u *osc_message_u_prependTrue(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_prependFalse(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_prependNull(t_osc_msg_u *m);
t_osc_atom_u *osc_message_u_prependBndl(t_osc_msg_u *m, long len, char *bndl);
t_osc_atom_u *osc_message_u_prependBndl_s(t_osc_msg_u *m, long len, char *bndl);
t_osc_atom_u *osc_message_u_prependBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b);

t_osc_atom_u *osc_message_u_insertInt8(t_osc_msg_u *m, int8_t v, int pos);
t_osc_atom_u *osc_message_u_insertInt16(t_osc_msg_u *m, int16_t v, int pos);
t_osc_atom_u *osc_message_u_insertInt32(t_osc_msg_u *m, int32_t v, int pos);
t_osc_atom_u *osc_message_u_insertInt64(t_osc_msg_u *m, int64_t v, int pos);
t_osc_atom_u *osc_message_u_insertUInt8(t_osc_msg_u *m, uint8_t v, int pos);
t_osc_atom_u *osc_message_u_insertUInt16(t_osc_msg_u *m, uint16_t v, int pos);
t_osc_atom_u *osc_message_u_insertUInt32(t_osc_msg_u *m, uint32_t v, int pos);
t_osc_atom_u *osc_message_u_insertUInt64(t_osc_msg_u *m, uint64_t v, int pos);
t_osc_atom_u *osc_message_u_insertFloat(t_osc_msg_u *m, float v, int pos);
t_osc_atom_u *osc_message_u_insertDouble(t_osc_msg_u *m, double v, int pos);
t_osc_atom_u *osc_message_u_insertStringPtr(t_osc_msg_u *m, char *v, int pos);
t_osc_atom_u *osc_message_u_insertString(t_osc_msg_u *m, char *v, int pos);
t_osc_atom_u *osc_message_u_insertBool(t_osc_msg_u *m, int v, int pos);
t_osc_atom_u *osc_message_u_insertTrue(t_osc_msg_u *m, int pos);
t_osc_atom_u *osc_message_u_insertFalse(t_osc_msg_u *m, int pos);
t_osc_atom_u *osc_message_u_insertNull(t_osc_msg_u *m, int pos);
t_osc_atom_u *osc_message_u_insertBndl(t_osc_msg_u *m, long len, char *bndl, int pos);
t_osc_atom_u *osc_message_u_insertBndl_s(t_osc_msg_u *m, long len, char *bndl, int pos);
t_osc_atom_u *osc_message_u_insertBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b, int pos);

t_osc_err osc_message_u_explode(t_osc_bndl_u *dest, t_osc_msg_u *msg, int maxlevel, char *sep);

t_osc_err osc_message_u_serialize(t_osc_msg_u *m, long *buflen, char **buf);
t_osc_err osc_message_u_format(t_osc_msg_u *m, long *buflen, char **buf);
t_osc_err osc_message_u_formatArgs(t_osc_msg_u *m, long *buflen, char **buf);

t_osc_message_array_u *osc_message_array_u_alloc(long len);
void osc_message_array_u_free(t_osc_msg_ar_u *ar);//#define osc_message_array_u_free(ar) osc_array_free((ar))
#define osc_message_array_u_clear(ar) osc_array_clear((ar))
#define osc_message_array_u_get(ar, idx) osc_array_get((ar), (idx))
#define osc_message_array_u_getLen(ar) osc_array_getLen((ar))
#define osc_message_array_u_copy(ar) osc_array_copy((ar))
#define osc_message_array_u_resize(ar, newlen) osc_array_resize((ar), (newlen))

t_osc_array *osc_message_u_getArgArrayCopy(t_osc_msg_u *msg);

#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_U_H__
