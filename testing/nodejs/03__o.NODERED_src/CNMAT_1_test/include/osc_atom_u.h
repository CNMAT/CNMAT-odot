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

/** 	\file osc_atom_u.h
	\author John MacCallum

\brief Basic polymorphic data type for representing unserialized arguments in an OSC message.

osc_atom_u.h provides a basic polymorphic data type (#t_osc_atom_u) useful for  representing
the arguments in an unserialized OSC message (#t_osc_msg_u).  #t_osc_atom_u is useful for
building up an OSC bundle (#t_osc_bndl_u) programatically:

\code
#include <stdio.h>
#include <inttypes.h>
#include "osc.h"
#include "osc_error.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_atom_u.h"

int main(int argc, char **argv){
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *m = osc_message_u_alloc();
	t_osc_err e = osc_message_u_setAddress(m, "/foo");
	if(e){
		fprintf(stderr, "%s (%"PRIu64"\n", osc_error_string(e), (uint64_t)e);
		return 1;
	}
	t_osc_atom_u *a1 = osc_atom_u_alloc();
	osc_atom_u_setDouble(a1, 66.6);
	osc_message_u_appendAtom(m, a1);

	t_osc_atom_u *a2 = osc_atom_u_alloc();
	osc_atom_u_setTrue(a2);
	osc_message_u_appendAtom(m, a2);

	osc_bundle_u_addMsg(b, m);

	char *fmt = NULL;
	long len = 0;
	osc_bundle_u_format(b, &len, &fmt);
	if(fmt){
		printf("%s", fmt);
		osc_mem_free(fmt);
	}
	osc_bundle_u_free(b); // this will free all #t_osc_msg_u and #t_osc_atom_u objects added to it
	
	return 0;
}
\endcode



Currently, it supports the following types:

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

#ifndef __OSC_ATOM_U_H__
#define __OSC_ATOM_U_H__

#ifdef __cplusplus
extern "C" {
#endif

/** \brief Opaque data type for storing an argument to an OSC message

This structure is defined in osc_atom_u.r.  
*/
typedef struct _osc_atom_u t_osc_atom_u;

#include <stdint.h>
#include <stdlib.h>
#include "osc_error.h"
#include "osc_bundle_s.h"
#include "osc_bundle_u.h"
#include "osc_atom_u.h"
#include "osc_array.h"
#include "osc_timetag.h"

/** \brief Allocate a #t_osc_atom_u

\return A #t_osc_atom_u
 */
t_osc_atom_u *osc_atom_u_alloc(void);

/**
  \return The size in bytes of the #t_osc_atom_u struct.
 */
size_t osc_atom_u_getStructSize(void);

/** \brief Free a #t_osc_atom_u

\param a The #t_osc_atom_u to be freed
*/
void osc_atom_u_free(t_osc_atom_u *a);

/** \brief Copy a #t_osc_atom_u

\param dest Destination #t_osc_atom_u
\param src The #t_osc_atom_u to be copied

If dest is NULL, a new #t_osc_atom_u will be allocated, but
if dest is non-NULL, no new memory will be allocated
no new memory will be allocated.
 */
void osc_atom_u_copy(t_osc_atom_u **dest, t_osc_atom_u *src);

/** \brief Set whether or not the data that this atom points to should be freed with the atom

If this atom contains a pointer type such as a string, use this function
to set whether or not the memory that the atoms internal pointer points to should be freed
using #osc_mem_free() when the atom is freed.  

The default is 0 (false).

\param a The #t_osc_atom_u
\param val 0 for false, non-zero for true.
*/
void osc_atom_u_setShouldFreePtr(t_osc_atom_u *a, int val);

void osc_atom_u_clear(t_osc_atom_u *a);

/** \brief Get the OSC typetag associated with the #t_osc_atom_u

\param a The #t_osc_atom_u whose typetag will be returned.

\return The typetag.
 */
char osc_atom_u_getTypetag(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 32-bit float.

This function will attempt to convert a string using strtof().  If the #t_osc_atom_u
contains a boolean value, this function will return 0. for false, and 1. for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 32-bit float.
 */
float osc_atom_u_getFloat(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 64-bit float.

This function will attempt to convert a string using strtod().  If the #t_osc_atom_u
contains a boolean value, this function will return 0. for false, and 1. for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 64-bit float.
 */
double osc_atom_u_getDouble(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 8-bit signed int.

This function will attempt to convert a string using strtol().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 8-bit signed int
 */
int8_t osc_atom_u_getInt8(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 16-bit signed int.

This function will attempt to convert a string using strtol().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 16-bit signed int
 */
int16_t osc_atom_u_getInt16(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 32-bit signed int.

This function will attempt to convert a string using strtol().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 32-bit signed int
 */
int32_t osc_atom_u_getInt32(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 64-bit signed int.

This function will attempt to convert a string using strtol().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 64-bit signed int
 */
int64_t osc_atom_u_getInt64(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 8-bit unsigned signed int.

This function will attempt to convert a string using strtoul().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 8-bit unsigned signed int
 */
uint8_t osc_atom_u_getUInt8(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 16-bit unsigned signed int.

This function will attempt to convert a string using strtoul().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 16-bit unsigned signed int
 */
uint16_t osc_atom_u_getUInt16(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 32-bit unsigned signed int.

This function will attempt to convert a string using strtoul().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 32-bit unsigned signed int
 */
uint32_t osc_atom_u_getUInt32(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to a 64-bit unsigned int.

This function will attempt to convert a string using strtoul().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as a 64-bit unsigned int
 */
uint64_t osc_atom_u_getUInt64(t_osc_atom_u *a);

/** \brief Coerce the value of the #t_osc_atom to an int.

This function will attempt to convert a string using strtoul().  If the #t_osc_atom_u
contains a boolean value, this function will return 0 for false, and 1 for true, if
it contains NULL, a 0 will be returned.

\param a A #t_osc_atom_u

\return The value of the #t_osc_atom_u as an int
 */
int osc_atom_u_getInt(t_osc_atom_u *a);

/** \brief Return the address of the string stored in the #t_osc_atom_u.

If the #t_osc_atom_u does not contain a string (typetag 's'), this function will
return NULL.

\param a A #t_osc_atom_u

\return The address of the string contained in the #t_osc_atom_u or NULL if
it does not contain a string.
*/
char *osc_atom_u_getStringPtr(t_osc_atom_u *a);

int osc_atom_u_getQuotedString(t_osc_atom_u *a, char **out);

int osc_atom_u_getStringLen(t_osc_atom_u *a);

/** \brief Return a copy of the string stored in the #t_osc_atom_u

This function will make a copy of its string which must be freed by the caller
using #osc_mem_free().  Numeric values will be converted using sprintf(), and 
boolean values will be either "true" or "false", while NULL will be a single '\0' char.

\param a A #t_osc_atom_u
\param n Size of the char buffer in bytes
\param out A pointer to a buffer where the formatted string will be stored.
Pass NULL to have an appropriately sized buffer allocated with #osc_mem_alloc().

\return The length of the string
 */
int osc_atom_u_getString(t_osc_atom_u *a, size_t n, char **out);

/** \brief Return a 0 or 1

If the value of the #t_osc_atom_u is numeric, the value returned will be a 0 if it is
0, or a 1 if it is non-zero.  If the value is a string, it return the appropriate value
if the string contains "true" or "false".

\param a A #t_osc_atom_u.

\return 0 or 1
 */
int osc_atom_u_getBool(t_osc_atom_u *a);

t_osc_bndl_u *osc_atom_u_getBndl(t_osc_atom_u *a);
//long osc_atom_u_getBndlLen(t_osc_atom_u *a);
//char *osc_atom_u_getBndlPtr(t_osc_atom_u *a);
t_osc_timetag osc_atom_u_getTimetag(t_osc_atom_u *a);

int32_t osc_atom_u_getBlobLen(t_osc_atom_u *a);
char *osc_atom_u_getBlob(t_osc_atom_u *a);
void osc_atom_u_getBlobCopy(t_osc_atom_u *a, int32_t *len, char **blob);

/** \brief Set the contents of a #t_osc_atom_u to a 32-bit floating point value.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setFloat(t_osc_atom_u *a, float v);

/** \brief Set the contents of a #t_osc_atom_u to a 64-bit floating point value.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setDouble(t_osc_atom_u *a, double v);

/** \brief Set the contents of a #t_osc_atom_u to a 8-bit signed integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setInt8(t_osc_atom_u *a, int8_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 16-bit signed integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setInt16(t_osc_atom_u *a, int16_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 32-bit signed integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setInt32(t_osc_atom_u *a, int32_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 64-bit signed integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setInt64(t_osc_atom_u *a, int64_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 8-bit unsigned integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setUInt8(t_osc_atom_u *a, uint8_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 16-bit unsigned integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setUInt16(t_osc_atom_u *a, uint16_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 32-bit unsigned integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setUInt32(t_osc_atom_u *a, uint32_t v);

/** \brief Set the contents of a #t_osc_atom_u to a 64-bit unsigned integer.

\param a The #t_osc_atom_u
\param v The value
*/
void osc_atom_u_setUInt64(t_osc_atom_u *a, uint64_t v);

/** \brief Copy a string into a #t_osc_atom_u.

This function will make a copy of the string pointed to by v using osc_mem_alloc().
When this #t_osc_atom_u is freed using #osc_atom_u_free(), the string will be 
freed as well.  To avoid this behavior, use #osc_atom_u_setStringPtr().

\param a The #t_osc_atom_u
\param v The string to be copied
*/
void osc_atom_u_setString(t_osc_atom_u *a, const char *v); // make a copy

/** \brief Set the #t_osc_atom_u to point to a string.

This function will not make a copy of the string point to by v.  The 
caller is responsible for freeing the string.

\param a The #t_osc_atom_u
\param v The string to be referenced
*/
void osc_atom_u_setStringPtr(t_osc_atom_u *a, char *v); // no copy

/** \brief Set the #t_osc_atom_u to a boolean value.

Sets the #t_osc_atom_u to ''true'' (typetag 'T') if v is non-zero
and ''false'' (typetag 'F') if v is zero.  Calls #osc_atom_u_setTrue() or #osc_atom_u_setFalse().

\param a The #t_osc_atom_u
\param v The boolean value
*/
void osc_atom_u_setBool(t_osc_atom_u *a, int v);

/** \brief Set the #t_osc_atom_u to true

Note that the #t_osc_atom_u actually has no value, only the typetag is set to 'T'.

\param a The #t_osc_atom_u
*/
void osc_atom_u_setTrue(t_osc_atom_u *a);

/** \brief Set the #t_osc_atom_u to false

Note that the #t_osc_atom_u actually has no value, only the typetag is set to 'F'.

\param a The #t_osc_atom_u
*/
void osc_atom_u_setFalse(t_osc_atom_u *a);

/** \brief Set the #t_osc_atom_u to NULL

Note that the #t_osc_atom_u actually has no value, only the typetag is set to 'N'.

\param a The #t_osc_atom_u
*/
void osc_atom_u_setNull(t_osc_atom_u *a);

/** \brief Set the #t_osc_atom_s to point to a (serialized) #t_osc_bndl_s.

The #t_osc_bndl_s that bndl points to will be copied and freed when the 
#t_osc_atom_u is freed.

\param a The #t_osc_atom_s
\param len The length of the bundle in bytes
\param ptr A pointer to the serialized bundle
*/
void osc_atom_u_setBndl(t_osc_atom_u *a, long len, char *ptr);
void osc_atom_u_setBndl_s(t_osc_atom_u *a, long len, char *ptr);
void osc_atom_u_setBndl_u(t_osc_atom_u *a, t_osc_bndl_u *b);

/** \brief Set the #t_osc_atom_u to point to a(n unserialized) #t_osc_bndl_u.

The #t_osc_bndl_u that bndl points to will not be copied.  The caller is responsible 
for freeing it.

\param a The #t_osc_atom_u
\param bndl The #t_osc_bndl_u to be referenced
*/
void osc_atom_u_setSerializedBndl(t_osc_atom_u *a, t_osc_bndl_u *bndl);

/** \brief Set the #t_osc_atom_u to a timetag

\param a The #t_osc_atom_u
\param timetag The timetag
*/
void osc_atom_u_setTimetag(t_osc_atom_u *a, t_osc_timetag timetag);

void osc_atom_u_setBlob(t_osc_atom_u *a, char *blob);
void osc_atom_u_setBlobPtr(t_osc_atom_u *a, char *blob);

/** \brief Return the size of the data represented by the #t_osc_atom_u.

If the #t_osc_atom_u contains a string, this function will return the result of 
calling strlen() on it.  If it contains a bundle, it will return the length of the bundle
including the first 4 bytes which contain its size.

\param a A #t_osc_atom_u.

\return The size of the data contained in the #t_osc_atom_u
 */
size_t osc_atom_u_sizeof(t_osc_atom_u *a);

/** \brief Serialize a #t_osc_atom_u

This function will convert the contents of a #t_osc_atom_u to a byte array suitable
for inclusion in a serialized OSC message.  Numeric types will be properly encoded in
network byte order.

\param a The #t_osc_atom_u to be encoded
\param buflen A pointer to an int where the length of the serialized #t_osc_atom_u will be placed
\param buf A pointer to a buffer where the #t_osc_atom_u will be encoded.  If no buffer is provided,
one will be created and must be freed by the caller using #osc_mem_free().

\return An error or #OSC_ERR_NONE
 */
t_osc_err osc_atom_u_serialize(t_osc_atom_u *a, long *buflen, char **buf);

/** \brief Format a #t_osc_atom_u for display.

This function will create a formatted version of a #t_osc_atom_u suitable for display.  It 
will omit the leading size and the typetags.

\param a The #t_osc_atom_u to be formatted
\param buflen A pointer to an int where the length of the serialized #t_osc_atom_u will be placed
\param buf A pointer to a buffer where the #t_osc_atom_u will be encoded.  If no buffer is provided,
one will be created and must be freed by the caller using #osc_mem_free().

\return An error or #OSC_ERR_NONE
*/
t_osc_err osc_atom_u_format(t_osc_atom_u *a, long *buflen, char **buf) __attribute__((deprecated("use osc_atom_u_nformat() instead.")));

long osc_atom_u_nformat(char *buf, long n, t_osc_atom_u *a, int nindent);


#ifdef __cplusplus
}
#endif

#endif // __OSC_ATOM_U_H__
