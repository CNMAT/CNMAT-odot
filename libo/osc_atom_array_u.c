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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdint.h>
#include <inttypes.h>
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_atom_u.h"
#include "osc_atom_u.r" // need ths to get the size of the struct
#include "osc_array.h"
#include "osc_atom_array_u.h"

t_osc_array *osc_atom_array_u_alloc(long len)
{
	return osc_array_allocWithSize(len, sizeof(t_osc_atom_u));
}

void osc_atom_array_u_free(t_osc_atom_ar_u *ar)
{
	if(ar){
		int i;
		for(i = 0; i < osc_atom_array_u_getLen(ar); i++){
			t_osc_atom_u *a = osc_atom_array_u_get(ar, i);
			if(a->alloc && a->typetag == 's'){
				if(a->w.s){
					osc_mem_free(a->w.s);
				}
			}
		}
		osc_array_free(ar);
	}
}

t_osc_err osc_atom_array_u_getDoubleArray(t_osc_atom_ar_u *array, double **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(double) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getDouble(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getFloatArray(t_osc_atom_ar_u *array, float **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(float) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getFloat(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getInt32Array(t_osc_atom_ar_u *array, int32_t **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(int32_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getInt32(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getInt64Array(t_osc_atom_ar_u *array, int64_t **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(int64_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getInt64(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getUInt32Array(t_osc_atom_ar_u *array, uint32_t **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(uint32_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getUInt32(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getUInt64Array(t_osc_atom_ar_u *array, uint64_t **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(uint64_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getUInt64(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getBoolArray(t_osc_atom_ar_u *array, char **out)
{
	long len = osc_atom_array_u_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(char) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_u_getBool(osc_atom_array_u_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_u_getStringArray(t_osc_atom_ar_u *array, long *len, char **out)
{
	long arlen = osc_atom_array_u_getLen(array);
	long buflen = 256;
	if(!(*out)){
		*out = osc_mem_alloc(buflen); // guess that each element will be around 8 chars
	}
	char *ptr = *out;
	int i;
	for(i = 0; i < arlen; i++){
		if((buflen - (ptr - *out)) < 64){
			long offset = ptr - *out;
			char *tmp = osc_mem_resize(*out, buflen + 256);
			if(tmp){
				*out = tmp;
				ptr = (*out) + offset;
				buflen += 256;
			}else{
				return OSC_ERR_OUTOFMEM;
			}
		}
		ptr += osc_atom_u_getString(osc_atom_array_u_get(array, i), &ptr);
		*ptr++ = ' ';
	}
	*ptr++ = '\0';
	*len = ptr - *out;
	return OSC_ERR_NONE;
}

// we can't use the copy and copyInto routines in osc_array.c because we may have an atom
// with a string that needs to be copied in which case memcpy() is not our friend.
// so unfortunately we need to iterate through every element and copy it.
t_osc_array *osc_atom_array_u_copy(t_osc_array *array)
{
	if(!array){
		return NULL;
	}
	long len = osc_array_getLen(array);
	t_osc_ar *cp = osc_atom_array_u_alloc(len);
	//memcpy(cp->ar, array->ar, cp->len * cp->membersize);
	int i;
	for(i = 0; i < len; i++){
		t_osc_atom_u *src = osc_atom_array_u_get(array, i);
		t_osc_atom_u *dest = osc_atom_array_u_get(cp, i);
		osc_atom_u_copy(&dest, src);
	}
	return cp;
}

t_osc_err osc_atom_array_u_copyInto(t_osc_array **dest, t_osc_array *src, long offset)
{
	if(!src){
		return OSC_ERR_INVAL;
	}
	long srclen = osc_atom_array_u_getLen(src);
	long destlen = srclen + offset;
	if(!(*dest)){
		*dest = osc_atom_array_u_alloc(destlen);
	}else if(osc_atom_array_u_getLen(*dest) < destlen){
		osc_atom_array_u_resize(*dest, destlen);
	}
	int i;
	for(i = 0; i < srclen; i++){
		t_osc_atom_u *s = osc_atom_array_u_get(src, i);
		t_osc_atom_u *d = osc_atom_array_u_get(*dest, i + offset);
		osc_atom_u_copy(&d, s);
	}
	return OSC_ERR_NONE;
}

void osc_atom_array_u_set(t_osc_atom_ar_u *ar, void *ptr, long len)
{
	osc_array_set(ar, ptr, len, sizeof(t_osc_atom_u));
}
