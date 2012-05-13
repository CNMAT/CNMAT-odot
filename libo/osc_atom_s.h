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

/** 	\file osc_atom_s.h
	\author John MacCallum

\brief Basic polymorphic data type for representing serialized arguments in an OSC message.

osc_atom_s.h provides a basic polymorphic data type (#t_osc_atom_s) useful for  representing
the arguments in a serialized OSC message.  Currently, it supports the following types:

<table>
<tr><th>Description</th><th>C Data type</th><th>OSC typetag</th></tr>
<tr><td>64-bit (double) precision floating point</td><td>double</td><td>d</td></tr>
<tr><td>32-bit (single) precision floating point</td><td>float</td><td>f</td></tr>
<tr><td>Signed 32-bit integer</td><td>int32_t</td><td>i</td></tr>
<tr><td>Unsigned 32-bit integer</td><td>uint32_t</td><td>h</td></tr>
<tr><td>Signed 64-bit integer</td><td>int64_t</td><td>I</td></tr>
<tr><td>Unsigned 64-bit integer</td><td>uint64_t</td><td>H</td></tr>
<tr><td>String</td><td>char *</td><td>s</td></tr>
<tr><td>True</td><td>\<none\></td><td>T</td></tr>
<tr><td>False</td><td>\<none\></td><td>F</td></tr>
<tr><td>Null</td><td>\<none\></td><td>N</td></tr>
<tr><td>OSC bundle (nested)</td><td>char *</td><td>#</td></tr>
</table>

*/

#ifndef __OSC_ATOM_S_H__
#define __OSC_ATOM_S_H__

#ifdef __cplusplus
extern "C" {
#endif

/** \brief Opaque data type for storing an argument to an OSC message

This structure is defined in osc_atom_s.r.  
*/
typedef struct _osc_atom_s t_osc_atom_s;

#include <stdint.h>
#include <stdlib.h>
#include "osc_error.h"
#include "osc_byteorder.h"
#include "osc_atom_u.h"
#include "osc_bundle_s.h"

/** \brief Allocate a #t_osc_atom_s and set it to refer to ptr

This function will call #osc_atom_s_set().  The array that ptr points to will not be copied
and must be freed by the caller.
\return A #t_osc_atom_s
 */
t_osc_atom_s *osc_atom_s_alloc(char typetag, char *ptr);
size_t osc_atom_s_getStructSize(void);
void osc_atom_s_set(t_osc_atom_s *a, char typetag, char *ptr);
char osc_atom_s_getTypetag(t_osc_atom_s *a);
char *osc_atom_s_getData(t_osc_atom_s *a);

float osc_atom_s_getFloat(t_osc_atom_s *a);
double osc_atom_s_getDouble(t_osc_atom_s *a);
int8_t osc_atom_s_getInt8(t_osc_atom_s *a);
int16_t osc_atom_s_getInt16(t_osc_atom_s *a);
int32_t osc_atom_s_getInt32(t_osc_atom_s *a);
int64_t osc_atom_s_getInt64(t_osc_atom_s *a);
uint8_t osc_atom_s_getUInt8(t_osc_atom_s *a);
uint16_t osc_atom_s_getUInt16(t_osc_atom_s *a);
uint32_t osc_atom_s_getUInt32(t_osc_atom_s *a);
uint64_t osc_atom_s_getUInt64(t_osc_atom_s *a);
int osc_atom_s_getInt(t_osc_atom_s *a);
int osc_atom_s_getStringLen(t_osc_atom_s *a);
int osc_atom_s_getString(t_osc_atom_s *a, size_t n, char **out);
int osc_atom_s_getBool(t_osc_atom_s *a);
t_osc_err osc_atom_s_getBndl(t_osc_bndl_s **b, t_osc_atom_s *a);
t_osc_err osc_atom_s_getBndlCopy(t_osc_bndl_s **b, t_osc_atom_s *a);

void osc_atom_s_setFloat(t_osc_atom_s *a, float v);
void osc_atom_s_setDouble(t_osc_atom_s *a, double v);
void osc_atom_s_setInt8(t_osc_atom_s *a, int8_t v);
void osc_atom_s_setInt16(t_osc_atom_s *a, int16_t v);
void osc_atom_s_setInt32(t_osc_atom_s *a, int32_t v);
void osc_atom_s_setInt64(t_osc_atom_s *a, int64_t v);
void osc_atom_s_setUInt8(t_osc_atom_s *a, uint8_t v);
void osc_atom_s_setUInt16(t_osc_atom_s *a, uint16_t v);
void osc_atom_s_setUInt32(t_osc_atom_s *a, uint32_t v);
void osc_atom_s_setUInt64(t_osc_atom_s *a, uint64_t v);
void osc_atom_s_setString(t_osc_atom_s *a, char *v);
void osc_atom_s_setTrue(t_osc_atom_s *a);
void osc_atom_s_setFalse(t_osc_atom_s *a);
void osc_atom_s_setNull(t_osc_atom_s *a);

size_t osc_atom_s_sizeof(t_osc_atom_s *a);
t_osc_err osc_atom_s_deserialize(t_osc_atom_s *a, t_osc_atom_u **a_u);
t_osc_err osc_atom_s_format(t_osc_atom_s *a, long *buflen, char **buf);

#ifdef __cplusplus
}
#endif

#endif // __OSC_ATOM_S_H__
