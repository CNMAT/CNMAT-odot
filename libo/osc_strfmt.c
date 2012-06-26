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

#include "osc_strfmt.h"
#include "osc_mem.h"
#include <stdio.h>
#include <math.h>


int osc_strfmt_int8(char *buf, size_t n, int8_t i)
{
	return snprintf(buf, n, "'%c'", i);
}

int osc_strfmt_int16(char *buf, size_t n, int16_t i)
{
	return snprintf(buf, n, "%"PRId16, i);
}

int osc_strfmt_int32(char *buf, size_t n, int32_t i)
{
	return snprintf(buf, n, "%"PRId32, i);
}

int osc_strfmt_int64(char *buf, size_t n, int64_t i)
{
	return snprintf(buf, n, "%"PRId64, i);
}


int osc_strfmt_uint8(char *buf, size_t n, uint8_t i)
{
	return snprintf(buf, n, "'%c'", i);
}

int osc_strfmt_uint16(char *buf, size_t n, uint16_t i)
{
	return snprintf(buf, n, "%"PRIu16, i);
}

int osc_strfmt_uint32(char *buf, size_t n, uint32_t i)
{
	return snprintf(buf, n, "%"PRIu32, i);
}

int osc_strfmt_uint64(char *buf, size_t n, uint64_t i)
{
	return snprintf(buf, n, "%"PRIu64, i);
}


int osc_strfmt_float32(char *buf, size_t n, float f)
{
	return osc_strfmt_float64(buf, n, f);
}

int osc_strfmt_float64(char *buf, size_t n, double f)
{
	int need_point = f - floorf(f) == 0 ? 1 : 0;
	if(need_point){
		return snprintf(buf, n, "%g.", f);
	}else{
		return snprintf(buf, n, "%g", f);
	}

}


int osc_strfmt_bool(char *buf, size_t n, char b)
{
	switch(b){
	case 't':
	case 'T':
		return snprintf(buf, n, "true");
	case 'f':
	case 'F':
		return snprintf(buf, n, "false");
	default:
		return 0;
	}
}

int osc_strfmt_null(char *buf, size_t n)
{
	return snprintf(buf, n, "null");
}

int osc_strfmt_addQuotes(int len, char *buf, char **out)
{
	if(!buf){
		return 0;
	}
	if(!(*out)){
		*out = osc_mem_alloc(len + 3);
	}
	int i = 0;
	if(buf[0] != '\"'){
		(*out)[i++] = '\"';
	}
	strncpy((*out) + i, buf, len);
	i += len;
	if(buf[len - 1] != '\"'){
		(*out)[i++] = '\"';
	}
	(*out)[i] = '\0';
	return i;
}

int osc_strfmt_countMeta(int len, char *buf)
{
	int i;
	int n = 0;
	for(i = 0; i < len; i++){
		if(osc_strfmt_isMeta(buf[i])){
			n++;
		}
	}
	return n;
}

int osc_strfmt_isMeta(char c)
{
	int i;
	for(i = 0; i < sizeof(OSC_STRFMT_META_CHARS); i++){
		if(c == OSC_STRFMT_META_CHARS[i]){
			return 1;
		}
	}
	return 0;
}

int osc_strfmt_addQuotesAndQuoteMeta(int len, char *buf, char **out)
{
	if(!buf){
		return 0;
	}
	int n = len + 2 + osc_strfmt_countMeta(len, buf);
	if(!(*out)){
		*out = osc_mem_alloc(n);
	}
	int i = 0;
	if(1){//buf[0] != '\"'){
		(*out)[i++] = '\"';
	}

	//strncpy((*out) + i, buf, len);
	//i += len;
	int j;
	for(j = 0; j < len; j++){
		if(osc_strfmt_isMeta(buf[j])){
			(*out)[i++] = '\\';
		}
		(*out)[i++] = buf[j];
	}

	if(1){//buf[len - 1] != '\"'){
		(*out)[i++] = '\"';
	}
	(*out)[i] = '\0';
	return n;
}
