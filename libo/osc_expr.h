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

/** 	\file osc_expr.h
	\author John MacCallum

*/
#ifndef __OSC_EXPR_H__
#define __OSC_EXPR_H__

#ifdef __cplusplus
extern "C" {
#endif

#include <math.h>
#include "osc_message_s.h"
#include "osc_atom_u.h"
#include "osc_atom_array_u.h"


typedef struct _osc_expr t_osc_expr;
typedef struct _osc_expr_func t_osc_expr_func;
typedef struct _osc_expr_arg t_osc_expr_arg;

typedef int (*t_osc_funcptr)(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out);

typedef struct _osc_expr_rec t_osc_expr_rec;

int osc_expr_evalInLexEnv(t_osc_expr *f,
			  long nvars,
			  t_osc_atom_ar_u **vars,
			  long *len,
			  char **oscbndl,
			  t_osc_atom_ar_u **out);
int osc_expr_eval(t_osc_expr *function, long *len, char **oscbndl, t_osc_atom_ar_u **out);
int osc_expr_evalLexExprsInBndl(long *len, char **oscbndl, t_osc_atom_ar_u **out);
t_osc_expr *osc_expr_makeFuncObjFromOSCMsg_s(t_osc_msg_s *msg, int argoffset);
t_osc_expr_rec *osc_expr_lookupFunction(char *name);
t_osc_bndl_s *osc_expr_getCategories(void);
t_osc_err osc_expr_getFunctionsForCategory(char *cat, long *len, char **ptr);
t_osc_err osc_expr_getDocForFunction(char *function_name, t_osc_bndl_u **bndl);
t_osc_err osc_expr_formatFunctionDoc(t_osc_expr_rec *rec, t_osc_bndl_u **bndl);
void osc_expr_formatTypes(int types, char *str);
//t_osc_expr_const_rec *osc_expr_lookupConstant(char *name);

t_osc_expr *osc_expr_alloc(void);
t_osc_expr_arg *osc_expr_arg_alloc(void);
void osc_expr_free(t_osc_expr *e);
t_osc_expr *osc_expr_copy(t_osc_expr *e);
t_osc_err osc_expr_arg_copy(t_osc_expr_arg **dest, t_osc_expr_arg *src);
void osc_expr_arg_free(t_osc_expr_arg *a);

void osc_expr_appendExpr(t_osc_expr *e, t_osc_expr *expr_to_append);
void osc_expr_setRec(t_osc_expr *e, t_osc_expr_rec *rec);
t_osc_expr_rec *osc_expr_getRec(t_osc_expr *e);
void osc_expr_setNext(t_osc_expr *e, t_osc_expr *next);
t_osc_expr *osc_expr_next(t_osc_expr *e);
void osc_expr_setArg(t_osc_expr *e, t_osc_expr_arg *a);
void osc_expr_prependArg(t_osc_expr *e, t_osc_expr_arg *a);
void osc_expr_appendArg(t_osc_expr *e, t_osc_expr_arg *a);
t_osc_expr_arg *osc_expr_getArgs(t_osc_expr *e);
long osc_expr_getArgCount(t_osc_expr *e);

void osc_expr_arg_setOSCAtom(t_osc_expr_arg *a, t_osc_atom_u *atom);
void osc_expr_arg_setParameter(t_osc_expr_arg *a, t_osc_atom_u *atom);
void osc_expr_arg_setVariable(t_osc_expr_arg *a, t_osc_atom_u *atom);
void osc_expr_arg_setExpr(t_osc_expr_arg *a, t_osc_expr *e);
void osc_expr_arg_setOSCAddress(t_osc_expr_arg *a, char *osc_address);
void osc_expr_arg_setParameterSlot(t_osc_expr_arg *a, int slot);
int osc_expr_arg_getParameterSlot(t_osc_expr_arg *a);
void osc_expr_arg_setType(t_osc_expr_arg *a, long type);
int osc_expr_arg_getType(t_osc_expr_arg *a);
t_osc_atom_u *osc_expr_arg_getOSCAtom(t_osc_expr_arg *a);
t_osc_expr *osc_expr_arg_getExpr(t_osc_expr_arg *a);
char *osc_expr_arg_getOSCAddress(t_osc_expr_arg *a);
int osc_expr_arg_append(t_osc_expr_arg *a, t_osc_expr_arg *arg_to_append);
void osc_expr_arg_setNext(t_osc_expr_arg *a, t_osc_expr_arg *next);
t_osc_expr_arg *osc_expr_arg_next(t_osc_expr_arg *a);
void osc_expr_setAssignResultToAddress(t_osc_expr *e, int val);
int osc_expr_getAssignResultToAddress(t_osc_expr *e);

void osc_expr_format(t_osc_expr *fg, long *buflen, char **fmt);
void osc_expr_formatFunctionTable(long *buflen, char **buf);

#ifdef _cplusplus
}
#endif

#endif // __OSC_EXPR_H__
