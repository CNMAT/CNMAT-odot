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

/** 	\file osc_atom_array_u.h
	\author John MacCallum

*/

#ifndef __OSC_ATOM_ARRAY_U_H__
#define __OSC_ATOM_ARRAY_U_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_atom_u.h"

typedef t_osc_array t_osc_atom_array_u, t_osc_atom_ar_u;

t_osc_atom_array_u *osc_atom_array_u_alloc(long len);
void osc_atom_array_u_free(t_osc_atom_ar_u *ar);
#define osc_atom_array_u_clear(ar) osc_array_clear((ar))
#define osc_atom_array_u_get(ar, idx) osc_array_get((ar), (idx))
#define osc_atom_array_u_getLen(ar) osc_array_getLen((ar))
//#define osc_atom_array_u_copy(ar) osc_array_copy((ar))
//#define osc_atom_array_u_copyInto(dest, src, offset) osc_array_copyInto((dest), (src), (offset))
#define osc_atom_array_u_resize(ar, newlen) osc_array_resize((ar), (newlen))

t_osc_err osc_atom_array_u_getDoubleArray(t_osc_atom_ar_u *array, double **out);
t_osc_err osc_atom_array_u_getFloatArray(t_osc_atom_ar_u *array, float **out);
t_osc_err osc_atom_array_u_getInt32Array(t_osc_atom_ar_u *array, int32_t **out);
t_osc_err osc_atom_array_u_getInt64Array(t_osc_atom_ar_u *array, int64_t **out);
t_osc_err osc_atom_array_u_getUInt32Array(t_osc_atom_ar_u *array, uint32_t **out);
t_osc_err osc_atom_array_u_getUInt64Array(t_osc_atom_ar_u *array, uint64_t **out);
t_osc_err osc_atom_array_u_getBoolArray(t_osc_atom_ar_u *array, char **out);
t_osc_err osc_atom_array_u_getStringArray(t_osc_atom_ar_u *array, long *len, char **out, const char *sep);
t_osc_array *osc_atom_array_u_copy(t_osc_array *array);
t_osc_err osc_atom_array_u_copyInto(t_osc_array **dest, t_osc_array *src, long offset);
void osc_atom_array_u_set(t_osc_atom_ar_u *ar, void *ptr, long len);

#ifdef __cplusplus
}
#endif

#endif // __OSC_ATOM_ARRAY_U_H__

