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
#include "osc_atom_s.h"
#include "osc_atom_s.r" // need ths to get the size of the struct
#include "osc_atom_array_s.h"

t_osc_array *osc_atom_array_s_alloc(long len){
	return osc_array_allocWithSize(len, sizeof(t_osc_atom_s));
}

t_osc_err osc_atom_array_s_getDoubleArray(t_osc_atom_ar_s *array, double **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(double) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getDouble(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getFloatArray(t_osc_atom_ar_s *array, float **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(float) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getFloat(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getInt32Array(t_osc_atom_ar_s *array, int32_t **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(int32_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getInt32(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getInt64Array(t_osc_atom_ar_s *array, int64_t **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(int64_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getInt64(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getUInt32Array(t_osc_atom_ar_s *array, uint32_t **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(uint32_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getUInt32(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getUInt64Array(t_osc_atom_ar_s *array, uint64_t **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(uint64_t) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getUInt64(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_array_s_getBoolArray(t_osc_atom_ar_s *array, char **out){
	long len = osc_atom_array_s_getLen(array);
	if(!(*out)){
		*out = osc_mem_alloc(sizeof(char) * len);
	}
	int i;
	for(i = 0; i < len; i++){
		(*out)[i] = osc_atom_s_getBool(osc_atom_array_s_get(array, i));
	}
	return OSC_ERR_NONE;
}
