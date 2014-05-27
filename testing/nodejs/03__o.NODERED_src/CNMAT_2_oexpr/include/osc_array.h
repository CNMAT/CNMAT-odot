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

#ifndef __OSC_ARRAY_H__
#define __OSC_ARRAY_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdlib.h>
typedef struct _osc_array t_osc_array, t_osc_ar;

#define osc_array_alloc(len, type) osc_array_allocWithSize(len, sizeof(type))

t_osc_array *osc_array_allocWithSize(long len, size_t membersize);
void osc_array_free(t_osc_array *ar);
void osc_array_clear(t_osc_array *ar);
void *osc_array_get(t_osc_array *ar, long idx);
long osc_array_getLen(t_osc_array *ar);
t_osc_array *osc_array_copy(t_osc_array *array);
t_osc_err osc_array_copyInto(t_osc_array **dest, t_osc_array *src, long offset);
t_osc_err osc_array_resize(t_osc_array *array, int newlen);
void osc_array_set(t_osc_array *ar, void *ptr, long len, size_t membersize);

#ifdef __cplusplus
}
#endif

#endif // __OSC_ARRAY_H__
