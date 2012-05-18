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

#ifndef __OSC_ERROR_H__
#define __OSC_ERROR_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <stdint.h>
#include <libgen.h>

typedef uint64_t t_osc_err;

typedef int (*t_osc_error_handler)(const char * const errorstr);

#define OSC_ERROR_VERBOSE(errorcode, moreinfo_fmt, args...)				\
	osc_error_handler(basename(__FILE__), __func__, __LINE__, errorcode, moreinfo_fmt, ##args);
#define OSC_ERROR_SIMPLE(errorcode, moreinfo_fmt, args...)				\
	osc_error_handler(NULL, NULL, -1, errorcode, moreinfo_fmt, ##args);

#define OSC_ERROR_VERBOSE_REPORTING
#ifdef OSC_ERROR_VERBOSE_REPORTING
#define osc_error OSC_ERROR_VERBOSE
#else
#define osc_error OSC_ERROR_SIMPLE
#endif

#define MAX_ERR_STRING_LEN 512

#define OSC_ERR_NONE 0
#define OSC_ERR_BUNDLETOOSMALL 0x1
#define OSC_ERR_NOBUNDLEID 0x2
#define OSC_ERR_MSGTOOSMALL 0x4
#define OSC_ERR_MALFORMEDADDRESS 0x8
#define OSC_ERR_NOBUNDLE 0x10
#define OSC_ERR_OUTOFMEM 0x11
#define OSC_ERR_NULLPTR 0x12
#define OSC_ERR_BADTYPETAG 0x14
#define OSC_ERR_MALFORMEDMSG 0x18
#define OSC_ERR_INVAL 0x20
#define OSC_ERR_EXPPARSE 0x21

#define OSC_ERR_PARSER_FUNCTIONNOTFOUND 0x100
#define OSC_ERR_EXPR_FUNCTIONNOTFOUND 0x101
#define OSC_ERR_EXPR_ADDRESSUNBOUND 0x102

#define OSC_ERR_PARSER 0x1000

int osc_error_handler(const char * const filename,
		      const char * const functionname,
		      int linenum,
		      t_osc_err errorcode,
		      const char * const moreinfo_fmt,
		      ...);

void osc_error_setHandler(t_osc_error_handler eh);

/**
 * Get a description of an error code.
 *
 * @param err The error code
 * @return A string that describes the error.
 */
char *osc_error_string(t_osc_err err);

/**
 * Verify that a bundle is constructed properly.
 *
 * @param len The length of the bundle in bytes.
 * @param bundle The bundle to be verified.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_error_bundleSanityCheck(int len, char *bundle);

/**
 * Verify that a message is constructed properly.  The lengthe should be encoded in network
 * order in the first 4 bytes which is why it is not passed as a parameter to the function.
 *
 * @param msg The message to be verified.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_error_msgSanityCheck(char *msg);

/**
 * Verify that an address is a properly formated OSC address.
 *
 * @param address The message to be verified.
 * @return An error code or #OSC_ERR_NONE
 */
t_osc_err osc_error_validateAddress(char *address);

#ifdef __cplusplus
}
#endif

#endif // __OSC_ERROR_H__
