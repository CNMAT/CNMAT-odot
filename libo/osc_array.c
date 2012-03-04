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

#include "osc.h"
#include "osc_bundle_u.r"
#include "osc_bundle_s.r"
#include "osc_message_u.r"
#include "osc_message_s.r"
#include "osc_atom_u.r"
#include "osc_atom_s.r"
#include "osc_array.h"
#include "osc_array.r"
#include "osc_mem.h"
#include "osc_error.h"
#include <string.h>

t_osc_array *osc_array_allocWithSize(long len, size_t membersize)
{
	t_osc_array *ar = osc_mem_alloc(sizeof(t_osc_array));
	if(!ar){
		return NULL;
	}
	if(len == 0 || membersize == 0){
		ar->ar = NULL;
	}else{
		ar->ar = osc_mem_alloc(len * membersize);
	}
	ar->len = len;
	ar->membersize = membersize;

#ifdef OSC_ARRAY_CLEAR_ON_ALLOC
	osc_array_clear(ar);
#endif
	return ar;
}

void osc_array_free(t_osc_array *ar)
{
	if(ar){
		osc_mem_free(ar->ar);
		osc_mem_free(ar);
	}
}

void osc_array_clear(t_osc_array *ar)
{
	if(ar){
		memset(ar->ar, '\0', ar->len * ar->membersize);
	}
}

void *osc_array_get(t_osc_array *ar, long idx){
	if(!ar){
		return NULL;
	}
	if(ar->len <= idx){
		return NULL;
	}
	return ar->ar + (idx * ar->membersize);
}

long osc_array_getLen(t_osc_array *ar)
{
	if(!ar){
		return 0;
	}
	return ar->len;
}

t_osc_array *osc_array_copy(t_osc_array *array)
{
	if(!array){
		return NULL;
	}
	t_osc_ar *cp = osc_array_allocWithSize(array->len, array->membersize);
	memcpy(cp->ar, array->ar, cp->len * cp->membersize);
	return cp;
}

t_osc_err osc_array_copyInto(t_osc_array **dest, t_osc_array *src, long offset)
{
	if(!src){
		return OSC_ERR_INVAL;
	}
	long srclen = src->len;
	long srcsize = src->membersize;
	long srclen_bytes = srclen * srcsize;
	long destlen = srclen + offset;
	long destlen_bytes = destlen * srcsize;
	if(!(*dest)){
		*dest = osc_array_allocWithSize(destlen, srcsize);
	}else{
		if(destlen_bytes < srclen_bytes){
			(*dest)->ar = osc_mem_resize((*dest)->ar, destlen_bytes);
			if(!((*dest)->ar)){
				return OSC_ERR_OUTOFMEM;
			}
		}
	}
	memcpy((*dest)->ar + (offset * srcsize), src->ar, srclen_bytes);
	return OSC_ERR_NONE;
}

t_osc_err osc_array_resize(t_osc_array *array, int newlen)
{
	if(!array){
		return OSC_ERR_INVAL;
	}
	array->ar = osc_mem_resize(array->ar, newlen * array->membersize);
	if(array->ar){
#ifdef OSC_ARRAY_CLEAR_ON_ALLOC
		if(newlen > array->len){
			memset(array->ar + (array->len * array->membersize), '\0', (newlen - array->len) * array->membersize);
		}
#endif
		array->len = newlen;
		return OSC_ERR_NONE;
	}else{
		array->len = 0;
		return OSC_ERR_OUTOFMEM;
	}
}

void osc_array_set(t_osc_array *ar, void *ptr, long len, size_t membersize)
{
	if(ar){
		ar->ar = ptr;
		ar->len = len;
		ar->membersize = membersize;
	}
}
