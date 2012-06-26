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

/** 	\file osc_expr_rec.r
	\author John MacCallum

*/
#ifndef __OSC_EXPR_REC_R__
#define __OSC_EXPR_REC_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_expr.h"


/** \struct t_osc_expr_rec
    A record that associates a function name (string) with a function pointer.
*/
struct _osc_expr_rec{
	char *name; /**< Name of the function as a C string. */
	char *signature;
	int num_required_args;
	int num_optional_args; /**< -1 for any number. */
	char **required_args_names;
	int *required_args_types;
	char **optional_args_names;
	int *optional_args_types;
	char **categories;
	char *docstring;
	t_osc_expr_funcptr func;//int (*func)(t_osc_expr*, int, t_osc_atom_ar_u**, t_osc_atom_ar_u**); /**< Function pointer */
	void *extra; /**< Extra field that can contain anything. */
};

#ifdef _cplusplus
}
#endif

#endif // __OSC_EXPR_REC_R__

