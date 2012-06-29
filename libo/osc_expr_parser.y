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

/** 	\file osc_expr_parser.y
	\author John MacCallum

*/
%code top{

// this is so that cygwin's math.h will include the bessel functions
#if defined(_WIN32 ) && defined(__STRICT_ANSI__)
#undef __STRICT_ANSI__
#endif

#include <math.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <stdarg.h>
#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif
#include "osc_expr.h"
#include "osc_expr_rec.h"
#include "osc_expr_rec.r"
#include "osc_expr_func.h"
#include "osc_error.h"
#include "osc_expr_parser.h"
#include "osc_expr_scanner.h"
#include "osc_util.h"
#include "osc_atom_u.r"

	//#define OSC_EXPR_PARSER_DEBUG
#ifdef OSC_EXPR_PARSER_DEBUG
#define PP(fmt, ...)printf(fmt, ##__VA_ARGS__)
#else
#define PP(fmt, ...)
#endif


}
%code requires{
#include "osc.h"
#include "osc_mem.h"
#include "osc_atom_u.h"
#include "osc_expr.h"


#define YY_DECL int osc_expr_scanner_lex \
		(YYSTYPE * yylval_param, YYLTYPE * yylloc_param , yyscan_t yyscanner, int alloc_atom, long *buflen, char **buf, int startcond, int *started)
	//t_osc_err osc_expr_parser_parseString(char *ptr, t_osc_expr **f);
t_osc_err osc_expr_parser_parseExpr(char *ptr, t_osc_expr **f);
t_osc_err osc_expr_parser_parseFunction(char *ptr, t_osc_expr_rec **f);

}

%{

// this is a dummy so that the compiler won't complain.  we pass the hard-coded
// value of 1 to osc_expr_scanner_lex() inside of osc_expr_parser_lex() down below.
int alloc_atom = 1;


int osc_expr_parser_lex(YYSTYPE *yylval_param, YYLTYPE *llocp, yyscan_t yyscanner, int alloc_atom, long *buflen, char **buf, int startcond, int *started){
	return osc_expr_scanner_lex(yylval_param, llocp, yyscanner, 1, buflen, buf, startcond, started);
}

static t_osc_atom_ar_u *osc_expr_parser_foldConstants_impl(t_osc_expr *expr, t_osc_expr_lexenv *lexenv)
{
	printf("%s: %s\n", __func__, osc_expr_rec_getName(osc_expr_getRec(expr)));
	t_osc_expr *e = expr;
	while(e){
		t_osc_expr_arg *a = osc_expr_getArgs(e);
		int eval = 1;
		while(a){
			int type = osc_expr_arg_getType(a);
			switch(type){
			case OSC_EXPR_ARG_TYPE_OSCADDRESS:
				// we can't eval this expression, but we want to continue to see if we can 
				// reduce any of the other args
				printf("address\n");
				eval = 0;
				break;
			case OSC_EXPR_ARG_TYPE_EXPR:
				printf("expr\n");
				{
					t_osc_expr *ee = osc_expr_arg_getExpr(a);
					t_osc_atom_ar_u *ar = osc_expr_parser_foldConstants_impl(ee,
												 lexenv);
					if(ar){
						osc_expr_free(ee);
						printf("reduced\n");
						if(osc_atom_array_u_getLen(ar) == 1){
							osc_expr_arg_setOSCAtom(a, osc_atom_array_u_get(ar, 0));
						}else{
							osc_expr_arg_setList(a, ar);
						}
					}
				}
			default:
				printf("default\n");
			}
			a = osc_expr_arg_next(a);
		}
		if(eval > 0){
			printf("eval = %d\n", eval);
			t_osc_atom_ar_u *res = NULL;
			int ret = osc_expr_eval(e, NULL, NULL, &res);
			if(ret){
				return NULL;
			}else{
				return res;
			}
		}else{
			return NULL;
		}
		e = osc_expr_next(e);
	}
}

static void osc_expr_parser_foldConstants(t_osc_expr *expr)
{
	osc_expr_parser_foldConstants_impl(expr, NULL);
}

t_osc_err osc_expr_parser_parseExpr(char *ptr, t_osc_expr **f)
{
	//printf("parsing %s\n", ptr);
	int len = strlen(ptr);
	int alloc = 0;

	// expressions really have to end with a semicolon, but it's nice to write single
	// expressions without one (or to leave it off the last one), so we add one to the
	// end of the string here just in case.
	if(ptr[len - 1] != ';'){
		char *tmp = osc_mem_alloc(len + 2);
		memcpy(tmp, ptr, len + 1);
		tmp[len] = ';';
		tmp[len + 1] = '\0';
		ptr = tmp;
		alloc = 1;
	}

	yyscan_t scanner;
	osc_expr_scanner_lex_init(&scanner);
	YY_BUFFER_STATE buf_state = osc_expr_scanner__scan_string(ptr, scanner);
	osc_expr_scanner_set_out(NULL, scanner);
	t_osc_expr *exprstack = NULL;
	t_osc_expr *tmp_exprstack = NULL;
	long buflen = 0;
	char *buf = NULL;
	int startcond = START_EXPNS;
	int started = 0;
	t_osc_err ret = osc_expr_parser_parse(&exprstack, &tmp_exprstack, NULL, scanner, ptr, &buflen, &buf, startcond, &started);
	osc_expr_scanner__delete_buffer(buf_state, scanner);
	osc_expr_scanner_lex_destroy(scanner);
	if(tmp_exprstack){
		if(exprstack){
			osc_expr_appendExpr(exprstack, tmp_exprstack);
		}else{
			exprstack = tmp_exprstack;
		}
	}
	//osc_expr_parser_foldConstants(exprstack);
	*f = exprstack;
	if(alloc){
		osc_mem_free(ptr);
	}
	return ret;
}

t_osc_err osc_expr_parser_parseFunction(char *ptr, t_osc_expr_rec **f)
{
	yyscan_t scanner;
	osc_expr_scanner_lex_init(&scanner);
	YY_BUFFER_STATE buf_state = osc_expr_scanner__scan_string(ptr, scanner);
	osc_expr_scanner_set_out(NULL, scanner);
	t_osc_expr *exprstack = NULL;
	t_osc_expr *tmp_exprstack = NULL;
	long buflen = 0;
	char *buf = NULL;
	int startcond = START_FUNCTION;
	int started = 0;
	t_osc_err ret = osc_expr_parser_parse(&exprstack, &tmp_exprstack, f, scanner, ptr, &buflen, &buf, startcond, &started);

	osc_expr_scanner__delete_buffer(buf_state, scanner);
	osc_expr_scanner_lex_destroy(scanner);
	return ret;
}

/*
t_osc_err osc_expr_parser_parseString(char *ptr, t_osc_expr **f)
{
	return osc_expr_parser_parseExpr(ptr, f);
}
*/

void osc_expr_error_formatLocation(YYLTYPE *llocp, char *input_string, char **buf)
{
	int len = strlen(input_string);
	if(llocp->first_column >= len || llocp->last_column >= len){
		*buf = osc_mem_alloc(len + 1);
		strncpy(*buf, input_string, len + 1);
		return;
	}
	char s1[len * 2];
	char s2[len * 2];
	char s3[len * 2];
	memcpy(s1, input_string, llocp->first_column);
	s1[llocp->first_column] = '\0';
	memcpy(s2, input_string + llocp->first_column, llocp->last_column - llocp->first_column);
	s2[llocp->last_column - llocp->first_column] = '\0';
	memcpy(s3, input_string + llocp->last_column, len - llocp->last_column);
	s3[len - llocp->last_column] = '\0';
	*buf = osc_mem_alloc(len * 3 + 24); // way too much
	sprintf(*buf, "%s\n-->                %s\n%s\n", s1, s2, s3);
}

void osc_expr_error(YYLTYPE *llocp,
		    char *input_string,
		    t_osc_err errorcode,
		    const char * const moreinfo_fmt,
		    ...)
{
	char *loc = NULL;
	osc_expr_error_formatLocation(llocp, input_string, &loc);
	int loclen = 0;
	if(loc){
		loclen = strlen(loc);
	}
	va_list ap;
	va_start(ap, moreinfo_fmt);
	char more[256];
	memset(more, '\0', sizeof(more));
	int more_len = 0;
	if(ap){
		more_len += vsnprintf(more, 256, moreinfo_fmt, ap);
		va_end(ap);
	}
	if(loclen || more_len){
		char buf[loclen + more_len];
		char *ptr = buf;
		if(loclen){
			ptr += sprintf(ptr, "%s\n", loc);
		}
		if(more_len){
			ptr += sprintf(ptr, "%s\n", more);
		}
		osc_error_handler(basename(__FILE__),
				  NULL,
				  -1,
				  errorcode,
				  buf);
	}else{
		osc_error_handler(basename(__FILE__),
				  NULL,
				  -1,
				  errorcode,
				  "");
	}
	if(loc){
		osc_mem_free(loc);
	}
}

int osc_expr_parser_checkArity(YYLTYPE *llocp, char *input_string, t_osc_expr_rec *r, t_osc_expr_arg *arglist)
{
	if(!r){
		return 1;
	}
	/*
	if(r->arity < 0){
		// variable number of arguments
		return 0;
	}
	*/
	int i = 0;
	t_osc_expr_arg *a = arglist;
	while(a){
		i++;
		a = osc_expr_arg_next(a);
	}
	if(i == r->num_required_args){
		return 0;
	}
	if(i < r->num_required_args){
		osc_expr_error(llocp,
			       input_string,
			       OSC_ERR_EXPPARSE,
			       "expected %d %s for function %s but found %d.",
			       r->num_required_args,
			       r->num_required_args == 1 ? "argument" : "arguments",
			       r->name,
			       i);
		return 1;
	}

	// i is more than the num of required args.
 	if(r->num_optional_args < 0){
		return 0;
	}
	if(r->num_optional_args == 0 || (i - r->num_required_args) > r->num_optional_args){
		osc_expr_error(llocp,
			       input_string,
			       OSC_ERR_EXPPARSE,
			       "expected %d %s for function %s but found %d.",
			       r->num_required_args + r->num_optional_args,
			       (r->num_required_args + r->num_optional_args) == 1 ? "argument" : "arguments",
			       r->name,
			       i);
		return 1;
	}
	return 0;
}

 void yyerror(YYLTYPE *llocp, t_osc_expr **exprstack, t_osc_expr **tmp_exprstack, t_osc_expr_rec **rec, void *scanner, char *input_string, long *buflen, char **buf, int startcond, int *started, char const *e)
{
	osc_expr_error(llocp, input_string, OSC_ERR_EXPPARSE, e);
}

void osc_expr_parser_reportUnknownFunctionError(YYLTYPE *llocp,
						 char *input_string,
						 char *function_name)
{
	osc_expr_error(llocp,
		       input_string,
		       OSC_ERR_EXPPARSE,
		       "unknown function \"%s\"",
		       function_name);
}

void osc_expr_parser_reportInvalidLvalError(YYLTYPE *llocp,
					    char *input_string,
					    char *lvalue)
{
	osc_expr_error(llocp,
		       input_string,
		       OSC_ERR_EXPPARSE,
		       "\"%s\" is not a valid target for assignment (invalid lvalue)\n",
		       lvalue);
}

t_osc_expr *osc_expr_parser_reduce_PrefixFunction(YYLTYPE *llocp,
						  char *input_string,
						  char *function_name,
						  t_osc_expr_arg *arglist);

t_osc_expr *osc_expr_parser_reduce_InfixOperator(YYLTYPE *llocp,
						char *input_string,
						char *function_name,
						t_osc_expr_arg *left,
						t_osc_expr_arg *right)
{
	t_osc_expr_rec *r = osc_expr_lookupFunction(function_name);
	if(!r){
		osc_expr_parser_reportUnknownFunctionError(llocp, input_string, function_name);
		return NULL;
	}
	t_osc_expr *e = osc_expr_alloc();
	osc_expr_setRec(e, r);
	osc_expr_prependArg(e, right);
	osc_expr_prependArg(e, left);
	return e;
}

t_osc_expr *osc_expr_parser_reduce_InfixAssignmentOperator(YYLTYPE *llocp,
							  char *input_string,
							  char *function_name,
							  t_osc_expr_arg *left,
							  t_osc_expr_arg *right)
{
	t_osc_expr *infix = osc_expr_parser_reduce_InfixOperator(llocp, input_string, function_name, left, right);
	t_osc_expr_arg *assign_target = NULL;
	osc_expr_arg_copy(&assign_target, left);
	t_osc_expr_arg *assign_arg = osc_expr_arg_alloc();
	osc_expr_arg_setExpr(assign_arg, infix);
	osc_expr_arg_setNext(assign_target, assign_arg);
	t_osc_expr *assign = osc_expr_parser_reduce_PrefixFunction(llocp, input_string, "assign", assign_target);
	return assign;
}

t_osc_expr *osc_expr_parser_reduce_PrefixFunction(YYLTYPE *llocp,
						 char *input_string,
						 char *function_name,
						 t_osc_expr_arg *arglist)
{
	t_osc_expr_rec *r = osc_expr_lookupFunction(function_name);
	if(!r){
		osc_expr_parser_reportUnknownFunctionError(llocp, input_string, function_name);
		return NULL;
	}
	if(osc_expr_parser_checkArity(llocp, input_string, r, arglist)){
		return NULL;
	}
	t_osc_expr *e = osc_expr_alloc();
	osc_expr_setRec(e, r);
	if(arglist){
		osc_expr_setArg(e, arglist);
	}
	return e;
}

t_osc_expr *osc_expr_parser_reduce_PrefixUnaryOperator(YYLTYPE *llocp,
						      char *input_string,
						      char *oscaddress,
						      char *op)
{
	char *ptr = oscaddress;
	if(*ptr != '/'){
		osc_expr_error(llocp,
			       input_string,
			       OSC_ERR_EXPPARSE,
			       "\"%s\" is not a valid target for assignment\nexpected \"%s\" in \"%s%s\" to be an OSC address\n",
			       oscaddress,
			       oscaddress,
			       op,
			       oscaddress);
		return NULL;
	}
	t_osc_expr_arg *arg = osc_expr_arg_alloc();
	osc_expr_arg_setOSCAddress(arg, ptr);
	t_osc_expr *pfu = osc_expr_parser_reduce_PrefixFunction(llocp, input_string, op, arg);

	t_osc_expr_arg *assign_target = NULL;
	osc_expr_arg_copy(&assign_target, arg);
	t_osc_expr_arg *assign_arg = osc_expr_arg_alloc();
	osc_expr_arg_setExpr(assign_arg, pfu);
	osc_expr_arg_setNext(assign_target, assign_arg);
	t_osc_expr *assign = osc_expr_parser_reduce_PrefixFunction(llocp, input_string, "assign", assign_target);
	return assign;
}

t_osc_expr *osc_expr_parser_reduce_PostfixUnaryOperator(YYLTYPE *llocp,
						       char *input_string,
						       char *oscaddress,
						       char *op)
{
	t_osc_expr *incdec = osc_expr_parser_reduce_PrefixUnaryOperator(llocp, input_string, oscaddress, op);
	if(!incdec){
		return NULL;
	}
	t_osc_expr_arg *arg1 = osc_expr_arg_alloc();
	osc_expr_arg_setExpr(arg1, incdec);
	char *oscaddress_copy = NULL;
	osc_util_strdup(&oscaddress_copy, oscaddress);
	t_osc_expr_arg *arg2 = osc_expr_arg_alloc();
	osc_expr_arg_setOSCAddress(arg2, oscaddress_copy);
	osc_expr_arg_setNext(arg2, arg1);
	t_osc_expr *prog1 = osc_expr_parser_reduce_PrefixFunction(llocp, input_string, "prog1", arg2);
	return prog1;
}

t_osc_expr *osc_expr_parser_reduce_NullCoalescingOperator(YYLTYPE *llocp,
							 char *input_string,
							 t_osc_atom_u *address_to_check,
							 t_osc_expr_arg *arg_if_null)
{
	char *address = NULL;
	osc_atom_u_getString(address_to_check, 0, &address);
	if(*address != '/'){
		osc_expr_error(llocp,
			       input_string,
			       OSC_ERR_EXPPARSE,
			       "\"%s\" is not a valid target for assignment\nexpected \"%s\" to be an OSC address\n",
			       address,
			       address);
		osc_mem_free(address);
		return NULL;
	}
	t_osc_expr *expr_def = osc_expr_alloc();
	osc_expr_setRec(expr_def, osc_expr_lookupFunction("bound"));
	t_osc_expr_arg *def_arg = osc_expr_arg_alloc();

	osc_expr_arg_setOSCAddress(def_arg, address);
	osc_expr_setArg(expr_def, def_arg);
	t_osc_expr_arg *arg1 = osc_expr_arg_alloc();
	osc_expr_arg_setExpr(arg1, expr_def);
	t_osc_expr_arg *arg2 = NULL;
	osc_expr_arg_copy(&arg2, def_arg);
	t_osc_expr_arg *arg3 = arg_if_null;
	osc_expr_arg_setNext(arg1, arg2);
	osc_expr_arg_setNext(arg2, arg3);
	return osc_expr_parser_reduce_PrefixFunction(llocp, input_string, "if", arg1);
}

%}

%define "api.pure"
%locations
%require "2.4.2"

// replace this bullshit with a struct...
%parse-param{t_osc_expr **exprstack}
%parse-param{t_osc_expr **tmp_exprstack}
%parse-param{t_osc_expr_rec **rec}
%parse-param{void *scanner}
%parse-param{char *input_string}
%parse-param{long *buflen}
%parse-param{char **buf}
%parse-param{int startcond}
%parse-param{int *started}

%lex-param{void *scanner}
%lex-param{int alloc_atom}
%lex-param{long *buflen}
%lex-param{char **buf}
%lex-param{int startcond}
%lex-param{int *started}

%union {
	t_osc_atom_u *atom;
	t_osc_expr *expr;
	t_osc_expr_rec *func;
	t_osc_expr_arg *arg;
}

%type <expr>expr 
%type <func>function
%type <arg>arg args 
%type <atom> OSC_EXPR_QUOTED_EXPR parameters parameter
%nonassoc <atom>OSC_EXPR_NUM OSC_EXPR_STRING OSC_EXPR_OSCADDRESS OSC_EXPR_LAMBDA

// low to high precedence
// adapted from http://en.wikipedia.org/wiki/Operators_in_C_and_C%2B%2B

// level 16
%right '=' OSC_EXPR_PLUSEQ OSC_EXPR_MINUSEQ OSC_EXPR_MULTEQ OSC_EXPR_DIVEQ OSC_EXPR_MODEQ OSC_EXPR_POWEQ

// level 15
%right OSC_EXPR_TERNARY_COND OSC_EXPR_DBLQMARK OSC_EXPR_DBLQMARKEQ '?' ':'

// level 14
%left OSC_EXPR_OR

// level 13
%left OSC_EXPR_AND

// level 9
%left OSC_EXPR_EQ OSC_EXPR_NEQ

// level 8
%left '<' '>' OSC_EXPR_LTE OSC_EXPR_GTE 

// level 6
%left '+' '-'

// level 5
%left '/' '%'
%left '*' 
%left '^' 

// level 3
%right OSC_EXPR_PREFIX_INC OSC_EXPR_PREFIX_DEC OSC_EXPR_UPLUS OSC_EXPR_UMINUS '!'

// level 2
%left OSC_EXPR_INC OSC_EXPR_DEC OSC_EXPR_FUNC_CALL OSC_EXPR_QUOTED_EXPR OPEN_DBL_BRKTS CLOSE_DBL_BRKTS

%token START_EXPNS START_FUNCTION
%start start

%%

start: START_EXPNS expns
       | START_FUNCTION function;

expns:  {
		if(*tmp_exprstack){
			if(*exprstack){
				osc_expr_appendExpr(*exprstack, *tmp_exprstack);
			}else{
				*exprstack = *tmp_exprstack;
			}
			*tmp_exprstack = NULL;
		}
 	}
	| expns ';' {;}// can this really ever happen?
	| expns expr ';' {
		if(*tmp_exprstack){
			osc_expr_appendExpr(*tmp_exprstack, $2);
		}else{
			*tmp_exprstack = $2;
		}
 	}
;

args:   arg 
	| args ',' arg {
		osc_expr_arg_append($$, $3);
 	}
;

arg:    OSC_EXPR_NUM {
		$$ = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAtom($$, $1);
 	}
	| OSC_EXPR_STRING {
		$$ = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAtom($$, $1);
 	}
	| OSC_EXPR_OSCADDRESS {
		$$ = osc_expr_arg_alloc();
		char *st = osc_atom_u_getStringPtr($1);
		int len = strlen(st) + 1;
		char *buf = osc_mem_alloc(len);
		memcpy(buf, st, len);
		osc_expr_arg_setOSCAddress($$, buf);
		osc_atom_u_free($1);
	}
	| expr {
		t_osc_expr *e = $1;
		t_osc_expr_arg *a = osc_expr_getArgs(e);
		$$ = osc_expr_arg_alloc();
		/*
		int eval = 1;
		while(a){
			int type = osc_expr_arg_getType(a);
			if(type == OSC_EXPR_ARG_TYPE_OSCADDRESS ||
			   type == OSC_EXPR_ARG_TYPE_EXPR ||
			   type == OSC_EXPR_ARG_TYPE_FUNCTION){
				eval = 0;
				break;
			}
			a = osc_expr_arg_next(a);
		}
		if(eval){
			t_osc_atom_ar_u *res = NULL;
			int ret = osc_expr_eval(e, NULL, NULL, &res);
			if(ret){
				osc_expr_arg_setExpr($$, e);
			}else{
				// assume that this is a special function like value() or bound() that
				// needs an OSC bundle to return a value
				osc_expr_arg_setList($$, res);
			}
		}else{
		*/
			osc_expr_arg_setExpr($$, e);
			//}
  	}
	| function {
		$$ = osc_expr_arg_alloc();
		osc_expr_arg_setFunction($$, $1);
	}
;

function: 
	OSC_EXPR_LAMBDA '(' parameters ')' '{' expns '}' {
		int n = 0;
		t_osc_atom_u *a = $3;
		while(a){
			n++;
			a = a->next;
		}
		char *params[n];
		a = $3;
		for(int i = n - 1; i >= 0; i--){
			char *st = osc_atom_u_getStringPtr(a);
			int len = strlen(st) + 1;
			params[i] = (char *)osc_mem_alloc(len);
			strncpy(params[i], st, len);
			t_osc_atom_u *killme = a;
			a = a->next;
			osc_atom_u_free(killme);
		}
		t_osc_expr_rec *func = osc_expr_rec_alloc();
		osc_expr_rec_setName(func, "lambda");
		osc_expr_rec_setRequiredArgs(func, n, params, NULL);
		for(int i = 0; i < n; i++){
			if(params[i]){
				osc_mem_free(params[i]);
			}
		}
		/*
		t_osc_expr *e = *tmp_exprstack;
		while(e){
			e = osc_expr_next(e);
		}
		*/
		osc_expr_rec_setFunction(func, osc_expr_lambda);
		osc_expr_rec_setExtra(func, *tmp_exprstack);
		$$ = func;
		if(startcond == START_EXPNS){
			*tmp_exprstack = NULL;
		}else if(startcond == START_FUNCTION){
			*rec = func;
		}
// go through and make sure the parameters are unique
/*
		t_osc_expr_rec *r = osc_expr_lookupFunction("lambda");
		t_osc_expr *e = osc_expr_alloc();
		osc_expr_setRec(e, r);
		t_osc_expr *expns_copy = NULL;
		t_osc_expr *ee = $<expr>6;
		while(ee){
			t_osc_expr *copy = osc_expr_copy(ee);
			if(expns_copy){
				osc_expr_appendExpr(expns_copy, copy);
			}else{
				expns_copy = copy;
			}
			ee = osc_expr_next(ee);
		}
		t_osc_expr_arg *expns = osc_expr_arg_alloc();
		osc_expr_arg_setExpr(expns, expns_copy);
		osc_expr_arg_append($3, expns);
		osc_expr_setArg(e, $3);
*/
//osc_expr_parser_bindParameters(&yylloc, input_string, e, $3, expns_copy);
//$$ = e;
	}
;

parameters: parameter
	| parameters ',' parameter {
		$3->next = $1;
		$$ = $3;
 	}
;

parameter: OSC_EXPR_STRING {
		if(osc_atom_u_getTypetag($1) == 's'){
			char *st = osc_atom_u_getStringPtr($1);
			if(st){
				if(*st == '/' && st[1] != '\0'){
					// this is an OSC address
					//error
				}else{
					$$ = $1;
				}
			}else{
				//error
			}
		}else{
			//error
		}
	}
;

expr:
	'(' expr ')' {
		$$ = $2;
  	}
// prefix function call
	| OSC_EXPR_STRING '(' args ')' %prec OSC_EXPR_FUNC_CALL {
		t_osc_expr *e = osc_expr_parser_reduce_PrefixFunction(&yylloc,
								     input_string,
								     osc_atom_u_getStringPtr($1),
								     $3);
		if(!e){
			osc_atom_u_free($1);
			return 1;
		}
		$$ = e;
		osc_atom_u_free($1);
  	}
	| OSC_EXPR_STRING '(' ')' %prec OSC_EXPR_FUNC_CALL {
		t_osc_expr *e = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, osc_atom_u_getStringPtr($1), NULL);
		if(!e){
			osc_atom_u_free($1);
			return 1;
		}
		$$ = e;
		osc_atom_u_free($1);
  	}
	| OSC_EXPR_QUOTED_EXPR {
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAtom(arg, $1);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "quote", arg);
	}
// Infix operators
	| arg '+' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "+", $1, $3);
 	}
	| arg '-' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "-", $1, $3);
 	}
	| arg '*' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "*", $1, $3);
 	}
	| arg '/' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "/", $1, $3);
 	}
	| arg '%' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "%", $1, $3);
 	}
	| arg '^' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "^", $1, $3);
 	}
	| arg OSC_EXPR_EQ arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "==", $1, $3);
 	}
	| arg OSC_EXPR_NEQ arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "!=", $1, $3);
 	}
	| arg '<' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "<", $1, $3);
 	}
	| arg OSC_EXPR_LTE arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "<=", $1, $3);
 	}
	| arg '>' arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, ">", $1, $3);
 	}
	| arg OSC_EXPR_GTE arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, ">=", $1, $3);
 	}
	| arg OSC_EXPR_AND arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "&&", $1, $3);
 	}
	| arg OSC_EXPR_OR arg {
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "||", $1, $3);
 	}
	| arg OSC_EXPR_PLUSEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "+", $1, $3);
 	}
	| arg OSC_EXPR_MINUSEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "-", $1, $3);
 	}
	| arg OSC_EXPR_MULTEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "*", $1, $3);
 	}
	| arg OSC_EXPR_DIVEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "/", $1, $3);
 	}
	| arg OSC_EXPR_MODEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "%", $1, $3);
 	}
	| arg OSC_EXPR_POWEQ arg {
		$$ = osc_expr_parser_reduce_InfixAssignmentOperator(&yylloc, input_string, "^", $1, $3);
 	}

// prefix not
	| '!' arg {
		$$ = osc_expr_alloc();
		osc_expr_setRec($$, osc_expr_lookupFunction("!"));
		osc_expr_setArg($$, $2);
	}
// prefix inc/dec
	| OSC_EXPR_INC OSC_EXPR_OSCADDRESS %prec OSC_EXPR_PREFIX_INC {
		char *copy = NULL;
		osc_atom_u_getString($2, 0, &copy);
		t_osc_expr *e = osc_expr_parser_reduce_PrefixUnaryOperator(&yylloc, input_string, copy, "plus1");
		if(!e){
			osc_mem_free(copy);
			osc_atom_u_free($2);
			return 1;
		}
		osc_atom_u_free($2);
		$$ = e;
	}
	| OSC_EXPR_DEC OSC_EXPR_OSCADDRESS %prec OSC_EXPR_PREFIX_DEC {
		char *copy = NULL;
		osc_atom_u_getString($2, 0, &copy);
		t_osc_expr *e = osc_expr_parser_reduce_PrefixUnaryOperator(&yylloc, input_string, copy, "minus1");
		if(!e){
			osc_mem_free(copy);
			osc_atom_u_free($2);
			return 1;
		}
		osc_atom_u_free($2);
		$$ = e;
	}
// postfix inc/dec
	| OSC_EXPR_OSCADDRESS OSC_EXPR_INC {
		char *copy = NULL;
		osc_atom_u_getString($1, 0, &copy);
		t_osc_expr *e = osc_expr_parser_reduce_PostfixUnaryOperator(&yylloc, input_string, copy, "plus1");
		if(!e){
			osc_mem_free(copy);
			osc_atom_u_free($1);
			return 1;
		}
		osc_atom_u_free($1);
		$$ = e;
	}
	| OSC_EXPR_OSCADDRESS OSC_EXPR_DEC {
		char *copy = NULL;
		osc_atom_u_getString($1, 0, &copy);
		t_osc_expr *e = osc_expr_parser_reduce_PostfixUnaryOperator(&yylloc, input_string, copy, "minus1");
		if(!e){
			osc_mem_free(copy);
			osc_atom_u_free($1);
			return 1;
		}
		osc_atom_u_free($1);
		$$ = e;
	}
// assignment
	| OSC_EXPR_OSCADDRESS '=' arg {
		// basic assignment 
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		if(*ptr != '/'){
			osc_expr_error(&yylloc, input_string, OSC_ERR_EXPPARSE, "osc_expr_parser: expected \"%s\" in \"%s = ... to be an OSC address\n", ptr, ptr);
			return 1;
		}
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAddress(arg, ptr);
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "assign", arg, $3);
		osc_atom_u_free($1);
 	}
	| OSC_EXPR_OSCADDRESS OPEN_DBL_BRKTS args CLOSE_DBL_BRKTS '=' arg{
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		if(*ptr != '/'){
			osc_expr_error(&yylloc, input_string, OSC_ERR_EXPPARSE, "osc_expr_parser: expected \"%s\" in \"%s = ... to be an OSC address\n", ptr, ptr);
			return 1;
		}
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		t_osc_expr_arg *indexes = $3;
		if(osc_expr_arg_next($3)){
			// /foo[[1, 2, 3]] = ...
			t_osc_expr *e = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "list", $3);
			indexes = NULL;
			indexes = osc_expr_arg_alloc();
			osc_expr_arg_setExpr(indexes, e);
		}
		osc_expr_arg_setOSCAddress(arg, ptr);
		osc_expr_arg_append(arg, indexes);
		osc_expr_arg_append(arg, $6);
		//$$ = osc_expr_parser_infix("=", arg, $3);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "assign_to_index", arg);
		osc_atom_u_free($1);
	}
	| OSC_EXPR_OSCADDRESS OPEN_DBL_BRKTS arg ':' arg CLOSE_DBL_BRKTS '=' arg{
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		if(*ptr != '/'){
			osc_expr_error(&yylloc, input_string, OSC_ERR_EXPPARSE, "osc_expr_parser: expected \"%s\" in \"%s = ... to be an OSC address\n", ptr, ptr);
			return 1;
		}
		t_osc_expr_arg *arg = osc_expr_arg_alloc();

		osc_expr_arg_append($3, $5);
		t_osc_expr *e = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "aseq", $3);
		t_osc_expr_arg *indexes = osc_expr_arg_alloc();
		osc_expr_arg_setExpr(indexes, e);

		osc_expr_arg_setOSCAddress(arg, ptr);
		osc_expr_arg_append(arg, indexes);
		osc_expr_arg_append(arg, $8);
		//$$ = osc_expr_parser_infix("=", arg, $3);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "assign_to_index", arg);
		osc_atom_u_free($1);
	}
	| OSC_EXPR_OSCADDRESS OPEN_DBL_BRKTS arg ':' arg ':' arg CLOSE_DBL_BRKTS '=' arg{
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		if(*ptr != '/'){
			osc_expr_error(&yylloc, input_string, OSC_ERR_EXPPARSE, "osc_expr_parser: expected \"%s\" in \"%s = ... to be an OSC address\n", ptr, ptr);
			return 1;
		}
		t_osc_expr_arg *arg = osc_expr_arg_alloc();

		osc_expr_arg_append($3, $7);
		osc_expr_arg_append($3, $5);
		t_osc_expr *e = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "aseq", $3);
		t_osc_expr_arg *indexes = osc_expr_arg_alloc();
		osc_expr_arg_setExpr(indexes, e);

		osc_expr_arg_setOSCAddress(arg, ptr);
		osc_expr_arg_append(arg, indexes);
		osc_expr_arg_append(arg, $10);
		//$$ = osc_expr_parser_infix("=", arg, $3);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "assign_to_index", arg);
		osc_atom_u_free($1);
	}
/*
	| OSC_EXPR_STRING '=' '[' args ']' {
		// assign a list of stuff
		char *ptr = osc_atom_u_getStringPtr($1);
		if(*ptr != '/'){
			yyerror(exprstack, scanner, "osc_expr_parser: expected \"%s\" in \"%s = ... to be an OSC address\n", ptr, ptr);
			return 1;
		}
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAddress(arg, ptr);
		$$ = osc_expr_parser_infix("=", arg, $4);
		osc_expr_setAssignResultToAddress($$, 1);
 	}
*/
// shorthand constructions
	| '[' arg ':' arg ']' %prec OSC_EXPR_FUNC_CALL {
		// matlab-style range
		osc_expr_arg_append($2, $4);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "aseq", $2);
 	}
	| '[' arg ':' arg ':' arg ']' %prec OSC_EXPR_FUNC_CALL {
		// matlab-style range
		osc_expr_arg_append($2, $6);
		osc_expr_arg_append($2, $4);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "aseq", $2);
 	}
	| arg '?' arg ':' arg %prec OSC_EXPR_TERNARY_COND {
		// ternary conditional
		osc_expr_arg_append($1, $3);
		osc_expr_arg_append($1, $5);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "if", $1);
  	}
	| OSC_EXPR_OSCADDRESS OSC_EXPR_DBLQMARK arg {
		// null coalescing operator from C#.  
		// /foo ?? 10 means /foo if /foo is in the bundle, otherwise 10
		$$ = osc_expr_parser_reduce_NullCoalescingOperator(&yylloc, input_string, $1, $3);
		osc_atom_u_free($1); // the above function will copy that
	}
	| OSC_EXPR_OSCADDRESS OSC_EXPR_DBLQMARKEQ arg {
		// null coalescing operator from C#.  
		// /foo ?? 10 means /foo if /foo is in the bundle, otherwise 10
		t_osc_expr *if_expr = osc_expr_parser_reduce_NullCoalescingOperator(&yylloc, input_string, $1, $3);
		if(!if_expr){
			return 1;
		}
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAddress(arg, ptr);
		t_osc_expr_arg *arg2 = osc_expr_arg_alloc();
		osc_expr_arg_setExpr(arg2, if_expr);
		$$ = osc_expr_parser_reduce_InfixOperator(&yylloc, input_string, "=", arg, arg2);
		osc_atom_u_free($1);
	}
	| '[' args ']' %prec OSC_EXPR_FUNC_CALL {
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "list", $2);
	}
// array lookup
	| arg OPEN_DBL_BRKTS args CLOSE_DBL_BRKTS {
		osc_expr_arg_setNext($1, $3);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "nth", $1);
	}
	| OSC_EXPR_OSCADDRESS OPEN_DBL_BRKTS args CLOSE_DBL_BRKTS {
		char *ptr = NULL;
		osc_atom_u_getString($1, 0, &ptr);
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setOSCAddress(arg, ptr);
		osc_expr_arg_setNext(arg, $3);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "nth", arg);
		osc_atom_u_free($1);
	}
// shorthand apply
	| '(' function ',' args ')' {
		t_osc_expr_arg *arg = osc_expr_arg_alloc();
		osc_expr_arg_setFunction(arg, $2);
		osc_expr_arg_append(arg, $4);
		$$ = osc_expr_parser_reduce_PrefixFunction(&yylloc, input_string, "apply", arg);
	}
// invalid constructs that result in errors
	| OSC_EXPR_STRING OSC_EXPR_INC '=' arg {
		char buf[strlen(osc_atom_u_getStringPtr($1)) + 3];
		sprintf(buf, "%s++", osc_atom_u_getStringPtr($1));
		osc_expr_parser_reportInvalidLvalError(&yylloc, input_string, buf);
		return 1;
	}
	| OSC_EXPR_STRING OSC_EXPR_DEC '=' arg {
		char buf[strlen(osc_atom_u_getStringPtr($1)) + 3];
		sprintf(buf, "%s--", osc_atom_u_getStringPtr($1));
		osc_expr_parser_reportInvalidLvalError(&yylloc, input_string, buf);
		return 1;
	}
	| OSC_EXPR_INC OSC_EXPR_STRING '=' arg %prec OSC_EXPR_PREFIX_INC {
		char buf[strlen(osc_atom_u_getStringPtr($2)) + 3];
		sprintf(buf, "++%s", osc_atom_u_getStringPtr($2));
		osc_expr_parser_reportInvalidLvalError(&yylloc, input_string, buf);
		return 1;
	}
	| OSC_EXPR_DEC OSC_EXPR_STRING '=' arg %prec OSC_EXPR_PREFIX_DEC {
		char buf[strlen(osc_atom_u_getStringPtr($2)) + 3];
		sprintf(buf, "--%s", osc_atom_u_getStringPtr($2));
		osc_expr_parser_reportInvalidLvalError(&yylloc, input_string, buf);
		return 1;
	}
;
