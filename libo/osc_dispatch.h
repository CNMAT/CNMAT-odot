/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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

/** 	\file osc_dispatch.h
	\author John MacCallum

*/

#ifndef __OSC_DISPATCH_H__
#define __OSC_DISPATCH_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_error.h"
#include "osc_array.h"
#include "osc_bundle_u.h"
#include "osc_atom_array_u.h"
#include "osc_vtable.h"

t_osc_err osc_dispatch(t_osc_vtable *vtab,
		       long bndllen,
		       char *bndl,
		       int strip_matched_portion_of_address);
t_osc_err osc_dispatch_selectors(t_osc_vtable *vtab,
				 int nselectors,
				 char **selectors,
				 long bndllen,
				 char *bndl,
				 int strip_matched_portion_of_address);
#ifdef __cplusplus
}
#endif

#endif // __OSC_DISPATCH_H__
