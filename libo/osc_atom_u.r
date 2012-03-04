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

/** 	\file osc_atom_u.r
	\author John MacCallum

*/

#ifndef __OSC_ATOM_U_R__
#define __OSC_ATOM_U_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_bundle_u.h"

struct _osc_atom_u{
	union _word{
		int8_t c;
		uint8_t C;
		int16_t u;
		uint16_t U;
		int32_t i;
		uint32_t I;
		int64_t h;
		uint64_t H;
		float f;
		double d;
		char *s;
		t_osc_bndl_s *bndl;
	} w;
	int typetag;
	int alloc;
	struct _osc_atom_u *next, *prev;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_ATOM_U_R__
