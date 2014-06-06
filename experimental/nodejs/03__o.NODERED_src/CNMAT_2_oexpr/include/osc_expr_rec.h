/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011-12, The Regents of
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

/** 	\file osc_expr_func.h
	\author John MacCallum

*/
#ifndef __OSC_EXPR_REC_H__
#define __OSC_EXPR_REC_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _osc_expr_rec t_osc_expr_rec;

#include "osc_expr.h"

t_osc_expr_rec *osc_expr_rec_alloc(void);
void osc_expr_rec_free(t_osc_expr_rec *r, void **extra);
void osc_expr_rec_copy(t_osc_expr_rec **dest, t_osc_expr_rec *src, void (*copy_extra)(void **dest, void *src));
void osc_expr_rec_setName(t_osc_expr_rec *r, char *name);
void osc_expr_rec_setSignature(t_osc_expr_rec *r, char *sig);
void osc_expr_rec_setRequiredArgs(t_osc_expr_rec *r,
	int num_required_args,
	char **required_args_names,
	int *required_args_types);
void osc_expr_rec_setOptionalArgs(t_osc_expr_rec *r,
	int num_optional_args,
	char **optional_args_names,
	int *optional_args_types);
void osc_expr_rec_setFunction(t_osc_expr_rec *r,
	t_osc_expr_funcptr function);
void osc_expr_rec_setExtra(t_osc_expr_rec *r, void *extra);

char *osc_expr_rec_getName(t_osc_expr_rec *r);
char *osc_expr_rec_getSignature(t_osc_expr_rec *r);
int osc_expr_rec_getNumRequiredArgs(t_osc_expr_rec *r);
int osc_expr_rec_getNumOptionalArgs(t_osc_expr_rec *r);
char **osc_expr_rec_getRequiredArgsNames(t_osc_expr_rec *r);
char **osc_expr_rec_getOptionalArgsNames(t_osc_expr_rec *r);
int *osc_expr_rec_getRequiredArgsTypes(t_osc_expr_rec *r);
int *osc_expr_rec_getOptionalArgsTypes(t_osc_expr_rec *r);
char **osc_expr_rec_getCategories(t_osc_expr_rec *r);
char *osc_expr_rec_getDocstring(t_osc_expr_rec *r);
t_osc_expr_funcptr osc_expr_rec_getFunction(t_osc_expr_rec *r);
void *osc_expr_rec_getExtra(t_osc_expr_rec *r);

#ifdef __cplusplus
}
#endif

#endif
