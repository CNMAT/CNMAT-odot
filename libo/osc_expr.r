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

/** 	\file osc_expr.r
	\author John MacCallum

*/
#ifndef __OSC_EXPR_R__
#define __OSC_EXPR_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_atom_u.h"

struct _osc_expr{
	struct _osc_expr_rec *rec;
	struct _osc_expr_arg *argv;
	int argc; 
	struct _osc_expr *next; 
};

struct _osc_expr_func{
	char *name;
	t_osc_atom_u *paramnames; //linked list
	struct _osc_expr *exprs;
};

struct _osc_expr_arg{
	union arg{
		t_osc_atom_u *atom;
		struct _osc_expr *expr;
		char *osc_address;
	} arg;
	int type;
	int slot_num; // if this arg is a variable, this will be its corresponding parameter slot.
	struct _osc_expr_arg *next;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_EXPR_R__