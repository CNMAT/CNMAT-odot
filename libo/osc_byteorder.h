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

#ifndef __OSC_BYTEORDER_H__
#define __OSC_BYTEORDER_H__

#include <inttypes.h>

typedef struct uint128_ {
	uint64_t l1, l2;
} uint128_t;

#define OSC_BYTE_SWAP16(x) \
	((((x) & 0xff00) >> 8) | \
	 (((x) & 0x00ff) << 8))

#define OSC_BYTE_SWAP32(x) \
	((((x) & 0xff000000) >> 24) | \
	 (((x) & 0x00ff0000) >> 8) | \
	 (((x) & 0x0000ff00) << 8) | \
	 (((x) & 0x000000ff) << 24))

#define OSC_BYTE_SWAP64(x) \
	((((x) & 0xff00000000000000LL) >> 56) | \
	 (((x) & 0x00ff000000000000LL) >> 40) | \
	 (((x) & 0x0000ff0000000000LL) >> 24) | \
	 (((x) & 0x000000ff00000000LL) >> 8)  | \
	 (((x) & 0x00000000ff000000LL) << 8)  | \
	 (((x) & 0x0000000000ff0000LL) << 24) | \
	 (((x) & 0x000000000000ff00LL) << 40) | \
	 (((x) & 0x00000000000000ffLL) << 56))

#define OSC_BYTE_SWAP128(x) \
	(uint128_t){OSC_BYTE_SWAP64(((x).l2)), OSC_BYTE_SWAP64(((x).l1))}

#ifdef BYTE_ORDER
#define OSC_BYTE_ORDER BYTE_ORDER
#else
#ifdef __BYTE_ORDER
#define OSC_BYTE_ORDER __BYTE_ORDER
#endif
#endif

#ifdef LITTLE_ENDIAN
#define OSC_LITTLE_ENDIAN LITTLE_ENDIAN
#else
#ifdef __LITTLE_ENDIAN
#define OSC_LITTLE_ENDIAN __LITTLE_ENDIAN
#endif
#endif

#if OSC_BYTE_ORDER == OSC_LITTLE_ENDIAN
#define hton16(x) OSC_BYTE_SWAP16(x)
#define ntoh16(x) OSC_BYTE_SWAP16(x)
#define hton32(x) OSC_BYTE_SWAP32(x)
#define ntoh32(x) OSC_BYTE_SWAP32(x)
#define hton64(x) OSC_BYTE_SWAP64(x)
#define ntoh64(x) OSC_BYTE_SWAP64(x)
#define hton128(x) OSC_BYTE_SWAP128(x)
#define ntoh128(x) OSC_BYTE_SWAP128(x)

#define htonf32(x) OSC_BYTE_SWAP32(*((uint32_t *)&x))
#define ntohf32(x) OSC_BYTE_SWAP32(*((uint32_t *)&x))
#define htonf64(x) OSC_BYTE_SWAP64(*((uint64_t *)&x))
#define ntohf64(x) OSC_BYTE_SWAP64(*((uint64_t *)&x))

#else

#define hton16(x) (x)
#define ntoh16(x) (x)
#define hton32(x) (x)
#define ntoh32(x) (x)
#define hton64(x) (x)
#define ntoh64(x) (x)
#define hton128(x) (x)
#define ntoh128(x) (x)

#define htonf32(x) (x)
#define ntohf32(x) (x)
#define htonf64(x) (x)
#define ntohf64(x) (x)

#endif

#endif // __OSC_BYTEORDER_H__
