/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2012, The Regents of
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

/** 	\file osc_strfmt.h
	\author John MacCallum
*/

#ifndef __OSC_STRFMT_H__
#define __OSC_STRFMT_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_timetag.h"
#include <inttypes.h>
#include <string.h>

#define OSC_STRFMT_META_CHARS ((char []){'"', '\\'})

int osc_strfmt_int8(char *buf, size_t n, int8_t i);
int osc_strfmt_int16(char *buf, size_t n, int16_t i);
int osc_strfmt_int32(char *buf, size_t n, int32_t i);
int osc_strfmt_int64(char *buf, size_t n, int64_t i);

int osc_strfmt_uint8(char *buf, size_t n, uint8_t i);
int osc_strfmt_uint16(char *buf, size_t n, uint16_t i);
int osc_strfmt_uint32(char *buf, size_t n, uint32_t i);
int osc_strfmt_uint64(char *buf, size_t n, uint64_t i);

int osc_strfmt_float32(char *buf, size_t n, float f);
int osc_strfmt_float64(char *buf, size_t n, double f);

int osc_strfmt_bool(char *buf, size_t n, char b);
int osc_strfmt_null(char *buf, size_t n);

int osc_strfmt_timetag(char *buf, size_t n, t_osc_timetag t);

int osc_strfmt_blob(char *buf, size_t n, char *blob);

int osc_strfmt_quotedString(char *buf, size_t n, char *str);
int osc_strfmt_stringWithQuotedMeta(char *buf, size_t n, char *str);
int osc_strfmt_quotedStringWithQuotedMeta(char *buf, size_t n, char *str);
int osc_strfmt_countMeta(int len, char *buf);
int osc_strfmt_isMeta(char c);
int osc_strfmt_addQuotesAndQuoteMeta(int len, char *buf, char **out) __attribute__((deprecated("use osc_strfmt_quotedStringWithQuotedMeta() instead.")));

int osc_strfmt_strlenPadded(char *str);

#ifdef __cplusplus
extern "C" {
#endif

#endif
