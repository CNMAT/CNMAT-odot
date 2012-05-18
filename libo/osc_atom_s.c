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
#include <math.h> // for floor() used in formatting floats
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_atom_s.h"
#include "osc_atom_s.r"
#include "osc_atom_u.h"
#include "osc_strfmt.h"

t_osc_atom_s *osc_atom_s_alloc(char typetag, char *ptr)
{
	t_osc_atom_s *a = osc_mem_alloc(sizeof(t_osc_atom_s));
	osc_atom_s_set(a, typetag, ptr);
	return a;
}

size_t osc_atom_s_getStructSize(void)
{
	return sizeof(t_osc_atom_s);
}

void osc_atom_s_set(t_osc_atom_s *a, char typetag, char *ptr)
{
	if(!a){
		return;
	}
	a->typetag = typetag;
	a->data = ptr;
}

char osc_atom_s_getTypetag(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	return a->typetag;
}

char *osc_atom_s_getData(t_osc_atom_s *a)
{
	if(!a){
		return NULL;
	}
	return a->data;
}

float osc_atom_s_getFloat(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return *((float *)&i);
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (float)(*((double *)&i));
		}
	case 'c':
	case 'u':
	case 'i': // signed 32-bit int
		return (float)(ntoh32(*((int32_t *)(a->data))));
	case 'h': // signed 64-bit int
		return (float)(ntoh64(*((int64_t *)(a->data))));
	case 'C':
	case 'U':
	case 'I': // unsigned 32-bit int
		return (float)(ntoh32(*((uint32_t *)(a->data))));
	case 'H': // unsigned 64-bit int
		return (float)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return strtof(a->data, &endp);
		}
	case 'T': // true
		return 1.f;
	case 'F': // false
		return 0.f;
	case 'N': // NULL
		return 0.f;
	}
	return 0.f;
}

double osc_atom_s_getDouble(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return *((double *)&i);
		}
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (double)(*((float *)&i));
		}
	case 'c':
	case 'u':
	case 'i': // signed 32-bit int
		return (double)(ntoh32(*((int32_t *)(a->data))));
	case 'h': // signed 64-bit int
		return (double)(ntoh64(*((int64_t *)(a->data))));
	case 'C':
	case 'U':
	case 'I': // unsigned 32-bit int
		return (double)(ntoh32(*((uint32_t *)(a->data))));
	case 'H': // unsigned 64-bit int
		return (double)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return strtod(a->data, &endp);
		}
	case 'T': // true
		return 1.;
	case 'F': // false
		return 0.;
	case 'N': // NULL
		return 0.;
	}
	return 0.;
}

int8_t osc_atom_s_getInt8(t_osc_atom_s *a)
{
	return (int8_t)osc_atom_s_getInt32(a);
}

int16_t osc_atom_s_getInt16(t_osc_atom_s *a)
{
	return (int16_t)osc_atom_s_getInt32(a);
}

int32_t osc_atom_s_getInt32(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'i': // signed 32-bit int
	case 'c':
	case 'u':
		return ntoh32(*((int32_t *)(a->data)));
	case 'f': // 32-bit IEEE 754 float
		{
			// this looks nasty, but it's correct.
			// interpret the bits as uint32 so that we can
			// call ntoh32, then interpret them as float, then
			// cast to int32
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (int32_t)(*((float *)&i));
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (int32_t)(*((double *)&i));
		}
	case 'h': // signed 64-bit int
		return (int32_t)(ntoh64(*((int64_t *)(a->data))));
	case 'C':
	case 'U':
	case 'I': // unsigned 32-bit int
		return ntoh32(*((uint32_t *)(a->data)));
	case 'H': // unsigned 64-bit int
		return (int32_t)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return (int32_t)strtol(a->data, &endp, 0);
		}
	case 'T': // true
		return 1;
	case 'F': // false
		return 0;
	case 'N': // NULL
		return 0;
	}
	return 0;
}

int64_t osc_atom_s_getInt64(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'h': // signed 64-bit int
		return ntoh64(*((int64_t *)(a->data)));
	case 'c':
	case 'u':
	case 'i': // signed 32-bit int
		return ntoh32(*((int32_t *)(a->data)));
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (int64_t)(*((double *)&i));
		}
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (int64_t)(*((float *)&i));
		}
	case 'I': // unsigned 32-bit int
		return (int64_t)(ntoh32(*((uint32_t *)(a->data))));
	case 'C':
	case 'U':
	case 'H': // unsigned 64-bit int
		return (int64_t)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return (int64_t)strtoll(a->data, &endp, 0);
		}
	case 'T': // true
		return 1;
	case 'F': // false
		return 0;
	case 'N': // NULL
		return 0;
	}
	return 0;
}

uint8_t osc_atom_s_getUInt8(t_osc_atom_s *a)
{
	return (uint8_t)osc_atom_s_getUInt32(a);
}

uint16_t osc_atom_s_getUInt16(t_osc_atom_s *a)
{
	return (uint16_t)osc_atom_s_getUInt32(a);
}

uint32_t osc_atom_s_getUInt32(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'I': // unsigned 32-bit int
		return ntoh32(*((uint32_t *)(a->data)));
	case 'C':
	case 'U':
	case 'c':
	case 'u':
	case 'i': // signed 32-bit int
		return (uint32_t)(ntoh32(*((int32_t *)(a->data))));
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (uint32_t)(*((float *)&i));
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (uint32_t)(*((double *)&i));
		}
	case 'h': // signed 64-bit int
		return (uint32_t)(ntoh64(*((int64_t *)(a->data))));
	case 'H': // unsigned 64-bit int
		return (uint32_t)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return (uint32_t)strtoul(a->data, &endp, 0);
		}
	case 'T': // true
		return 1;
	case 'F': // false
		return 0;
	case 'N': // NULL
		return 0;
	}
	return 0;
}

uint64_t osc_atom_s_getUInt64(t_osc_atom_s *a){
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'H': // unsigned 64-bit int
		return ntoh64(*((uint64_t *)(a->data)));
	case 'c':
	case 'u':
	case 'i': // signed 32-bit int
		return (uint64_t)(ntoh32(*((int32_t *)(a->data))));
	case 'h': // signed 64-bit int
		return (uint64_t)(ntoh64(*((int64_t *)(a->data))));
	case 'C':
	case 'U':
	case 'I': // unsigned 32-bit int
		return (uint64_t)(ntoh32(*((uint32_t *)(a->data))));
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (uint64_t)(*((float *)&i));
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (uint64_t)(*((double *)&i));
		}
	case 's': // string
		{
			char *endp = NULL;
			return (uint64_t)strtoull(a->data, &endp, 0);
		}
	case 'T': // true
		return 1;
	case 'F': // false
		return 0;
	case 'N': // NULL
		return 0;
	}
	return 0;
}

int osc_atom_s_getInt(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'i': // signed 32-bit int
		return (int)(ntoh32(*((int32_t *)(a->data))));
	case 'c':
	case 'u':
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return (int)(*((float *)&i));
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return (int)(*((double *)&i));
		}
	case 'h': // signed 64-bit int
		return (int)(ntoh64(*((int64_t *)(a->data))));
	case 'C':
	case 'U':
	case 'I': // unsigned 32-bit int
		return (int)(ntoh32(*((uint32_t *)(a->data))));
	case 'H': // unsigned 64-bit int
		return (int)(ntoh64(*((uint64_t *)(a->data))));
	case 's': // string
		{
			char *endp = NULL;
			return (int)strtol(a->data, &endp, 0);
		}
	case 'T': // true
		return 1;
	case 'F': // false
		return 0;
	case 'N': // NULL
		return 0;
	}
	return 0;
}

int osc_atom_s_getStringLen(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 's': // string
		return strlen(a->data);
	case 'i': // signed 32-bit int
		{
			int32_t i = ntoh32(*((int32_t *)(a->data)));
			return osc_strfmt_int32(NULL, 0, i);
		}
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			float f = *((float *)&i);
			return osc_strfmt_float32(NULL, 0, f);
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			double f = *((double *)&i);
			return osc_strfmt_float64(NULL, 0, f);
		}
	case 'c': // signed 8-bit int
		{
			int8_t i = (char)ntoh32(*((int32_t *)(a->data)));
			return osc_strfmt_int8(NULL, 0, i);
		}
	case 'C': // unsigned 8-bit int
		{
			uint8_t i = (uint8_t)ntoh32(*((int32_t *)(a->data)));
			return osc_strfmt_uint32(NULL, 0, i);
		}
	case 'u': // signed 16-bit int
		{
			int16_t i = (int16_t)ntoh32(*((int32_t *)(a->data)));
			return osc_strfmt_int16(NULL, 0, i);
		}
	case 'U': // unsigned 16-bit int
		{
			uint16_t i = (uint16_t)ntoh32(*((int32_t *)(a->data)));
			return osc_strfmt_uint16(NULL, 0, i);
		}
	case 'h': // signed 64-bit int
		{
			int64_t i = ntoh64(*((int64_t *)(a->data)));
			return osc_strfmt_int64(NULL, 0, i);
		}
	case 'I': // unsigned 32-bit int
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			return osc_strfmt_uint32(NULL, 0, i);
		}
	case 'H': // unsigned 64-bit int
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			return osc_strfmt_uint64(NULL, 0, i);
		}
	case 'T': // true
		return osc_strfmt_bool(NULL, 0, 'T');
	case 'F': // false
		return osc_strfmt_bool(NULL, 0, 'F');
	case 'N': // NULL
		return osc_strfmt_null(NULL, 0);
	}
	return 0;
}

int osc_atom_s_getString(t_osc_atom_s *a, size_t n, char **out)
{	
	if(!a){
		return 0;
	}
	int stringlen = osc_atom_s_getStringLen(a);
	int nn = n;
	if(!(*out)){
		nn = stringlen + 1;
		*out = osc_mem_alloc(nn);
	}
	if(!(*out)){
		return 0;
	}
	switch(a->typetag){
	case 's': // string
		strncpy(*out, a->data, nn);
		break;
	case 'i': // signed 32-bit int
		{
			int32_t i = ntoh32(*((int32_t *)(a->data)));
			osc_strfmt_int32(*out, nn, i);
			break;
		}
	case 'f': // 32-bit IEEE 754 float
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			float f = *((float *)&i);
			osc_strfmt_float32(*out, nn, f);
			break;
		}
	case 'd': // 64-bit IEEE 754 double
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			double f = *((double *)&i);
			osc_strfmt_float64(*out, nn, f);
			break;
		}
	case 'h': // signed 64-bit int
		{
			int64_t i = ntoh64(*((int64_t *)(a->data)));
			osc_strfmt_int64(*out, nn, i);
			break;
		}
	case 'c': // signed 8-bit int
		{
			int8_t i = (int8_t)ntoh32(*((int32_t *)(a->data)));
			osc_strfmt_int8(*out, nn, i);
			break;
		}
	case 'C': // unsigned 8-bit int
		{
			uint8_t i = (uint8_t)ntoh32(*((int32_t *)(a->data)));
			osc_strfmt_uint8(*out, nn, i);
			break;
		}
	case 'u': // signed 16-bit int
		{
			int16_t i = (int16_t)ntoh32(*((int32_t *)(a->data)));
			osc_strfmt_int16(*out, nn, i);
			break;
		}
	case 'U': // unsigned 16-bit int
		{
			uint16_t i = (uint16_t)ntoh32(*((int32_t *)(a->data)));
			osc_strfmt_uint16(*out, nn, i);
			break;
		}
	case 'I': // unsigned 32-bit int
		{
			uint32_t i = ntoh32(*((uint32_t *)(a->data)));
			osc_strfmt_uint32(*out, nn, i);
			break;
		}
	case 'H': // unsigned 64-bit int
		{
			uint64_t i = ntoh64(*((uint64_t *)(a->data)));
			osc_strfmt_uint64(*out, nn, i);
			break;
		}
	case 'T': // true
		osc_strfmt_bool(*out, nn, 'T');
		break;
	case 'F': // false
		osc_strfmt_bool(*out, nn, 'F');
		break;
	case 'N': // NULL
		osc_strfmt_null(*out, nn);
		break;
	}
	return stringlen;
}

int osc_atom_s_getBool(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	switch(a->typetag){
	case 'T':
		return 1;
	case 'F':
	case 'N':
		return 0;
	case 'c':
	case 'C':
	case 'u':
	case 'U':
	case 'i':
		return !(ntoh32(*((int32_t *)a->data)) == 0);
	case 'h':
		return !(ntoh64(*((int64_t *)a->data)) == 0);
	case 'I':
		return !(ntoh32(*((uint32_t *)a->data)) == 0);
	case 'H':
		return !(ntoh64(*((uint64_t *)a->data)) == 0);
	case 'f':
		{
			uint32_t i = ntoh32(*((uint32_t *)a->data));
			return !(*((float *)&i) == 0);
		}
	case 'd':
		{
			uint64_t i = ntoh64(*((uint64_t *)a->data));
			return !(*((double *)&i) == 0);
		}
	case 's':
		// not sure what to do here...
		if(a->data){
			if(!strcmp(a->data, "true") || !strcmp(a->data, "True") || 
			   !strcmp(a->data, "TRUE") || (a->data[0] == 't' && a->data[1] == '\0') || 
			   (a->data[0] == 'T' && a->data[1] == '\0')){
				return 1;
			}else if(!strcmp(a->data, "false") || !strcmp(a->data, "False") || 
				 !strcmp(a->data, "FALSE") || (a->data[0] == 'f' && a->data[1] == '\0') || 
				 (a->data[0] == 'F' && a->data[1] == '\0')){
				return 0;
			}
		}else{
			return 0;
		}
	case OSC_BUNDLE_TYPETAG:
		return 0;
	}
	return 0;
}

t_osc_err osc_atom_s_getBndl(t_osc_bndl_s **b, t_osc_atom_s *a)
{
	if(!a){
		return OSC_ERR_INVAL;
	}
	if(a->typetag != OSC_BUNDLE_TYPETAG){
		return OSC_ERR_BADTYPETAG;
	}
	if(!(a->data)){
		return OSC_ERR_NOBUNDLE;
	}
	uint32_t len = ntoh32(*((uint32_t *)a->data));
	char *ptr = a->data + 4;
	if(!(*b)){
		*b = osc_bundle_s_alloc(len, ptr);
	}else{
		osc_bundle_s_setLen(*b, len);
		osc_bundle_s_setPtr(*b, ptr);
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_s_getBndlCopy(t_osc_bndl_s **b, t_osc_atom_s *a)
{
	t_osc_err e = osc_atom_s_getBndl(b, a);
	if(e){
		return e;
	}
	long len = osc_bundle_s_getLen(*b);
	char *ptr = osc_mem_alloc(len);
	memcpy(ptr, osc_bundle_s_getPtr(*b), len);
	return OSC_ERR_NONE;
}

void osc_atom_s_setFloat(t_osc_atom_s *a, float v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(sizeof(float));
	}
	a->typetag = 'f';
	*((float *)(a->data)) = hton32(*((uint32_t *)&v));
}

void osc_atom_s_setDouble(t_osc_atom_s *a, double v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(sizeof(double));
	}
	a->typetag = 'd';
	*((double *)(a->data)) = hton64(*((uint64_t *)&v));
}

void osc_atom_s_setInt8(t_osc_atom_s *a, int8_t v)
{
	if(!a){
		return;
	}
	int32_t vv = (int32_t)v;
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'c';
	*((int32_t *)(a->data)) = hton32(vv);
}

void osc_atom_s_setInt16(t_osc_atom_s *a, int16_t v)
{
	if(!a){
		return;
	}
	int32_t vv = (int32_t)v;
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'u';
	*((int32_t *)(a->data)) = hton32(vv);
}

void osc_atom_s_setInt32(t_osc_atom_s *a, int32_t v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'i';
	*((int32_t *)(a->data)) = hton32(v);
}

void osc_atom_s_setInt64(t_osc_atom_s *a, int64_t v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(8);
	}
	a->typetag = 'h';
	*((int64_t *)(a->data)) = hton64(v);
}

void osc_atom_s_setUInt8(t_osc_atom_s *a, uint8_t v)
{
	if(!a){
		return;
	}
	uint8_t vv = (uint8_t)v;
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'C';
	*((uint32_t *)(a->data)) = hton32(vv);
}

void osc_atom_s_setUInt16(t_osc_atom_s *a, uint16_t v)
{
	if(!a){
		return;
	}
	uint16_t vv = (uint16_t)v;
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'U';
	*((uint32_t *)(a->data)) = hton32(vv);
}

void osc_atom_s_setUInt32(t_osc_atom_s *a, uint32_t v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(4);
	}
	a->typetag = 'I';
	*((uint32_t *)(a->data)) = hton32(v);
}

void osc_atom_s_setUInt64(t_osc_atom_s *a, uint64_t v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(8);
	}
	a->typetag = 'H';
	*((uint64_t *)(a->data)) = hton64(v);
}

void osc_atom_s_setString(t_osc_atom_s *a, char *v)
{
	if(!a){
		return;
	}
	if(a->data == NULL){
		a->data = osc_mem_alloc(strlen(v) + 1);
	}
	a->typetag = 's';
	strcpy(a->data, v);
}

void osc_atom_s_setTrue(t_osc_atom_s *a)
{
	if(!a){
		return;
	}
	a->typetag = 'T';
}

void osc_atom_s_setFalse(t_osc_atom_s *a)
{
	if(!a){
		return;
	}
	a->typetag = 'F';
}

void osc_atom_s_setNull(t_osc_atom_s *a)
{
	if(!a){
		return;
	}
	a->typetag = 'N';
}

size_t osc_atom_s_sizeof(t_osc_atom_s *a)
{
	if(!a){
		return 0;
	}
	return osc_sizeof(a->typetag, a->data);
}

t_osc_err osc_atom_s_deserialize(t_osc_atom_s *a, t_osc_atom_u **a_u)
{
	if(!a){
		return OSC_ERR_INVAL;
	}
	t_osc_atom_u *atom_u = NULL;
	if(!(*a_u)){
		atom_u = osc_atom_u_alloc();
	}else{
		atom_u = *a_u;
	}

	switch(osc_atom_s_getTypetag(a)){
	case 'i':
		osc_atom_u_setInt32(atom_u, osc_atom_s_getInt32(a));
		break;
	case 'f':
		osc_atom_u_setFloat(atom_u, osc_atom_s_getFloat(a));
		break;
	case 'd':
		osc_atom_u_setDouble(atom_u, osc_atom_s_getDouble(a));
		break;
	case 's':
		{
			char *buf = NULL;
			osc_atom_s_getString(a, 0, &buf); // allocates memory and makes a copy
			osc_atom_u_setStringPtr(atom_u, buf);
			osc_atom_u_setShouldFreePtr(atom_u, 1);
		}
		break;
	case 'c':
		osc_atom_u_setInt8(atom_u, osc_atom_s_getInt8(a));
		break;
	case 'C':
		osc_atom_u_setUInt8(atom_u, osc_atom_s_getUInt8(a));
		break;
	case 'u':
		osc_atom_u_setInt16(atom_u, osc_atom_s_getInt16(a));
		break;
	case 'U':
		osc_atom_u_setUInt16(atom_u, osc_atom_s_getUInt16(a));
		break;
	case 'h':
		osc_atom_u_setInt64(atom_u, osc_atom_s_getInt64(a));
		break;
	case 'I':
		osc_atom_u_setUInt32(atom_u, osc_atom_s_getUInt32(a));
		break;
	case 'H':
		osc_atom_u_setUInt64(atom_u, osc_atom_s_getUInt64(a));
		break;
	case 'T':
		osc_atom_u_setTrue(atom_u);
		break;
	case 'F':
		osc_atom_u_setFalse(atom_u);
		break;
	case 'N':
		osc_atom_u_setNull(atom_u);
		break;
	case OSC_BUNDLE_TYPETAG:
		{
			char bndl[osc_bundle_s_getStructSize()];
			t_osc_bndl_s *b = (t_osc_bndl_s *)bndl;
			osc_atom_s_getBndl(&b, a);
			if(b){
				osc_atom_u_setBndl(atom_u, osc_bundle_s_getLen(b), osc_bundle_s_getPtr(b));
			}
		}
		break;
		;
	}
	*a_u = atom_u;
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_s_doFormat(t_osc_atom_s *a, long *buflen, long *bufpos, char **buf)
{
	if(!a){
		return OSC_ERR_NOBUNDLE;
	}
	if(osc_atom_s_getTypetag(a) == OSC_BUNDLE_TYPETAG){
		char *data = osc_atom_s_getData(a);
		*bufpos += sprintf(*buf + *bufpos, "[\n");
		extern t_osc_err osc_bundle_s_doFormat(long len, char *bndl, long *buflen, long *bufpos, char **buf);
		osc_bundle_s_doFormat(ntoh32(*((uint32_t *)data)), data + 4, buflen, bufpos, buf);
		*bufpos += sprintf(*buf + *bufpos, "]");
	}else if(osc_atom_s_getTypetag(a) == 's'){
		char *stringptr = osc_atom_s_getData(a);
		int stringlen = strlen(stringptr);

#ifdef OSC_QUOTE_STRINGS
		int n = stringlen + 4 + osc_strfmt_countMeta(stringlen, stringptr);
#else
		int n = stringlen + 2;
#endif
		if((*buflen - *bufpos) < n){
			*buf = osc_mem_resize(*buf, *buflen + n);
			if(!(*buf)){
				return OSC_ERR_OUTOFMEM;
			}
			*buflen += n;
		}
		char *b = *buf + *bufpos;
#ifdef OSC_QUOTE_STRINGS
		(*bufpos) += osc_strfmt_addQuotesAndQuoteMeta(stringlen, stringptr, &b);
#else
		(*bufpos) += osc_atom_s_getString(a, *buflen - *bufpos, &b);
#endif
		(*buf)[(*bufpos)++] = ' ';
		(*buf)[(*bufpos)] = '\0';
	}else{
		int n = osc_atom_s_getStringLen(a) + 2; // space and null byte
		if((*buflen - *bufpos) < n){
			*buf = osc_mem_resize(*buf, *buflen + n);
			if(!(*buf)){
				return OSC_ERR_OUTOFMEM;
			}
			*buflen += n;
		}
		char *b = *buf + *bufpos;
		(*bufpos) += osc_atom_s_getString(a, *buflen - *bufpos, &b);
		(*buf)[(*bufpos)++] = ' ';
		(*buf)[(*bufpos)] = '\0';
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_atom_s_format(t_osc_atom_s *a, long *buflen, char **buf)
{
	if(!a){
		return OSC_ERR_INVAL;
	}
	long mybuflen = 0, mybufpos = 0;
	t_osc_err e = osc_atom_s_doFormat(a, &mybuflen, &mybufpos, buf);
	*buflen = mybufpos;
	return e;
}
