
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

/** 	\file osc_expr.c
	\author John MacCallum

*/

#include <stdio.h>
#include <string.h>
#include <float.h>
#include <inttypes.h>

// this is so that cygwin's math.h will include the bessel functions
// and we'll get strtok_r from string.h
#include <string.h>
#include <math.h>

#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_message_u.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_u.h"
#include "osc_atom_array_u.h"
#include "osc_hashtab.h"
#include "osc_util.h"
#include "osc_rset.h"
#include "osc_query.h"
#include "osc_typetag.h"

#include "osc_expr.h"
#include "osc_expr.r"
#include "osc_expr_rec.h"
#include "osc_expr_rec.r"
#include "osc_expr_func.h"
#include "osc_expr_parser.h"
#include "osc_expr_scanner.h"
#include "osc_expr_privatedecls.h"

//#define __OSC_PROFILE__
#include "osc_profile.h"

//i hope i don't have to add any more ;)
char *osc_expr_typestrings[] = {"", "number", "list", "", "string", "", "", "", "atom", "", "", "", "", "", "", "", "expression", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "OSC address", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "boolean", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "function"};

#define OSC_EXPR_MAX_TYPESTRING_LEN strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_NUMBER]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_LIST]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_STRING]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_ATOM]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_EXPR]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_OSCADDRESS]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_BOOLEAN]) + 1 + 12 // commas, spaces, and null byte

char *osc_expr_categories[] = {"/math/operator/arithmetic", "/math/operator/relational", "/math/operator/logical", "/math/operator/assignment", "/math/arithmetic", "/math/trigonometric", "/math/power", "/math/conversion", "/math/specialfunction", "/math/constant", "/vector", "/statistics", "/string/operator", "/predicate", "/conditional", "/core"};

// this gets created the first time it's needed and then it's never freed
t_osc_bndl_u *osc_expr_functionBundle = NULL;
t_osc_bndl_s *osc_expr_categoryBundle = NULL;

static double rdtsc_cps = 0;

int _osc_expr_sign(double f);

t_osc_hashtab *osc_expr_funcobj_ht;
void osc_expr_funcobj_dtor(char *key, void *val);

extern t_osc_err osc_expr_parser_parseExpr(char *ptr, t_osc_expr **f);
t_osc_err osc_expr_lex(char *str, t_osc_atom_array_u **ar);

int osc_expr_eval(t_osc_expr *f, long *len, char **oscbndl, t_osc_atom_ar_u **out)
{
	return osc_expr_evalInLexEnv(f, NULL, len, oscbndl, out);
}

int osc_expr_evalInLexEnv(t_osc_expr *f,
			  t_osc_expr_lexenv *lexenv,
			  long *len,
			  char **oscbndl,
			  t_osc_atom_ar_u **out)
{
	//////////////////////////////////////////////////
	// Special functions
	//////////////////////////////////////////////////
	if(f->rec->func == osc_expr_apply){
		return osc_expr_specFunc_apply(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_map){
		return osc_expr_specFunc_map(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_lreduce || f->rec->func == osc_expr_rreduce){
		return osc_expr_specFunc_reduce(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_assign){
		return osc_expr_specFunc_assign(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_assign_to_index){
		return osc_expr_specFunc_assigntoindex(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_if){
		return osc_expr_specFunc_if(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_emptybundle){
		return osc_expr_specFunc_emptybundle(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_bound){
		return osc_expr_specFunc_bound(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_exists){
		return osc_expr_specFunc_exists(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_getaddresses){
		return osc_expr_specFunc_getaddresses(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_getmsgcount){
		return osc_expr_specFunc_getmsgcount(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_value){
		return osc_expr_specFunc_value(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_quote){
		return osc_expr_specFunc_quote(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_eval_call){
		return osc_expr_specFunc_eval(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_tokenize){
		return osc_expr_specFunc_tokenize(f, lexenv, len, oscbndl, out);
	}else if(f->rec->func == osc_expr_compile){
		return osc_expr_specFunc_compile(f, lexenv, len, oscbndl, out);
	}else{
		//////////////////////////////////////////////////
		// Call normal function
		//////////////////////////////////////////////////
		int f_argc = osc_expr_getArgCount(f);
		t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
		t_osc_atom_ar_u *argv[f_argc];
		memset(argv, '\0', sizeof(argv));
		int ret = 0;
		int i = 0;
		while(f_argv){
			int ret = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, argv + i);
			if(ret){
				if(ret == OSC_ERR_EXPR_ADDRESSUNBOUND){
					osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), osc_expr_rec_getName(osc_expr_getRec(f)));
				}
				int j;
				for(j = 0; j < i; j++){
					if(argv[j]){
						osc_atom_array_u_free(argv[j]);
					}
				}
				return ret;
			}
			f_argv = f_argv->next;
			i++;
		}
	        ret = f->rec->func(f, f_argc, argv, out);
		for(i = 0; i < f_argc; i++){
			if(argv[i]){
				osc_atom_array_u_free(argv[i]);
			}
		}
		return ret;
	}
	return 1;
}

t_osc_err osc_expr_evalArgInLexEnv(t_osc_expr_arg *arg,
				   t_osc_expr_lexenv *lexenv,
				   long *len,
				   char **oscbndl,
				   t_osc_atom_ar_u **out)
{
	if(!arg){
		return 1;
	}
	switch(arg->type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		{
			if(lexenv && osc_atom_u_getTypetag(arg->arg.atom) == 's'){
				t_osc_atom_ar_u *tmp = NULL;
				if((tmp = osc_expr_lookupBindingInLexenv(lexenv, osc_atom_u_getStringPtr(arg->arg.atom)))){
					*out = osc_atom_array_u_copy(tmp);
					return 0;					
				}
			}
			*out = osc_atom_array_u_alloc(1);
				
			t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
			osc_atom_u_copy(&a, arg->arg.atom);
		}
		return 0;
	case OSC_EXPR_ARG_TYPE_LIST:
		{
			*out = osc_atom_array_u_copy(arg->arg.list);
			return 0;
		}
	case OSC_EXPR_ARG_TYPE_EXPR:
		{
			t_osc_err e = osc_expr_evalInLexEnv(arg->arg.expr, lexenv, len, oscbndl, out);
			return e;
		}
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		{
			*out = NULL;
			if(!oscbndl || !len){
				return OSC_ERR_EXPR_ADDRESSUNBOUND;
			}
			if(!(*oscbndl) || *len <= 16){
				return OSC_ERR_EXPR_ADDRESSUNBOUND;
			}
		        t_osc_rset *rset = NULL;
			osc_query_select(1, &(arg->arg.osc_address), *len, *oscbndl, 0, &rset);
			t_osc_rset_result *res = osc_rset_select(rset, arg->arg.osc_address);
			if(rset){
				t_osc_bndl_s *complete_matches = osc_rset_result_getCompleteMatches(res);
				if(complete_matches){
					t_osc_msg_s *m = osc_bundle_s_getFirstMsg(complete_matches);
					if(m){
						long arg_count = osc_message_s_getArgCount(m);
						*out = osc_atom_array_u_alloc(arg_count);
						
						t_osc_atom_ar_u *atom_ar = *out;
						osc_atom_array_u_clear(atom_ar);
						int i = 0;
						t_osc_msg_it_s *it = osc_msg_it_s_get(m);
						while(osc_msg_it_s_hasNext(it)){
							t_osc_atom_s *as = osc_msg_it_s_next(it);
							t_osc_atom_u *au = osc_atom_array_u_get(atom_ar, i);
							osc_atom_s_deserialize(as, &au);
							i++;
						}
						osc_msg_it_s_destroy(it);
						osc_rset_free(rset);
						osc_message_s_free(m);
						return 0;
					}
				}
				osc_rset_free(rset);
			}
			/*
			osc_error_handler(__FILE__,
					  __func__,
					  __LINE__,
					  OSC_ERR_EXPR_ADDRESSUNBOUND,
					  "address %s is unbound\n",
					  arg->arg.osc_address);
			*/
			return OSC_ERR_EXPR_ADDRESSUNBOUND;
		}
	}
	return OSC_ERR_INVAL; // this really shouldn't happen unless there's a bug somewhere
}

//////////////////////////////////////////////////
// Special functions
//////////////////////////////////////////////////

static int osc_expr_specFunc_apply(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	if((osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_ATOM) &&
	   (osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_FUNCTION) &&
	   (osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_EXPR) &&
	   (osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_OSCADDRESS)){
		osc_error_handler(basename(__FILE__),
				  __func__,
				  __LINE__,
				  OSC_ERR_EXPPARSE,
				  "the first argument to apply() should be a function, the name of a function, or an OSC address");
		return 1;
	}
	if(osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_FUNCTION){
		t_osc_expr_rec *r = osc_expr_arg_getFunction(f_argv);
		if(!r){
			osc_error_handler(basename(__FILE__),
					  __func__,
					  __LINE__,
					  OSC_ERR_EXPPARSE,
					  "Error parsing the first argument to apply()");
			return 1;
		}
		// arity check
		t_osc_expr_lexenv *lexenv_copy = NULL;
		if(lexenv){
			osc_expr_copyLexenv(&lexenv_copy, lexenv);
		}else{
			lexenv_copy = osc_expr_makeLexenv();
		}
		int nparams = osc_expr_rec_getNumRequiredArgs(r);
		char **params = osc_expr_rec_getRequiredArgsNames(r);
		t_osc_expr_arg *arg = f_argv->next;
		for(int i = 0; (i < nparams) && arg; i++){
			t_osc_atom_ar_u *atoms = NULL;
			t_osc_err e = osc_expr_evalArgInLexEnv(arg, lexenv_copy, len, oscbndl, &atoms);
			if(e == OSC_ERR_EXPR_ADDRESSUNBOUND){
				osc_expr_err_unbound(osc_expr_arg_getOSCAddress(arg), "apply");
				return e;
			}
			osc_expr_bindVarInLexenv(lexenv_copy, params[i], atoms);
			arg = arg->next;
		}
		t_osc_expr *e = (t_osc_expr *)osc_expr_rec_getExtra(r);
		while(e){
			int ret =  osc_expr_evalInLexEnv(e, lexenv_copy, len, oscbndl, out);
			if(ret){
				osc_expr_destroyLexenv(lexenv_copy);
				return ret;
			}
			e = osc_expr_next(e);
		}
		osc_expr_destroyLexenv(lexenv_copy);
	}else if(osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_ATOM ||
		 osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_EXPR ||
		 osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_OSCADDRESS){
		t_osc_expr_rec *r = NULL;
		if(osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_ATOM){
			if(osc_atom_u_getTypetag(osc_expr_arg_getOSCAtom(f_argv)) != 's'){
				//error
				return 1;
			}
			r = osc_expr_lookupFunction(osc_atom_u_getStringPtr(osc_expr_arg_getOSCAtom(f_argv)));
		}else{
			t_osc_atom_ar_u *ar = NULL;
			t_osc_err e = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &ar);
			if(e == OSC_ERR_EXPR_ADDRESSUNBOUND){
				osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "apply");
				return e;
			}
			if(!ar){
				//error
				return 1;
			}
			if(osc_atom_array_u_getLen(ar) != 1){
				//error
				return 1;
			}
			if(osc_atom_u_getTypetag(osc_atom_array_u_get(ar, 0)) != 's'){
				//error
				return 1;
			}
			char *stp = osc_atom_u_getStringPtr(osc_atom_array_u_get(ar, 0));
			r = osc_expr_lookupFunction(stp);
			if(!r){
				// lookup didn't return a valid function, so let's see
				// if we can parse this string.
				t_osc_err err = osc_expr_parser_parseFunction(stp, &r);
				if(!err && r){
					t_osc_expr *e = NULL;
					osc_expr_copy(&e, f);
					t_osc_expr_arg *arg1 = osc_expr_getArgs(e);
					t_osc_expr_arg *arg2 = osc_expr_arg_next(arg1);
					switch(osc_expr_arg_getType(arg1)){
					case OSC_EXPR_ARG_TYPE_ATOM:
						osc_atom_u_free(osc_expr_arg_getOSCAtom(arg1));
						break;
					case OSC_EXPR_ARG_TYPE_EXPR:
						osc_expr_free(osc_expr_arg_getExpr(arg1));
						break;
					case OSC_EXPR_ARG_TYPE_OSCADDRESS:
						osc_mem_free(osc_expr_arg_getOSCAddress(arg1));
						break;
					}
					osc_expr_arg_setFunction(arg1, r);
					osc_expr_arg_setNext(arg1, arg2);
					e->argv = arg1;
					osc_expr_arg_setFunction(osc_expr_getArgs(e), r);

					int ret = osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, out);
					osc_expr_free(e);
					osc_atom_array_u_free(ar);
					return ret;
				}
			}
			osc_atom_array_u_free(ar);
		}
		if(!r){
			osc_error_handler(basename(__FILE__),
					  __func__,
					  __LINE__,
					  OSC_ERR_EXPPARSE,
					  "unrecognized function %s",
					  osc_atom_u_getStringPtr(osc_expr_arg_getOSCAtom(f_argv)));
			return 1;
		}
		t_osc_expr *e = osc_expr_alloc();
		osc_expr_setRec(e, r);
		osc_expr_setArg(e, f_argv->next);
		int ret = osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, out);
		e->argc = 0;
		e->argv = NULL;
		osc_expr_free(e);
		return ret;
	}else{
		//error
		return 1;
	}
	return 0;
}

static int osc_expr_specFunc_map(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	int f_argc = osc_expr_getArgCount(f);
	if(f_argc < 2){
		// error
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_expr_rec *r = osc_expr_lookupFunction("apply");
	t_osc_expr *e = osc_expr_alloc();
	osc_expr_setRec(e, r);

	int ac = f_argc - 1;
	t_osc_atom_ar_u *args[ac];
	memset(args, '\0', ac * sizeof(t_osc_atom_ar_u *));
	uint32_t min = ~0;
	int i = 0;
	t_osc_expr_arg *a = f_argv->next;
	while(a){
		t_osc_err err = osc_expr_evalArgInLexEnv(a, lexenv, len, oscbndl, args + i);
		if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
			osc_expr_err_unbound(osc_expr_arg_getOSCAddress(a), "map");
			// assume whoever generated this will post an error
			for(int j = 0; j < i; j++){
				if(args[j]){
					osc_atom_array_u_free(args[j]);
				}
			}
			e->argv = NULL;
			e->argc = 0;
			osc_expr_free(e);
			return err;
		}
		int count = osc_atom_array_u_getLen(args[i]);
		if(count < min){
			min = count;
		}
		i++;
		a = a->next;
	}
	// arity check needs to go here
	t_osc_expr_arg *func_args[ac + 1]; 
	func_args[0] = NULL;
	osc_expr_arg_copy(func_args, f_argv);
	osc_expr_appendArg(e, *func_args);
	for(i = 1; i < ac + 1; i++){
		func_args[i] = osc_expr_arg_alloc();
		osc_expr_appendArg(e, func_args[i]);
	}

	t_osc_atom_ar_u *output[min];
	memset(output, '\0', min * sizeof(t_osc_atom_ar_u *));
	int outcount = 0;
	for(i = 0; i < min; i++){
		int j;
		for(j = 0; j < ac; j++){
			osc_expr_arg_setOSCAtom(func_args[j + 1], osc_atom_array_u_get(args[j], i));
		}
		osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, output + i);
		outcount += osc_atom_array_u_getLen(output[i]);
	}
	*out = osc_atom_array_u_alloc(outcount);
	int pos = 0;
	for(i = 0; i < min; i++){
		osc_atom_array_u_copyInto(out, output[i], pos);
		pos += osc_atom_array_u_getLen(output[i]);
	}
	e->argv = NULL;
	e->argc = 0;
	osc_expr_free(e);
	e = NULL;
	if(func_args[0]){
		osc_expr_arg_free(func_args[0]);
	}
	for(i = 0; i < ac; i++){
		if(args[i]){
			osc_atom_array_u_free(args[i]);
		}
		if(func_args[i + 1]){
			// it looks like a bug to free a t_osc_expr_arg with osc_mem_free, 
			// but we don't want to free the underlying t_osc_atom_u because 
			// it will be freed when args is freed.
			osc_mem_free(func_args[i + 1]);
		}
	}
	for(i = 0; i < min; i++){
		if(output[i]){
			osc_atom_array_u_free(output[i]);
		}
	}
	return 0;
}

static int osc_expr_specFunc_reduce(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	int f_argc = osc_expr_getArgCount(f);
	if(f_argc < 2){
		// error
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_expr_rec *r = osc_expr_lookupFunction("apply");
	t_osc_expr *e = osc_expr_alloc();
	osc_expr_setRec(e, r);

	int ac = 3;
	t_osc_expr_arg *func_args[ac];  // function, arg1, arg2
	func_args[0] = NULL;
	osc_expr_arg_copy(func_args, f_argv);
	osc_expr_appendArg(e, *func_args);
	for(int i = 1; i < ac; i++){
		func_args[i] = osc_expr_arg_alloc(); 
		osc_expr_appendArg(e, func_args[i]);
	}

	t_osc_atom_ar_u *args = NULL;
	t_osc_expr_arg *a = f_argv->next;
	int err = osc_expr_evalArgInLexEnv(a, lexenv, len, oscbndl, &args);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(a),
				     f->rec->func == osc_expr_lreduce ? "lreduce" : "rreduce");
		if(args){
			osc_atom_array_u_free(args);
		}
		for(int i = 0; i < ac; i++){
			if(func_args[i]){
				osc_expr_arg_free(func_args[i]);
			}
		}
		e->argv = NULL;
		e->argc = 0;
		osc_expr_free(e);
		return err;
	}
	int count = osc_atom_array_u_getLen(args);

	int arg0 = 1;
	int arg1 = 2;
	int delta = 1;
	int start = 0;
	if(f->rec->func == osc_expr_rreduce){
		arg0 = 2;
		arg1 = 1;
		delta = -1;
		start = count - 1;
	}

	if(count == 0){
		osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, out);
		if(args){
			osc_atom_array_u_free(args);
		}
	}else if(count == 1 && f_argc == 2){
		*out = args;
	}else{
		t_osc_atom_ar_u *output = NULL;
		if(f_argc == 3){
			t_osc_atom_ar_u *sc = NULL;
			t_osc_err err = osc_expr_evalArgInLexEnv(f_argv->next->next, lexenv, len, oscbndl, &sc);
			if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
				osc_expr_err_unbound(osc_expr_arg_getOSCAddress(a),
						     f->rec->func == osc_expr_lreduce ? "lreduce" : "rreduce");
				if(args){
					osc_atom_array_u_free(args);
				}
				for(int i = 0; i < ac; i++){
					if(func_args[i]){
						osc_expr_arg_free(func_args[i]);
					}
				}
				e->argv = NULL;
				e->argc = 0;
				osc_expr_free(e);
				return err;
			}
			if(sc){
				t_osc_atom_u *acopy = NULL;
				osc_atom_u_copy(&acopy, osc_atom_array_u_get(sc, 0));
				osc_expr_arg_setOSCAtom(func_args[arg0], acopy);
				if(sc){
					osc_atom_array_u_free(sc);
				}
			}else{
				//error
				return 1;
			}
			osc_expr_arg_setOSCAtom(func_args[arg1], osc_atom_array_u_get(args, start));
			start += delta;
		}else{
			osc_expr_arg_setOSCAtom(func_args[arg0], osc_atom_array_u_get(args, start));
			start += delta;
			osc_expr_arg_setOSCAtom(func_args[arg1], osc_atom_array_u_get(args, start));
			start += delta;
		}
		osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, &output);

		for(int i = start; delta > 0 ? i < count : i >= 0; i += delta){
			t_osc_atom_u *copy1 = NULL;
			t_osc_atom_u *copy2 = NULL;
			osc_atom_u_copy(&copy1, osc_atom_array_u_get(output, 0));
			osc_atom_u_copy(&copy2, osc_atom_array_u_get(args, i));
			osc_expr_arg_setOSCAtom(func_args[arg0], copy1);
			osc_expr_arg_setOSCAtom(func_args[arg1], copy2);
			osc_atom_array_u_free(output);
			output = NULL;
			osc_expr_evalInLexEnv(e, lexenv, len, oscbndl, &output);
			osc_expr_arg_clear(func_args[arg0]);
			osc_expr_arg_clear(func_args[arg1]);
		}
		*out = output;
		if(args){
			osc_atom_array_u_free(args);
		}
	}

	e->argv = NULL;
	e->argc = 0;
	osc_expr_free(e);

	if(func_args[0]){
		osc_expr_arg_free(func_args[0]);
	}
	for(int i = 1; i < ac; i++){
		if(func_args[i]){
			// it looks like a bug to free a t_osc_expr_arg with osc_mem_free, 
			// but we don't want to free the underlying t_osc_atom_u because 
			// it will be freed when args is freed.
			osc_mem_free(func_args[i]);
		}
	}
	return 0;
}

static int osc_expr_specFunc_assign(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_msg_ar_s *msg_ar = NULL;
	t_osc_atom_ar_u *address_ar = NULL;
	char *address = NULL;
	if(osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_OSCADDRESS){
		osc_util_strdup(&address, f_argv->arg.osc_address);
	}else{
		t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &address_ar);
		if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
			osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "=");
			return err;
		}
		if(!address_ar){
			return 1;
		}
		t_osc_atom_u *address_atom = osc_atom_array_u_get(address_ar, 0);
		if(osc_atom_u_getTypetag(address_atom) != 's'){
			osc_atom_array_u_free(address_ar);
			return 1;
		}
		osc_atom_u_getString(address_atom, 0, &address);
		osc_atom_array_u_free(address_ar);
	}
	t_osc_err err;
	if((err = osc_error_validateAddress(address))){
		return err;
	}
	osc_bundle_s_lookupAddress(*len, *oscbndl, address, &msg_ar, 1);

	t_osc_msg_u *mm = osc_message_u_alloc();
	osc_message_u_setAddress(mm, address);

	t_osc_err ret = osc_expr_evalArgInLexEnv(f_argv->next, lexenv, len, oscbndl, out);
	if(ret){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "=");
		if(address){
			osc_mem_free(address);
		}
		if(msg_ar){
			osc_message_array_s_free(msg_ar);
		}
		osc_message_u_free(mm);
		return ret;
	}
	int i;
	for(i = 0; i < osc_atom_array_u_getLen(*out); i++){
		t_osc_atom_u *cpy = NULL;
		osc_atom_u_copy(&cpy, osc_atom_array_u_get(*out, i));
		osc_message_u_appendAtom(mm, cpy);
	}
	char *msg_s = NULL;
	long len_s = 0;
	osc_message_u_serialize(mm, &len_s, &msg_s);
	char osc_msg_s[osc_message_s_getStructSize()];
	osc_message_s_initMsg((t_osc_msg_s *)osc_msg_s);
	osc_message_s_wrap((t_osc_msg_s *)osc_msg_s, msg_s);
	if(msg_ar){
		osc_bundle_s_replaceMessage(len, len, oscbndl, osc_message_array_s_get(msg_ar, 0), (t_osc_msg_s *)osc_msg_s);
		osc_message_array_s_free(msg_ar);
	}else{
		osc_bundle_s_appendMessage(len, oscbndl, (t_osc_msg_s *)osc_msg_s);
	}
	if(address){
		osc_mem_free(address);
	}
	osc_message_u_free(mm);
	osc_mem_free(msg_s);
	return 0;
}

static int osc_expr_specFunc_assigntoindex(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	int f_argc = osc_expr_getArgCount(f);
	if(f_argc != 3){
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_msg_ar_s *msg_ar = NULL;
	osc_bundle_s_lookupAddress(*len, *oscbndl, f_argv->arg.osc_address, &msg_ar, 1);
	if(!msg_ar){
		// error
		return 1;
	}

	t_osc_msg_u *mm = osc_message_u_alloc();
	osc_message_u_setAddress(mm, f_argv->arg.osc_address);

	// get data at target address
	t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, out);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "=");
		return err;
	}
	int outlen = osc_atom_array_u_getLen(*out);

	// get index(es)
	t_osc_atom_ar_u *indexes = NULL;
	err = osc_expr_evalArgInLexEnv(f_argv->next, lexenv, len, oscbndl, &indexes);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "=");
		return err;
	}
	int nindexes = osc_atom_array_u_getLen(indexes);

	// get data
	t_osc_atom_ar_u *data = NULL;
	err = osc_expr_evalArgInLexEnv(f_argv->next->next, lexenv, len, oscbndl, &data);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "=");
		osc_atom_array_u_free(indexes);
		return err;
	}
	int ndata = osc_atom_array_u_getLen(data);

	if(nindexes == 0 || ndata == 0){
		return 1;
	}else if(nindexes == 1 && ndata > 1){
		int idx = osc_atom_u_getInt(osc_atom_array_u_get(indexes, 0));
		if(idx >= outlen || idx < 0){
			// error!
			return 1;
		}
		t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
		osc_atom_u_copy(&dest, osc_atom_array_u_get(data, 0));
	}else if(nindexes > 1 && ndata == 1){
		int i, idx;
		t_osc_atom_u *a = osc_atom_array_u_get(data, 0);
		for(i = 0; i < nindexes; i++){
			idx = osc_atom_u_getInt(osc_atom_array_u_get(indexes, i));
			if(idx >= outlen || idx < 0){
				// error!
				continue;
			}
			t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
			osc_atom_u_copy(&dest, a);
		}
	}else{
		int i, idx;
		int n = osc_atom_array_u_getLen(indexes);
		if(osc_atom_array_u_getLen(data) < n){
			n = osc_atom_array_u_getLen(data);
		}
		for(i = 0; i < n; i++){
			idx = osc_atom_u_getInt(osc_atom_array_u_get(indexes, i));
			if(idx >= outlen || idx < 0){
				// error!
				continue;
			}
			t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
			osc_atom_u_copy(&dest, osc_atom_array_u_get(data, i));
		}
	}

	int i;
	for(i = 0; i < osc_atom_array_u_getLen(*out); i++){
		t_osc_atom_u *cpy = NULL;
		osc_atom_u_copy(&cpy, osc_atom_array_u_get(*out, i));
		osc_message_u_appendAtom(mm, cpy);
	}
	char *msg_s = NULL;
	long len_s = 0;
	osc_message_u_serialize(mm, &len_s, &msg_s);
	char osc_msg_s[osc_message_s_getStructSize()];
	osc_message_s_initMsg((t_osc_msg_s *)osc_msg_s);
	osc_message_s_wrap((t_osc_msg_s *)osc_msg_s, msg_s);
	if(msg_ar){
		osc_bundle_s_replaceMessage(len, len, oscbndl, osc_message_array_s_get(msg_ar, 0), (t_osc_msg_s *)osc_msg_s);
		osc_message_array_s_free(msg_ar);
	}else{
		osc_bundle_s_appendMessage(len, oscbndl, (t_osc_msg_s *)osc_msg_s);
	}
	osc_message_u_free(mm);
	osc_mem_free(msg_s);
	return 0;
}

static int osc_expr_specFunc_if(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	int f_argc = osc_expr_getArgCount(f);
	if(f_argc < 2){
		printf("osc_expr: osc_expr_if expected at least 2 arguments but only got %d\n", f_argc);
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_atom_ar_u *argv = NULL;
	t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &argv);
	if(err){
		// the first argument shouldn't be an osc address, so we don't have to
		// post an addressunbound error.
		//if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		//osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "if");
		//}
		if(argv){
			osc_atom_array_u_free(argv);
		}
		return err;
	}

	int j;
	for(j = 0; j < osc_atom_array_u_getLen(argv); j++){
		if(osc_atom_u_getInt32(osc_atom_array_u_get(argv, j)) && (f_argc > 1)){
			err = osc_expr_evalArgInLexEnv(f_argv->next, lexenv, len, oscbndl, out);
			if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
				osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv->next), "if");
				return err;
			}
		}else if(f_argc > 2){
			err = osc_expr_evalArgInLexEnv(f_argv->next->next, lexenv, len, oscbndl, out);
			if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
				osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv->next->next), "if");
				return err;
			}
		}
	}
	osc_atom_array_u_free(argv);
	return 0;
}

static int osc_expr_specFunc_emptybundle(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	*out = osc_atom_array_u_alloc(1);
			
	if(*len == OSC_HEADER_SIZE){
		osc_atom_u_setTrue(osc_atom_array_u_get(*out, 0));
	}else{
		osc_atom_u_setFalse(osc_atom_array_u_get(*out, 0));
	}
	return 0;
}

static int osc_expr_specFunc_existsorbound(t_osc_expr *f,
					   t_osc_expr_lexenv *lexenv,
					   long *len,
					   char **oscbndl,
					   t_osc_atom_ar_u **out,
					   t_osc_err (*func)(long, char*, char*, int, int*))
{
	if(!len || !oscbndl){
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	int type = osc_expr_arg_getType(f_argv);
	char *address = NULL;
	switch(type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		{
			t_osc_atom_u *a = osc_expr_arg_getOSCAtom(f_argv);
			if(osc_atom_u_getTypetag(a) == 's'){
				t_osc_atom_ar_u *ar = NULL;
				osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &ar);
				if(ar){
					t_osc_atom_u *aa = osc_atom_array_u_get(ar, 0);
					if(osc_atom_u_getTypetag(aa) == 's'){
						osc_atom_u_getString(aa, 0, &address);
					}
					osc_atom_array_u_free(ar);
				}
			}
		}
		break;
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		{
			char *tmp = osc_expr_arg_getOSCAddress(f_argv);
			osc_util_strdup(&address, tmp);
		}
		break;
	}
	if(address){
		*out = osc_atom_array_u_alloc(1);
		int res = 0;
		func(*len, *oscbndl, address, 1, &res);
		osc_atom_u_setBool(osc_atom_array_u_get(*out, 0), res);
		osc_mem_free(address);
		return 0;
	}else{
		osc_error(OSC_ERR_EXPR_ARGCHK, "arg 1 should be an OSC address");
		return 1;
	}
	return 0;
}

static int osc_expr_specFunc_bound(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	return osc_expr_specFunc_existsorbound(f, lexenv, len, oscbndl, out, osc_bundle_s_addressIsBound);
}

static int osc_expr_specFunc_exists(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	return osc_expr_specFunc_existsorbound(f, lexenv, len, oscbndl, out, osc_bundle_s_addressExists);
}

static int osc_expr_specFunc_getaddresses(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	int n = 0;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(*len, *oscbndl);
	while(osc_bndl_it_s_hasNext(it)){
		osc_bndl_it_s_next(it);
		n++;
	}
	*out = osc_atom_array_u_alloc(n);
	osc_bndl_it_s_reset(it);
	n = 0;
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		osc_atom_u_setString(osc_atom_array_u_get(*out, n), osc_message_s_getAddress(m));
		n++;
	}
	osc_bndl_it_s_destroy(it);
	return 0;
}

static int osc_expr_specFunc_getmsgcount(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	int n = 0;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(*len, *oscbndl);
	while(osc_bndl_it_s_hasNext(it)){
		osc_bndl_it_s_next(it);
		n++;
	}
	*out = osc_atom_array_u_alloc(1);
	osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), n);
	osc_bndl_it_s_destroy(it);
	return 0;
}

static int osc_expr_specFunc_value(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	if(!len || !oscbndl){
		return 1;
	}
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_atom_ar_u *arg = NULL;
	t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &arg);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "value");
		return err;
	}
	if(arg){
		if(f_argv->type == OSC_EXPR_ARG_TYPE_OSCADDRESS){
			*out = arg;
		}else{
			if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's'){
				char *address = osc_atom_u_getStringPtr(osc_atom_array_u_get(arg, 0));
				t_osc_msg_ar_s *ar = NULL;
				osc_bundle_s_lookupAddress(*len, *oscbndl, address, &ar, 1);
				if(ar){
					t_osc_msg_s *m = osc_message_array_s_get(ar, 0);
					int argc = osc_message_s_getArgCount(m);
					*out = osc_atom_array_u_alloc(argc);
						
					osc_array_clear(*out);
					t_osc_atom_s *a = osc_atom_s_alloc(0, NULL);
					int i;
					for(i = 0; i < argc; i++){
						osc_message_s_getArg(m, i, &a);
						t_osc_atom_u *au = osc_atom_array_u_get(*out, i);
						osc_atom_s_deserialize(a, &au);
					}
					osc_mem_free(a);
					osc_message_array_s_free(ar);
				}
			}
			osc_atom_array_u_free(arg);
		}
	}
	return 0;
}

static int osc_expr_specFunc_quote(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	switch(f_argv->type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		{
			*out = osc_atom_array_u_alloc(1);
					
			t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
			osc_atom_u_copy(&a, f_argv->arg.atom);
		}
		return 0;
		// the parser always puts the arguments to a quote form in an OSC_EXPR_ARG_TYPE_ATOM
		// so the next two cases will never happen.  
	case OSC_EXPR_ARG_TYPE_EXPR:{}
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:{}
	}
	return 0;
}

static int osc_expr_specFunc_eval(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
#ifdef  __OSC_PROFILE__
	if(!rdtsc_cps){
		rdtsc_cps = RDTSC_CYCLES_PER_SECOND;
	}
#endif
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	t_osc_atom_ar_u *arg = NULL;
	t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &arg);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "eval");
		return err;
	}
	if(arg){
		if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' && osc_atom_array_u_getLen(arg) == 1){
			char *expr = osc_atom_u_getStringPtr(osc_atom_array_u_get(arg, 0));
			t_osc_expr *f = NULL;
			TIMER_START(foo, rdtsc_cps);
			osc_expr_parser_parseExpr(expr, &f);
			TIMER_STOP(foo, rdtsc_cps);
			TIMER_PRINTF(foo);
			TIMER_SNPRINTF(foo, buff);
#ifdef __OSC_PROFILE__
			printf("%s\n", buff);
#endif
			int ret = 0;
			*out = osc_atom_array_u_alloc(1);
					
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), 0);
			t_osc_expr *ff = f;
			while(ff){
				t_osc_atom_ar_u *ar = NULL;
				ret = osc_expr_eval(ff, len, oscbndl, &ar);
				if(ar){
					osc_atom_array_u_free(ar);
				}
				if(ret){
					osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
					break;
				}
				ff = osc_expr_next(ff);
			}
			osc_expr_free(f);
		}else{
			long buflen = 0;
			char *buf = NULL;
			osc_atom_array_u_getStringArray(arg, &buflen, &buf, " ");
			t_osc_expr *f = NULL;
			osc_expr_parser_parseExpr(buf, &f);
			int ret = 0;
			*out = osc_atom_array_u_alloc(1);
					
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), 0);
			t_osc_expr *ff = f;
			while(ff){
				t_osc_atom_ar_u *ar = NULL;
				ret = osc_expr_eval(ff, len, oscbndl, &ar);
				if(ar){
					osc_atom_array_u_free(ar);
				}
				if(ret){
					osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
					break;
				}
				ff = osc_expr_next(ff);
			}
			osc_expr_free(f);
			if(buf){
				osc_mem_free(buf);
			}
		}
		osc_atom_array_u_free(arg);
	}else{
		char *a = osc_expr_arg_getOSCAddress(f_argv);
		if(a){
			t_osc_expr *e = osc_hashtab_lookup(osc_expr_funcobj_ht, strlen(a), a);
			if(e){
				t_osc_atom_ar_u *ar = NULL;
				int ret = osc_expr_eval(f, len, oscbndl, &ar);
				*out = osc_atom_array_u_alloc(1);
						
				osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
				if(ar){
					osc_atom_array_u_free(ar);
				}
			}
		}
	}
	return 0;
}

int osc_expr_specFunc_tokenize(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	//char *ptr = "/foo += sin(2 * pi() * /bar)";
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	char *expr = NULL;
	t_osc_atom_ar_u *arg = NULL;
	t_osc_err err = osc_expr_evalArgInLexEnv(f_argv, lexenv, len, oscbndl, &arg);
	if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
		osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "tokenize");
		return err;
	}
	if(arg){
		if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' && osc_atom_array_u_getLen(arg) == 1){
			expr = osc_atom_u_getStringPtr(osc_atom_array_u_get(arg, 0));
		}else{
			long buflen = 0;
			osc_atom_array_u_getStringArray(arg, &buflen, &expr, " ");
		}
		if(expr){
			t_osc_err e = osc_expr_lex(expr, out);
			if(e){
				return e;
			}
		}
	}
	return 0;
}

static int osc_expr_specFunc_compile(t_osc_expr *f,
			    t_osc_expr_lexenv *lexenv,
			    long *len,
			    char **oscbndl,
			    t_osc_atom_ar_u **out)
{
	t_osc_expr_arg *f_argv = osc_expr_getArgs(f);
	if(osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_OSCADDRESS){
		return 1;
	}
	char *key_orig = osc_expr_arg_getOSCAddress(f_argv);
	int keylen = strlen(key_orig);
	char *key = osc_mem_alloc(keylen + 1);
	strncpy(key, key_orig, keylen + 1);
	char *expression = NULL;
	t_osc_expr *thisf = NULL;
	int arg2type = osc_expr_arg_getType(f_argv->next);
	if(arg2type == OSC_EXPR_ARG_TYPE_OSCADDRESS){
		// 2nd arg is an OSC address--look it up in the bundle
		t_osc_atom_ar_u *arg = NULL;
		t_osc_err err = osc_expr_evalArgInLexEnv(f_argv->next, lexenv, len, oscbndl, &arg);
		if(err == OSC_ERR_EXPR_ADDRESSUNBOUND){
			osc_expr_err_unbound(osc_expr_arg_getOSCAddress(f_argv), "compile");
			osc_mem_free(key);
			return err;
		}
		if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' &&
		   osc_atom_array_u_getLen(arg) == 1){
			osc_atom_u_getString(osc_atom_array_u_get(arg, 0), 0, &expression);
			osc_expr_parser_parseExpr(expression, &thisf);
		}else{
			long buflen = 0;
			osc_atom_array_u_getStringArray(arg, &buflen, &expression, " ");
			osc_expr_parser_parseExpr(expression, &thisf);
		}
		osc_atom_array_u_free(arg);
	}else if(arg2type == OSC_EXPR_ARG_TYPE_EXPR){
		// 2nd arg is an expr
		osc_expr_copy(&f, osc_expr_arg_getExpr(f_argv->next));
	}else{
		// free mem here
		return 1;
	}
	if(thisf){
		if(!osc_expr_funcobj_ht){
			osc_expr_funcobj_ht = osc_hashtab_new(-1, osc_expr_funcobj_dtor);
		}
		osc_hashtab_store(osc_expr_funcobj_ht, keylen, key, thisf);
	}
	if(expression){
		osc_mem_free(expression);
	}
	return 0;
}

t_osc_err osc_expr_lex(char *str, t_osc_atom_array_u **ar){
	//char *ptr = "/foo = sin(2 * pi() * /bar";
	char *ptr = str;
	YYSTYPE yylval_param;
	YYLTYPE llocp;
	yyscan_t scanner;
	osc_expr_scanner_lex_init(&scanner);
	YY_BUFFER_STATE buf_state = osc_expr_scanner__scan_string(ptr, scanner);
	osc_expr_scanner_set_out(NULL, scanner);
	int n = 64;
	size_t atomsize = osc_atom_u_getStructSize();
	t_osc_atom_u *out = osc_mem_alloc(n * atomsize);
	memset(out, '\0', n * atomsize);
	int i = 0;
	yylval_param.atom = out;
	int ret = osc_expr_scanner_lex(&yylval_param, &llocp, scanner, 0);
	while(ret){
		if(i == n){
			n += 64;
			osc_mem_resize(out, n * atomsize);
		}
		char *st = NULL;
		switch(ret){
		case OSC_EXPR_STRING:
		case OSC_EXPR_NUM:
		case OSC_EXPR_OSCADDRESS:
			break;
		case OSC_EXPR_POWEQ:
			st = "^=";
			break;
		case OSC_EXPR_MODEQ:
			st = "%=";
			break;
		case OSC_EXPR_DIVEQ:
			st = "/=";
			break;
		case OSC_EXPR_MULTEQ:
			st = "*=";
			break;
		case OSC_EXPR_MINUSEQ:
			st = "-=";
			break;
		case OSC_EXPR_PLUSEQ:
			st = "+=";
			break;
		case OSC_EXPR_DBLQMARKEQ:
			st = "??=";
			break;
		case OSC_EXPR_DBLQMARK:
			st = "??";
			break;
		case OSC_EXPR_OR:
			st = "||";
			break;
		case OSC_EXPR_AND:
			st = "&&";
			break;
		case OSC_EXPR_NEQ:
			st = "!=";
			break;
		case OSC_EXPR_EQ:
			st = "=";
			break;
		case OSC_EXPR_GTE:
			st = ">=";
			break;
		case OSC_EXPR_LTE:
			st = "<=";
			break;
		case CLOSE_DBL_BRKTS:
			st = "]]";
			break;
		case OPEN_DBL_BRKTS:
			st = "[[";
			break;
		case OSC_EXPR_DEC:
			st = "--";
			break;
		case OSC_EXPR_INC:
			st = "++";
			break;
		default:
			{
				char buf[2];
				sprintf(buf, "%c", ret);
				osc_atom_u_setString((t_osc_atom_u *)(((long)out) + (i * atomsize)), buf);
			}
		}
		if(st){
			osc_atom_u_setString((t_osc_atom_u *)(((long)out) + (i * atomsize)), st);
		}
		i++;
		yylval_param.atom = (t_osc_atom_u *)(((long)out) + (i * atomsize));
		ret = osc_expr_scanner_lex(&yylval_param, &llocp, scanner, 0);
	}
	*ar = osc_atom_array_u_alloc(0);
	osc_atom_array_u_set(*ar, out, i);
	osc_expr_scanner__delete_buffer(buf_state, scanner);
	osc_expr_scanner_lex_destroy(scanner);
	return 0;
}

void osc_expr_lexenvDtor(char *key, void *val)
{
	if(key){
		osc_mem_free(key);
	}
	if(val){
		osc_atom_array_u_free((t_osc_atom_ar_u *)val);
	}
}

t_osc_expr_lexenv *osc_expr_makeLexenv(void)
{
	return osc_hashtab_new(0, osc_expr_lexenvDtor);
}

void osc_expr_destroyLexenv(t_osc_expr_lexenv *lexenv)
{
	osc_hashtab_destroy(lexenv);
}

void osc_expr_copyLexenv_cb(char *key, void *val, void *context)
{
	t_osc_hashtab *ht = (t_osc_hashtab *)context;
	if(!ht || !val || !key){
		return;
	}
	int keylen = strlen(key) + 1;
	char *key_copy = osc_mem_alloc(keylen);
	strncpy(key_copy, key, keylen);
	t_osc_atom_ar_u *ar = osc_atom_array_u_copy((t_osc_atom_ar_u *)val);
	osc_hashtab_store(ht, keylen - 1, key_copy, (void *)ar);
}

void osc_expr_copyLexenv(t_osc_expr_lexenv **dest, t_osc_expr_lexenv *src)
{
	t_osc_hashtab *copy = osc_hashtab_new(0, osc_expr_lexenvDtor);
	osc_hashtab_foreach(src, osc_expr_copyLexenv_cb, (void *)copy);
	*dest = (t_osc_expr_lexenv *)copy;
}

void osc_expr_bindVarInLexenv(t_osc_expr_lexenv *lexenv, char *varname, t_osc_atom_ar_u *val)
{
	int len = strlen(varname) + 1;
	char *copy = osc_mem_alloc(len);
	strncpy(copy, varname, len);
	if(lexenv && varname){
		osc_hashtab_store((t_osc_hashtab *)lexenv, len - 1, copy, (void *)val);
	}
}

t_osc_atom_ar_u *osc_expr_lookupBindingInLexenv(t_osc_expr_lexenv *lexenv, char *varname)
{
	if(lexenv && varname){
		return osc_hashtab_lookup((t_osc_hashtab *)lexenv, strlen(varname), varname);
	}
	return NULL;
}

t_osc_expr *osc_expr_makeFuncObjFromOSCMsg_s(t_osc_msg_s *msg, int argoffset)
{
	char *buf = NULL;
	long len = 0;
	osc_message_s_formatArgs(msg, &len, &buf, argoffset);
	t_osc_expr *f = NULL;
	osc_expr_parser_parseExpr(buf, &f);
	return f;
}

t_osc_expr_rec *osc_expr_lookupFunction(char *name)
{
	t_osc_expr_rec *rec = NULL;
	int i;
	for(i = 0; i < sizeof(osc_expr_funcsym) / sizeof(t_osc_expr_rec); i++){
		if(!strcmp(name, osc_expr_funcsym[i].name)){
			rec = osc_expr_funcsym + i;
			break;
		}
	}
	return rec;
}

int osc_expr_1arg_dbl(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	long ac = osc_atom_array_u_getLen(*argv);
	if(argc == 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(ac);
		
	t_osc_atom_ar_u *result = *out;
	double (*func)(double) = (double (*)(double))(f->rec->extra);
	int i;
	for(i = 0; i < ac; i++){
		osc_atom_u_setDouble(osc_atom_array_u_get(result, i), func(osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i))));
	}
	return 0;
}

int osc_expr_2arg_dbl_dbl(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	uint32_t argc0 = osc_atom_array_u_getLen(argv[0]);
	uint32_t argc1 = osc_atom_array_u_getLen(argv[1]);
	uint32_t min_argc = argc0, max_argc = argc1;
	if(argc0 > argc1){
		min_argc = argc1, max_argc = argc0;
	}
	int i;
	double (*func)(double,double) = (double (*)(double,double))(f->rec->extra);
	if(argc0 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), 
					     func(osc_atom_u_getDouble(osc_atom_array_u_get(argv[0], 0)), 
						  osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], i))));
		}
		return 0;
	}else if(argc1 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), 
					     func(osc_atom_u_getDouble(osc_atom_array_u_get(argv[0], i)), 
						  osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0))));
		}
		return 0;
	}else{
		*out = osc_atom_array_u_alloc(min_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < min_argc; i++){
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), 
					     func(osc_atom_u_getDouble(osc_atom_array_u_get(argv[0], i)), 
						  osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], i))));
		}
		return 0;
	}
}

int osc_expr_2arg(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	uint32_t argc0 = osc_atom_array_u_getLen(argv[0]);
	uint32_t argc1 = osc_atom_array_u_getLen(argv[1]);
	uint32_t min_argc = argc0, max_argc = argc1;
	if(argc0 > argc1){
		min_argc = argc1, max_argc = argc0;
	}
	int i;
	int (*func)(t_osc_atom_u*,t_osc_atom_u*,t_osc_atom_u**) = (int (*)(t_osc_atom_u*,t_osc_atom_u*,t_osc_atom_u**))(f->rec->extra);
	int ret = 0;
	if(argc0 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			ret = func(osc_atom_array_u_get(argv[0], 0), osc_atom_array_u_get(argv[1], i), &a);
			if(ret){
				return ret;
			}
		}
		return 0;
	}else if(argc1 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			ret = func(osc_atom_array_u_get(argv[0], i), osc_atom_array_u_get(argv[1], 0), &a);
			if(ret){
				return ret;
			}
		}
		return 0;
	}else{
		*out = osc_atom_array_u_alloc(min_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < min_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			ret = func(osc_atom_array_u_get(argv[0], i), osc_atom_array_u_get(argv[1], i), &a);
			if(ret){
				return ret;
			}
		}
		return 0;
	}
}

// wrappers for infix ops
int osc_expr_add(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_copy(result, f2);
		return 0;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		char *sp1 = osc_atom_u_getStringPtr(f1);
		char *sp2 = osc_atom_u_getStringPtr(f2);
		char buf[strlen(sp1) + strlen(sp2) + 1];
		sprintf(buf, "%s%s", sp1, sp2);
		osc_atom_u_setString(*result, buf);
	}else if(tt1 == 's' && OSC_TYPETAG_ISNUMERIC(tt2)){
		char *sp1 = osc_atom_u_getStringPtr(f1);
		char *sp2 = NULL;
		osc_atom_u_getString(f2, 0, &sp2);
		if(!sp2){
			return 0;
		}
		char buf[strlen(sp1) + strlen(sp2) + 1];
		sprintf(buf, "%s%s", sp1, sp2);
		osc_atom_u_setString(*result, buf);
		osc_mem_free(sp2);
	}else if(tt2 == 's' && OSC_TYPETAG_ISNUMERIC(tt1)){
		char *sp2 = osc_atom_u_getStringPtr(f2);
		char *sp1 = NULL;
		osc_atom_u_getString(f1, 0, &sp1);
		if(!sp1){
			return 0;
		}
		char buf[strlen(sp1) + strlen(sp2) + 1];
		sprintf(buf, "%s%s", sp1, sp2);
		osc_atom_u_setString(*result, buf);
		osc_mem_free(sp1);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		if(OSC_TYPETAG_ISFLOAT(tt1) || OSC_TYPETAG_ISFLOAT(tt2)){
			osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) + osc_atom_u_getDouble(f2));
		}else{
			osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) + osc_atom_u_getInt32(f2));
		}
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg("+", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg("+", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_subtract(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_copy(result, f2);
		return 0;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		if(OSC_TYPETAG_ISFLOAT(tt1) || OSC_TYPETAG_ISFLOAT(tt2)){
			osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) - osc_atom_u_getDouble(f2));
		}else{
			osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) - osc_atom_u_getInt32(f2));
		}
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1)){
			osc_expr_err_badInfixArg("-", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2)){
			osc_expr_err_badInfixArg("-", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_multiply(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_copy(result, f2);
		return 0;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		if(OSC_TYPETAG_ISFLOAT(tt1) || OSC_TYPETAG_ISFLOAT(tt2)){
			osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) * osc_atom_u_getDouble(f2));
		}else{
			osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) * osc_atom_u_getInt32(f2));
		}
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1)){
			osc_expr_err_badInfixArg("*", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2)){
			osc_expr_err_badInfixArg("*", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_divide(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_copy(result, f2);
		return 0;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		if(OSC_TYPETAG_ISFLOAT(tt1) || OSC_TYPETAG_ISFLOAT(tt2)){
			double d2 = osc_atom_u_getDouble(f2);
			if(d2 == 0){
				osc_atom_u_setString(*result, "Inf");
			}else{
				osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) / d2);
			}
		}else{
			int32_t i2 = osc_atom_u_getInt32(f2);
			if(i2 == 0){
				osc_atom_u_setString(*result, "Inf");
			}else{
				osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) / i2);
			}
		}
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1)){
			osc_expr_err_badInfixArg("/", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2)){
			osc_expr_err_badInfixArg("/", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_lt(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret < 0);
	}else if((tt1 == 's') && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setFalse(*result);
	}else if((tt2 == 's') && OSC_TYPETAG_ISNUMERIC(tt1)){
		osc_atom_u_setTrue(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) < osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg("<", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg("<", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_lte(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret <= 0);
	}else if((tt1 == 's') && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setFalse(*result);
	}else if((tt2 == 's') && OSC_TYPETAG_ISNUMERIC(tt1)){
		osc_atom_u_setTrue(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) <= osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg("<=", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg("<=", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_gt(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret > 0);
	}else if((tt1 == 's') && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setTrue(*result);
	}else if((tt2 == 's') && OSC_TYPETAG_ISNUMERIC(tt1)){
		osc_atom_u_setFalse(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) > osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg(">", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg(">", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_gte(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret >= 0);
	}else if((tt1 == 's') && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setTrue(*result);
	}else if((tt2 == 's') && OSC_TYPETAG_ISNUMERIC(tt1)){
		osc_atom_u_setFalse(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) >= osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg(">=", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg(">=", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_eq(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret == 0);
		//}else if((tt1 == 's') || (tt2 == 's')){
		//osc_atom_u_setFalse(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) == osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg("==", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg("==", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_neq(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret != 0);
		//}else if((tt1 == 's') || (tt2 == 's')){
		//osc_atom_u_setTrue(*result);
	}else if(OSC_TYPETAG_ISNUMERIC(tt1) && OSC_TYPETAG_ISNUMERIC(tt2)){
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) != osc_atom_u_getDouble(f2));
	}else{
		if(!OSC_TYPETAG_ISNUMERIC(tt1) && !OSC_TYPETAG_ISSTRING(tt1)){
			osc_expr_err_badInfixArg("!=", tt1, 1, f1, f2);
		}else if(!OSC_TYPETAG_ISNUMERIC(tt2) && !OSC_TYPETAG_ISSTRING(tt2)){
			osc_expr_err_badInfixArg("!=", tt2, 2, f1, f2);
		}
		return 1;
	}
	return 0;
}

int osc_expr_and(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return 0;
	}
	osc_atom_u_setBool(*result, osc_atom_u_getBool(f1) && osc_atom_u_getBool(f2));
	return 0;
}

int osc_expr_or(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	int ff1 = 0;
	int ff2 = 0;
	if(f1){
		ff1 = osc_atom_u_getBool(f1);
	}
	if(f2){
		ff2 = osc_atom_u_getBool(f2);
	}
	osc_atom_u_setBool(*result, ff1 || ff2);
	return 0;
}

double _osc_expr_fmod(double x, double m)
{
	return x - m * _osc_expr_sign(m) * floor(x / fabs(m));
}

int osc_expr_mod(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_setInt32(*result, 0);
		return 0;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return 0;
	}
	/*
	  char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	  if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
	  double ff1 = osc_atom_u_getDouble(f1), ff2 = osc_atom_u_getDouble(f2);
	  if(ff2 == 0){
	  osc_atom_u_copy(result, f1);
	  return 0;
	  }
	  osc_atom_u_setDouble(*result, fmod(ff1, ff2));
	  }else{
	  int32_t ff1 = osc_atom_u_getInt32(f1), ff2 = osc_atom_u_getInt32(f2);
	  if(ff2 == 0){
	  osc_atom_u_copy(result, f1);
	  return 0;
	  }
	  osc_atom_u_setInt32(*result, ff1 % ff2);
	  }
	*/
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	double ff1 = osc_atom_u_getDouble(f1), ff2 = osc_atom_u_getDouble(f2);
	double m = _osc_expr_fmod(ff1, ff2);
	if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
		if(ff2 == 0){
			osc_atom_u_copy(result, f1);
			return 0;
		}
		osc_atom_u_setDouble(*result, m);
	}else{
		if(ff2 == 0){
			osc_atom_u_copy(result, f1);
			return 0;
		}
		osc_atom_u_setInt32(*result, (int32_t)m);
	}
	return 0;
}

int osc_expr_assign(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	/*
	int len = 0;
	int i;
	for(i = 1; i < argc; i++){
		len += osc_atom_array_u_getLen(argv[i]);
	}
	*out = osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *ar = *out;
	len = 0;
	for(i = 1; i < argc; i++){
		osc_atom_array_u_copyInto(&ar, argv[i], len);
		len += osc_atom_array_u_getLen(argv[i]);
	}
	*/
	return 0;
}

int osc_expr_plus1(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	int i;
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	for(i = 0; i < len; i++){
		t_osc_atom_u *a = osc_atom_array_u_get(*argv, i);
		char tt = osc_atom_u_getTypetag(a);
		switch(tt){
		case 'i':
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, i), osc_atom_u_getInt32(a) + 1);
			break;
		case 'f':
			osc_atom_u_setFloat(osc_atom_array_u_get(*out, i), osc_atom_u_getFloat(a) + 1);
			break;
		case 'd':
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), osc_atom_u_getDouble(a) + 1);
			break;
		case 'h':
			osc_atom_u_setUInt32(osc_atom_array_u_get(*out, i), osc_atom_u_getUInt32(a) + 1);
			break;
		case 'I':
			osc_atom_u_setInt64(osc_atom_array_u_get(*out, i), osc_atom_u_getInt64(a) + 1);
			break;
		case 'H':
			osc_atom_u_setUInt64(osc_atom_array_u_get(*out, i), osc_atom_u_getUInt64(a) + 1);
			break;
		}
	}
	return 0;
}

int osc_expr_minus1(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int i;
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	for(i = 0; i < len; i++){
		t_osc_atom_u *a = osc_atom_array_u_get(*argv, i);
		char tt = osc_atom_u_getTypetag(a);
		switch(tt){
		case 'i':
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, i), osc_atom_u_getInt32(a) - 1);
			break;
		case 'f':
			osc_atom_u_setFloat(osc_atom_array_u_get(*out, i), osc_atom_u_getFloat(a) - 1);
			break;
		case 'd':
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), osc_atom_u_getDouble(a) - 1);
			break;
		case 'h':
			osc_atom_u_setUInt32(osc_atom_array_u_get(*out, i), osc_atom_u_getUInt32(a) - 1);
			break;
		case 'I':
			osc_atom_u_setInt64(osc_atom_array_u_get(*out, i), osc_atom_u_getInt64(a) - 1);
			break;
		case 'H':
			osc_atom_u_setUInt64(osc_atom_array_u_get(*out, i), osc_atom_u_getUInt64(a) - 1);
			break;
		}
	}
	return 0;
}

int osc_expr_nth(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int i, j, k = 0;
	int argc_out = 0;
	for(i = 1; i < argc; i++){
		argc_out += osc_atom_array_u_getLen(argv[i]);
	}
	*out = osc_atom_array_u_alloc(argc_out);
		
	long argv0len = osc_atom_array_u_getLen(argv[0]);
	for(j = 1; j < argc; j++){
		for(i = 0; i < osc_atom_array_u_getLen(argv[j]); i++){
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, k), 0.);
			int32_t l = osc_atom_u_getInt32(osc_atom_array_u_get(argv[j], i));
			if(l > argv0len - 1){
				osc_atom_array_u_free(*out);
				*out = NULL;
				return 1;
			}
			t_osc_atom_u *r = osc_atom_array_u_get(*out, k);
			osc_atom_u_copy(&r, osc_atom_array_u_get(argv[0], l));
			k++;
		}
	}
	return 0;
}

int osc_expr_assign_to_index(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc != 3){
		return 1;
	}
	*out = osc_atom_array_u_copy(*argv);
	int outlen = osc_atom_array_u_getLen(*out);
	int nindexes = osc_atom_array_u_getLen(argv[1]);
	int ndata = osc_atom_array_u_getLen(argv[2]);
	if(nindexes == 0 || ndata == 0){
		return 1;
	}else if(nindexes == 1 && ndata > 1){
		int idx = osc_atom_u_getInt(osc_atom_array_u_get(argv[1], 0));
		if(idx >= outlen || idx < 0){
			// error!
			return 1;
		}
		t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
		osc_atom_u_copy(&dest, osc_atom_array_u_get(argv[2], 0));
	}else if(nindexes > 1 && ndata == 1){
		int i, idx;
		t_osc_atom_u *a = osc_atom_array_u_get(argv[2], 0);
		for(i = 0; i < nindexes; i++){
			idx = osc_atom_u_getInt(osc_atom_array_u_get(argv[1], i));
			if(idx >= outlen || idx < 0){
				// error!
				continue;
			}
			t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
			osc_atom_u_copy(&dest, a);
		}
	}else{
		int i, idx;
		int n = osc_atom_array_u_getLen(argv[1]);
		if(osc_atom_array_u_getLen(argv[2]) < n){
			n = osc_atom_array_u_getLen(argv[2]);
		}
		for(i = 0; i < n; i++){
			idx = osc_atom_u_getInt(osc_atom_array_u_get(argv[1], i));
			if(idx >= outlen || idx < 0){
				// error!
				continue;
			}
			t_osc_atom_u *dest = osc_atom_array_u_get(*out, idx);
			osc_atom_u_copy(&dest, osc_atom_array_u_get(argv[2], i));
		}
	}
	return 0;
}

int osc_expr_product(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 0.);
	double val = 1;
	int j;
	for(j = 0; j < argc; j++){
		long len = osc_atom_array_u_getLen(argv[j]);
		if(len == 0){
			//osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 0.);
			//return 0;
			continue;
		}
		int i;
		for(i = 0; i < len; i++){
			val *= osc_atom_u_getDouble(osc_atom_array_u_get(argv[j], i));
		}
	}
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), val);
	return 0;
}

int osc_expr_sum(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 0.);
	double val = 0;
	int j;
	for(j = 0; j < argc; j++){
		long len = osc_atom_array_u_getLen(argv[j]);
		if(len == 0){
			//osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 0.);
			//return 0;
			continue;
		}
		int i;
		for(i = 0; i < len; i++){
			val += osc_atom_u_getDouble(osc_atom_array_u_get(argv[j], i));
		}
	}
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), val);
	return 0;
}

int osc_expr_cumsum(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int i;
	int n = 0;
	int k = 0;
	double val = 0;
	for(i = 0; i < argc; i++){
		n += osc_atom_array_u_getLen(argv[i]);
	}
	*out = osc_atom_array_u_alloc(n);
		
	for(i = 0; i < argc; i++){
		int j;
		for(j = 0; j < osc_atom_array_u_getLen(argv[i]); j++){
			val += osc_atom_u_getDouble(osc_atom_array_u_get(argv[i], j));
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, k++), val);
		}
	}
	return 0;
}

int osc_expr_length(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	int i;
	int count = 0;
	for(i = 0; i < argc; i++){
		count += osc_atom_array_u_getLen(argv[i]);
	}
	osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), count);
	return 0;
}

int osc_expr_mean(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	double sum = 0;
	int i;
	long len = osc_atom_array_u_getLen(*argv);
	for(i = 0; i < len; i++){
		sum += osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
	}
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), sum / len);
	return 0;
}

// this implementation of the median is not great--it just sorts 
// the list and takes the median.  this could be optimized by 
// implementing a median of medians algorithm or something
int comp(const void *val1, const void *val2){
	double v1 = *((double *)val1);
	double v2 = *((double *)val2);
	if(v1 < v2){
		return -1;
	}
	if(v1 == v2){
		return 0;
	}
	return 1;
}

int osc_expr_median(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	long len = osc_atom_array_u_getLen(*argv);
	double *tmp = NULL;
	osc_atom_array_u_getDoubleArray(*argv, &tmp);
	qsort((void *)(tmp), len, sizeof(double), comp);
	if((len % 2) == 0){
		double left = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, (int)((len - 1) / 2.)));
		double right = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, ((int)((len - 1) / 2.) + 1)));
		osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), (left + right) / 2.);
	}else{
		osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), osc_atom_u_getDouble(osc_atom_array_u_get(*argv, ((len - 1) / 2))));
	}
	if(tmp){
		osc_mem_free(tmp);
	}
	return 0;
}

int osc_expr_reverse(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	int i;
	for(i = 0; i < len; i++){
		t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
		osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, len - i - 1));
	}
	return 0;
}

static int osc_expr_qsortcb(const void *a1, const void *a2)
{
	t_osc_atom_u *aa1 = (t_osc_atom_u *)a1;
	t_osc_atom_u *aa2 = (t_osc_atom_u *)a2;
	char t1 = osc_atom_u_getTypetag(aa1);
	char t2 = osc_atom_u_getTypetag(aa2);
	if(t1 == 's' && t2 == 's'){
		return strcmp(osc_atom_u_getStringPtr(aa1), osc_atom_u_getStringPtr(aa2));
	}else if(t1 == 's'){
		return 1;
	}else if(t2 == 's'){
		return -1;
	}else{
		double d1 = osc_atom_u_getDouble(aa1);
		double d2 = osc_atom_u_getDouble(aa2);
		if(d1 < d2){
			return -1;
		}else{
			return 1;
		}
	}
	return 0;
}

int osc_expr_sort(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int n = 0;
	for(int i = 0; i < argc; i++){
		n += osc_atom_array_u_getLen(argv[i]);
	}
	t_osc_atom_u *ar = (t_osc_atom_u *)osc_mem_alloc(n * osc_atom_u_getStructSize());
	n = 0;
	for(int i = 0; i < argc; i++){
		for(int j = 0; j < osc_atom_array_u_getLen(argv[i]); j++){
			t_osc_atom_u *a = (t_osc_atom_u *)(((char *)ar) + (n++ * osc_atom_u_getStructSize()));
			osc_atom_u_copy(&a, osc_atom_array_u_get(argv[i], j));
		}
	}
	qsort((void *)ar, n, osc_atom_u_getStructSize(), osc_expr_qsortcb);
	*out = osc_atom_array_u_alloc(0);
	osc_atom_array_u_set(*out, (void *)ar, n);
	return 0;
}

int osc_expr_list(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int outlen = 0;
	int i;
	for(i = 0; i < argc; i++){
		outlen += osc_atom_array_u_getLen(argv[i]);
	}
	if(outlen <= 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(outlen);
	int pos = 0;
	for(i = 0; i < argc; i++){
		osc_atom_array_u_copyInto(out, argv[i], pos);
		pos += osc_atom_array_u_getLen(argv[i]);
	}
	return 0;
}

int osc_expr_nfill(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int n = osc_atom_u_getInt(osc_atom_array_u_get(*argv, 0));
	t_osc_atom_u *val = NULL;
	*out = osc_atom_array_u_alloc(n);
		
	int alloc = 0;
	if(argc == 2){
		val = osc_atom_array_u_get(argv[1], 0);
	}
	if(!val){
		alloc = 1;
		val = osc_atom_u_alloc();
		osc_atom_u_setDouble(val, 0.);
	}
	int i;
	for(i = 0; i < n; i++){
		t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
		osc_atom_u_copy(&a, val);
 	}
	if(alloc){
		osc_atom_u_free(val);
	}
	return 0;
}

int osc_expr_aseq(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc < 2){
		printf("osc_expr: aseq requires at least 2 arguments:  start and end.");
		return 1;
	}
	int dblup = 0;
	if(osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, 0)) == 'f' || 
	   osc_atom_u_getTypetag(osc_atom_array_u_get(argv[1], 0)) == 'f' || 
	   osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, 0)) == 'd' || 
	   osc_atom_u_getTypetag(osc_atom_array_u_get(argv[1], 0)) == 'd'){
		dblup = 1;
	}
	if(dblup == 0 && argc > 2){
		if(osc_atom_u_getTypetag(osc_atom_array_u_get(argv[2], 0)) == 'f' || 
		   osc_atom_u_getTypetag(osc_atom_array_u_get(argv[2], 0)) == 'd'){
			dblup = 1;
		}
	}
	double start, end;
 	start = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, 0));
 	end = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0));
	if(start == end){
		*out = osc_atom_array_u_alloc(1);
		t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
		osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, 0));
		return 0;
	}
 	double step = _osc_expr_sign(end - start);
 	if(argc > 2){
	 	step = osc_atom_u_getDouble(osc_atom_array_u_get(argv[2], 0));
		char tt = osc_atom_u_getTypetag(osc_atom_array_u_get(argv[2], 0));
		if(tt == 'f' || tt == 'd'){
			dblup = 1;
		}
 	}
 	if(step == 0){
		osc_error(OSC_ERR_EXPR_ARGCHK,
			  "aseq: step must not be 0");
	 	return 1;
 	}
 	if(_osc_expr_sign(end - start) != _osc_expr_sign(step)){
		osc_error(OSC_ERR_EXPR_ARGCHK,
			  _osc_expr_sign(end - start) == 1 ?
			  "aseq: end > start, but step is negative!\n" :
			  "aseq: end < start, but step is positive!\n");
	 	return 1;
 	}
	double min = start, max = end, abs_step = fabs(step);
	if(min > max){
		double tmp = min;
		min = max;
		max = tmp;
	}
	int i = 0;
	int n = (int)(((max - min) / abs_step)) + 1;
	*out = osc_atom_array_u_alloc(n);
		
	if(dblup){
		for(i = 0; i < n; i++){
			osc_atom_u_setDouble(osc_atom_array_u_get(*out, i), start);
			start += step;
		}
	}else{
		for(i = 0; i < n; i++){
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, i), start);
			start += step;
		}
	}
	return 0;
}

int osc_expr_first(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		if(osc_atom_array_u_getLen(*argv)){
			*out = osc_atom_array_u_alloc(1);
			t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, 0));
		}
	}
	return 0;
}

int osc_expr_last(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		int len = osc_atom_array_u_getLen(*argv);
		if(len){
			*out = osc_atom_array_u_alloc(1);
			t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, len - 1));
		}
	}
	return 0;
}

int osc_expr_rest(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		int len = osc_atom_array_u_getLen(*argv);
		if(len){
			*out = osc_atom_array_u_alloc(len - 1);
			osc_atom_array_u_clear(*out);
			for(int i = 1; i < len; i++){
				t_osc_atom_u *a = osc_atom_array_u_get(*out, i - 1);
				osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			}
		}
	}
	return 0;
}

int osc_expr_butlast(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		int len = osc_atom_array_u_getLen(*argv);
		if(len){
			*out = osc_atom_array_u_alloc(len - 1);
			osc_atom_array_u_clear(*out);
			for(int i = 0; i < len - 1; i++){
				t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
				osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			}
		}
	}
	return 0;
}

int osc_expr_interleave(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int min = osc_atom_array_u_getLen(*argv);
	int i, j;
	for(i = 1; i < argc; i++){
		int val = osc_atom_array_u_getLen(argv[i]);
		if(val < min){
			min = val;
		}
	}
	*out = osc_atom_array_u_alloc(argc * min);
		
	for(i = 0; i < argc; i++){
		for(j = 0; j < min; j++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i + (j * argc));
			osc_atom_u_copy(&a, osc_atom_array_u_get(argv[i], j));
		}
	}
	return 0;
}

int osc_expr_not(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int i;
	*out = osc_atom_array_u_alloc(osc_atom_array_u_getLen(*argv));
		
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		switch(osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i))){
			// lazy...
		case 'i':
		case 'I':
		case 'h':
		case 'H':
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, i), !(osc_atom_u_getInt32(osc_atom_array_u_get(*argv, i))));
			break;
		case 'f':
		case 'd':
			osc_atom_u_setInt32(osc_atom_array_u_get(*out, i), !(osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i))));
			break;
		case 's':
		case 'b':
		case OSC_BUNDLE_TYPETAG:
			{
				t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
				osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			}
			break;
		case 'T':
			osc_atom_u_setFalse(osc_atom_array_u_get(*out, i));
			break;
		case 'F':
		case 'N':
			osc_atom_u_setTrue(osc_atom_array_u_get(*out, i));
			break;
		default:
			osc_atom_u_setFalse(osc_atom_array_u_get(*out, i));
		}
	}
	return 0;
}

int osc_expr_dot(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc < 2){
		return 0;
	}
	*out = osc_atom_array_u_alloc(1);
		
	double s = 0;
	int i;
	long len0 = osc_atom_array_u_getLen(*argv);
	long len1 = osc_atom_array_u_getLen(argv[1]);
	// this should work on ints too
	for(i = 0; i < (len0 < len1 ? len0 : len1); i++){
		double f1 = 0, f2 = 0;
		if(i < len0){
			f1 = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		}
		if(i < len1){
			f2 = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], i));
		}
		s += f1 * f2;
	}
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), s);
	return 0;
}

int osc_expr_l2norm(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc < 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(1);
		
	double s = 0;
	int i;
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		s += pow(osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i)), 2.);
	}
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), sqrt(s));
	return 0;
}

int osc_expr_min(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc == 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(1);
		
	int i;
	double min = DBL_MAX;
	t_osc_atom_u *a = NULL;
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		double f = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(f <= min){
			min = f;
			a = osc_atom_array_u_get(*argv, i);
		}
	}
	t_osc_atom_u *o = osc_atom_array_u_get(*out, 0);
	osc_atom_u_copy(&o, a);
	return 0;
}

int osc_expr_max(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc == 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(1);
		
	int i;
	double max = -DBL_MAX;
	t_osc_atom_u *a = NULL;
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		double f = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(f >= max){
			max = f;
			a = osc_atom_array_u_get(*argv, i);
		}
	}
	t_osc_atom_u *o = osc_atom_array_u_get(*out, 0);
	osc_atom_u_copy(&o, a);
	return 0;
}

int osc_expr_extrema(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc == 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(2);
		
	int i;
	double min = DBL_MAX, max = -DBL_MAX;
	t_osc_atom_u *amin = NULL, *amax = NULL;
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		double f = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(f <= min){
			min = f;
			amin = osc_atom_array_u_get(*argv, i);
		}
		if(f >= max){
			max = f;
			amax = osc_atom_array_u_get(*argv, i);
		}
	}
	t_osc_atom_u *omin = osc_atom_array_u_get(*out, 0);
	t_osc_atom_u *osc = osc_atom_array_u_get(*out, 1);
	osc_atom_u_copy(&omin, amin);
	osc_atom_u_copy(&osc, amax);
	return 0;
}

int osc_expr_range(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc == 0){
		return 0;
	}
	*out = osc_atom_array_u_alloc(1);
		
	int i;
	double min = DBL_MAX, max = -DBL_MAX;
	char ttmin = 'i';
	char ttmax = 'i';
	//t_osc_atom_u *amin = NULL, *amax = NULL;
	for(i = 0; i < osc_atom_array_u_getLen(*argv); i++){
		double f = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(f <= min){
			min = f;
			ttmin = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
			//amin = osc_atom_array_u_get(*argv, i);
		}
		if(f >= max){
			max = f;
			ttmax = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
			//amax = osc_atom_array_u_get(*argv, i);
		}
	}
	t_osc_atom_u *r = osc_atom_array_u_get(*out, 0);
	if(ttmin == 'f' || ttmin == 'd' || ttmax == 'f' || ttmax == 'd'){
		osc_atom_u_setDouble(r, max - min);
	}else{
		osc_atom_u_setInt32(r, max - min);
	}
	return 0;
}

int osc_expr_clip(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc != 3){
		return 1;
	}

	t_osc_atom_u *min_atom = osc_atom_array_u_get(argv[1], 0);
	t_osc_atom_u *max_atom = osc_atom_array_u_get(argv[2], 0);

	double min = osc_atom_u_getDouble(min_atom);
	double max = osc_atom_u_getDouble(max_atom);

	char min_tt = osc_atom_u_getTypetag(min_atom);
	char max_tt = osc_atom_u_getTypetag(max_atom);

	int fl = 0;
	if(min_tt == 'd' || min_tt == 'f' ||
	   max_tt == 'd' || max_tt == 'f'){
		fl = 1;
	}

	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *result = *out;
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == OSC_BUNDLE_TYPETAG){
			t_osc_atom_u *a = osc_atom_array_u_get(result, i);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			continue;
		}
		double val = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(val < min){
			val = min;
		}
		if(val > max){
			val = max;
		}
		if(type == 'f' || type == 'd' || fl){
			osc_atom_u_setDouble(osc_atom_array_u_get(result, i), val);
		}else{
			osc_atom_u_setInt32(osc_atom_array_u_get(result, i), (int32_t)val);
		}
	}
	return 0;
}

int osc_expr_scale(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc != 5){
		return 1;
	}
	t_osc_atom_u *min_in_atom = osc_atom_array_u_get(argv[1], 0);
	t_osc_atom_u *max_in_atom = osc_atom_array_u_get(argv[2], 0);
	t_osc_atom_u *min_out_atom = osc_atom_array_u_get(argv[3], 0);
	t_osc_atom_u *max_out_atom = osc_atom_array_u_get(argv[4], 0);

	char min_in_tt = osc_atom_u_getTypetag(min_in_atom);
	char max_in_tt = osc_atom_u_getTypetag(max_in_atom);
	char min_out_tt = osc_atom_u_getTypetag(min_out_atom);
	char max_out_tt = osc_atom_u_getTypetag(max_out_atom);

	double min_in = osc_atom_u_getDouble(min_in_atom);
	double max_in = osc_atom_u_getDouble(max_in_atom);
	double min_out = osc_atom_u_getDouble(min_out_atom);
	double max_out = osc_atom_u_getDouble(max_out_atom);

	int fl = 0;
	if(min_in_tt == 'd' || min_in_tt == 'f' ||
	   max_in_tt == 'd' || max_in_tt == 'f' ||
	   min_out_tt == 'd' || min_out_tt == 'f' ||
	   max_out_tt == 'd' || max_out_tt == 'f'){
		fl = 1;
	}

	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
	t_osc_atom_ar_u *result = *out;
	if(max_out == min_out){
		int i;
		for(i = 0; i < len; i++){
			char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
			if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == OSC_BUNDLE_TYPETAG){
				t_osc_atom_u *a = osc_atom_array_u_get(result, i);
				osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
				continue;
			}
			if(fl || type == 'd' || type == 'f'){
				osc_atom_u_setDouble(osc_atom_array_u_get(result, i), min_out);
			}else{
				osc_atom_u_setInt32(osc_atom_array_u_get(result, i), min_out);
			}
		}
		return 0;
	}
	double m = (max_out - min_out) / (max_in - min_in);
	float b = (min_out - (m * min_in));
		
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == OSC_BUNDLE_TYPETAG){
			t_osc_atom_u *a = osc_atom_array_u_get(result, i);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			continue;
		}
		double val = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		val = m * val + b;
		if(fl || type == 'd' || type == 'f'){
			osc_atom_u_setDouble(osc_atom_array_u_get(result, i), val);
		}else{
			osc_atom_u_setInt32(osc_atom_array_u_get(result, i), (int32_t)val);
		}
	}
	return 0;
}

int osc_expr_mtof(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	if(argc == 0){
		return 1;
	}
	double base = 440;
	if(argc > 1){
		if(osc_atom_array_u_getLen(argv[1]) > 0){
			base = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0));
		}
	}
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *result = *out;
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == OSC_BUNDLE_TYPETAG){
			t_osc_atom_u *a = osc_atom_array_u_get(result, i);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			continue;
		}
		double val = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		// l(2) * (1. / 12.)
		val = base * exp(.05776226504666210911810267678817 * (val - 69));
		osc_atom_u_setDouble(osc_atom_array_u_get(result, i), val);
	}
	return 0;
}

int osc_expr_ftom(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc == 0){
		return 1;
	}
	double base = 440;
	if(argc > 1){
		if(osc_atom_array_u_getLen(argv[1]) > 0){
			base = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0));
		}
	}
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *result = *out;
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == OSC_BUNDLE_TYPETAG){
			t_osc_atom_u *a = osc_atom_array_u_get(result, i);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			continue;
		}
		double val = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		// 1. / (l(2) * (1. / 12))
		val = (69 + (17.31234049066756088831909617202611 * log(val / base)));
		osc_atom_u_setDouble(osc_atom_array_u_get(result, i), val);
	}
	return 0;
}

int _osc_expr_sign(double f)
{
	if(f == 0){
		return 0;
	}else if(f < 0){
		return -1;
	}else{
		return 1;
	}
}

int osc_expr_sign(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	int i;
	for(i = 0; i < len; i++){
		double f = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		if(f == 0){
			osc_atom_u_setInt32(osc_atom_array_u_get(*argv, i), 0);
		}else if(f < 0){
			osc_atom_u_setInt32(osc_atom_array_u_get(*argv, i), -1);
		}else{
			osc_atom_u_setInt32(osc_atom_array_u_get(*argv, i), 1);
		}
	}
	return 0;
}

int osc_expr_if(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_bound(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_exists(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_emptybundle(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_getaddresses(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_getmsgcount(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_identity(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	// pass through
	*out = osc_atom_array_u_copy(*argv);
	return 0;
}

int osc_expr_eval_call(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_tokenize(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_compile(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_prog1(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		*out = osc_atom_array_u_copy(argv[0]);
		return 0;
	}else{
		return 1;
	}
}

int osc_expr_prog2(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc > 1){
		*out = osc_atom_array_u_copy(argv[1]);
		return 0;
	}else{
		return 1;
	}
}

int osc_expr_progn(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		*out = osc_atom_array_u_copy(argv[argc - 1]);
		return 0;
	}else{
		return 1;
	}
}

int osc_expr_apply(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	return 0;
}

int osc_expr_map(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	return 0;
}

int osc_expr_lreduce(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	return 0;
}

int osc_expr_rreduce(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	return 0;
}

int osc_expr_quote(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_value(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// this is a dummy function.  we'll use this to do a pointer comparison.
	return 0;
}

int osc_expr_typetags(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		int len = osc_atom_array_u_getLen(*argv);
		*out = osc_atom_array_u_alloc(len);
			
		int i;
		for(i = 0; i < len; i++){
			char tt = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
			osc_atom_u_setInt8(osc_atom_array_u_get(*out, i), tt);
		}
	}
	return 0;
}

int osc_expr_lambda(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	// dummy
	return 0;
}

int osc_expr_strcmp(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc < 2){
		return 1;
	}
	char *st1 = NULL, *st2 = NULL;
	osc_atom_u_getString(osc_atom_array_u_get(*argv, 0), 0, &st1);
	osc_atom_u_getString(osc_atom_array_u_get(argv[1], 0), 0, &st2);
	int ret = 0;
	if(argc == 3){
		int n = osc_atom_u_getInt(osc_atom_array_u_get(argv[2], 0));
		ret = strncmp(st1, st2, n);
	}else{
		ret = strcmp(st1, st2);
	}
	*out = osc_atom_array_u_alloc(1);
	osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
	return 0;
}

int osc_expr_split(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc != 2){
		return 1;
	}
	char *str = NULL;
	char *sep = NULL;
	osc_atom_u_getString(osc_atom_array_u_get(argv[1], 0), 0, &str);
	osc_atom_u_getString(osc_atom_array_u_get(argv[0], 0), 0, &sep);
	if(!sep || !str){
		return 1;
	}
	int n = 16;
	t_osc_atom_ar_u *ar = osc_atom_array_u_alloc(n);
	int i = 0;
	char *c = NULL;
	char *tok = NULL;
	tok = strtok_r(str, sep, &c);
	while(tok){
		if(i >= n){
			n += 16;
			osc_atom_array_u_resize(ar, n);
		}
		if(tok){
			osc_atom_u_setString(osc_atom_array_u_get(ar, i++), tok);
		}
		tok = strtok_r(NULL, sep, &c);
	}
	osc_atom_array_u_resize(ar, i);
	*out = ar;
	if(sep){
		osc_mem_free(sep);
	}
	if(str){
		osc_mem_free(str);
	}
	return 0;
}

int osc_expr_join(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc < 2){
		return 1;
	}
	char *sep = NULL;
	osc_atom_u_getString(osc_atom_array_u_get(argv[0], 0), 0, &sep);
	int seplen = 0;
	if(sep){
		seplen = strlen(sep);
	}else{
		sep = "";
	}
	int n = 0;
	for(int i = 1; i < argc; i++){
		n += osc_atom_array_u_getLen(argv[i]);
	}
	char *ptrs[n];
	int len = 0;
	n = 0;
	for(int i = 1; i < argc; i++){
		for(int j = 0; j < osc_atom_array_u_getLen(argv[i]); j++){
			char *ptr = NULL;
			osc_atom_u_getString(osc_atom_array_u_get(argv[i], j), 0, &ptr);
			ptrs[n++] = ptr;
			if(ptr){
				len += strlen(ptr) + seplen;
			}
		}
	}
	len++;
	char *buf = (char *)osc_mem_alloc(len);
	char *bufptr = buf;
	for(int i = 0; i < n; i++){
		if(ptrs[i]){
			if(i == n - 1){
				bufptr += sprintf(bufptr, "%s", ptrs[i]);
			}else{
				bufptr += sprintf(bufptr, "%s%s", ptrs[i], sep);
			}
			osc_mem_free(ptrs[i]);
		}
	}
	*out = osc_atom_array_u_alloc(1);
	osc_atom_u_setStringPtr(osc_atom_array_u_get(*out, 0), buf);
	osc_atom_u_setShouldFreePtr(osc_atom_array_u_get(*out, 0), 1);
	if(sep){
		osc_mem_free(sep);
	}
	return 0;
}

// constants
int osc_expr_pi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_PI);
	return 0;
}

int osc_expr_twopi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 2 * M_PI);
	return 0;
}

int osc_expr_halfpi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_PI_2);
	return 0;
}

int osc_expr_quarterpi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_PI_4);
	return 0;
}

int osc_expr_oneoverpi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_1_PI);
	return 0;
}

int osc_expr_twooverpi(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_2_PI);
	return 0;
}

int osc_expr_degtorad(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 0.017453);
	return 0;
}

int osc_expr_radtodeg(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), 57.29578);
	return 0;
}

int osc_expr_e(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_E);
	return 0;
}

int osc_expr_lntwo(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_LN2);
	return 0;
}

int osc_expr_lnten(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_LN10);
	return 0;
}

int osc_expr_logtwoe(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_LOG2E);
	return 0;
}

int osc_expr_logtene(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_LOG10E);
	return 0;
}

int osc_expr_sqrttwo(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_SQRT2);
	return 0;
}

int osc_expr_sqrthalf(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	*out = osc_atom_array_u_alloc(1);
		
	osc_atom_u_setDouble(osc_atom_array_u_get(*out, 0), M_SQRT1_2);
	return 0;
}

int osc_expr_explicitCast(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	if(argc){
		int n = osc_atom_array_u_getLen(*argv);
		*out = osc_atom_array_u_alloc(n);
		osc_atom_array_u_clear(*out);
			
		int i;
		for(i = 0; i < n; i++){
			int ret;
			int (*func)(t_osc_atom_u *dest, t_osc_atom_u *src) =
				(int (*)(t_osc_atom_u *, t_osc_atom_u *))f->rec->extra;
			ret = func(osc_atom_array_u_get(*out, i), osc_atom_array_u_get(*argv, i));
			if(ret){
				return ret;
			}
		}
	}
	return 0;
}

int osc_expr_explicitCast_float32(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setFloat(dest, osc_atom_u_getFloat(src));
	return 0;
}

int osc_expr_explicitCast_float64(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setDouble(dest, osc_atom_u_getDouble(src));
	return 0;
}

int osc_expr_explicitCast_int8(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setInt8(dest, osc_atom_u_getInt8(src));
	return 0;
}

int osc_expr_explicitCast_int16(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setInt16(dest, osc_atom_u_getInt16(src));
	return 0;
}

int osc_expr_explicitCast_int32(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setInt32(dest, osc_atom_u_getInt32(src));
	return 0;
}

int osc_expr_explicitCast_int64(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setInt64(dest, osc_atom_u_getInt64(src));
	return 0;
}

int osc_expr_explicitCast_uint8(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setUInt8(dest, osc_atom_u_getUInt8(src));
	return 0;
}

int osc_expr_explicitCast_uint16(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setUInt16(dest, osc_atom_u_getUInt16(src));
	return 0;
}

int osc_expr_explicitCast_uint32(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setUInt32(dest, osc_atom_u_getUInt32(src));
	return 0;
}

int osc_expr_explicitCast_uint64(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	osc_atom_u_setUInt64(dest, osc_atom_u_getUInt64(src));
	return 0;
}

int osc_expr_explicitCast_string(t_osc_atom_u *dest, t_osc_atom_u *src)
{
	char *s = NULL;
	osc_atom_u_getString(src, 0, &s);
	if(s){
		osc_atom_u_setString(dest, s);
		osc_mem_free(s);
		return 0;
	}else{
		return 1;
	}
}

t_osc_expr *osc_expr_alloc(void)
{
	t_osc_expr *expr = (t_osc_expr *)osc_mem_alloc(sizeof(t_osc_expr));
	memset(expr, '\0', sizeof(t_osc_expr));
	return expr;
}

t_osc_expr_arg *osc_expr_arg_alloc(void)
{
	t_osc_expr_arg *arg = (t_osc_expr_arg *)osc_mem_alloc(sizeof(t_osc_expr_arg));
	memset(arg, '\0', sizeof(t_osc_expr_arg));
	return arg;
}

void osc_expr_free(t_osc_expr *e)
{
	t_osc_expr *ee = e;
	while(ee){
		t_osc_expr *next = ee->next;
		osc_expr_arg_freeList(ee->argv);
		osc_mem_free(ee);
		ee = next;
	}
}

void osc_expr_copy(t_osc_expr **dest, t_osc_expr *src)
{
	if(!src){
		return;
	}
	if(!(*dest)){
		*dest = osc_expr_alloc();
	}
	t_osc_expr *copy = *dest;
	copy->rec = src->rec;
	copy->argc = src->argc;
	t_osc_expr_arg *arg = src->argv;
	t_osc_expr_arg *first_arg_copy = NULL;
	t_osc_expr_arg *last_arg_copy = NULL;
	while(arg){
		t_osc_expr_arg *arg_copy = NULL;
		osc_expr_arg_copy(&arg_copy, arg);
		if(last_arg_copy){
			last_arg_copy->next = arg_copy;
		}
		last_arg_copy = arg_copy;
		if(!first_arg_copy){
			first_arg_copy = arg_copy;
		}
		arg = arg->next;
	}
	copy->argv = first_arg_copy;
}

void osc_expr_copyAllLinked(t_osc_expr **dest, t_osc_expr *src)
{
	if(!src){
		return;
	}
	t_osc_expr *e = src;
	while(e){
		t_osc_expr *copy = NULL;
		osc_expr_copy(&copy, e);
		if(*dest){
			osc_expr_appendExpr(*dest, copy);
		}else{
			*dest = copy;
		}
		e = osc_expr_next(e);
	}
}

void osc_expr_appendExpr(t_osc_expr *e, t_osc_expr *expr_to_append)
{
	if(!e){
		return;
	}
	t_osc_expr *ee = e;
	t_osc_expr *last = ee;

	while(ee){
		last = ee;
		ee = ee->next;
	}
	last->next = expr_to_append;
	expr_to_append->next = NULL;
}

void osc_expr_arg_clear(t_osc_expr_arg *a)
{
	if(!a){
		return;
	}
	switch(a->type){
	case OSC_EXPR_ARG_TYPE_EXPR:
		osc_expr_free(a->arg.expr);
		break;
	case OSC_EXPR_ARG_TYPE_ATOM:
		osc_atom_u_free(a->arg.atom);
		break;
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		if(a->arg.atom){
			osc_mem_free(a->arg.osc_address);
		}
		break;
	case OSC_EXPR_ARG_TYPE_FUNCTION:
		{
			t_osc_expr *e = NULL;
			osc_expr_rec_free(a->arg.func, (void **)&e);
			if(e){
				osc_expr_free(e);
			}
		}
		break;
	}
}

void osc_expr_arg_free(t_osc_expr_arg *a)
{
	osc_expr_arg_clear(a);
	osc_mem_free(a);
}

void osc_expr_arg_freeList(t_osc_expr_arg *a)
{
	while(a){
		t_osc_expr_arg *next = osc_expr_arg_next(a);
		osc_expr_arg_free(a);
		a = next;
	}
}

void osc_expr_setRec(t_osc_expr *e, t_osc_expr_rec *rec)
{
	e->rec = rec;
}

t_osc_expr_rec *osc_expr_getRec(t_osc_expr *e)
{
	return e->rec;
}

void osc_expr_setArg(t_osc_expr *e, t_osc_expr_arg *a){
	if(e){
		if(a){
			t_osc_expr_arg *aa = a;
			int count = 0;
			while(aa){
				count++;
				aa = aa->next;
			}
			e->argv = a;
			e->argc = count;
		}
	}
}

void osc_expr_prependArg(t_osc_expr *e, t_osc_expr_arg *a)
{
	if(e){
		if(!(e->argv)){
			e->argv = a;
			e->argc = 1;
		}else{
			t_osc_expr_arg *aa = a;
			t_osc_expr_arg *last = aa;
			int count = 0;
			while(aa){
				last = aa;
				aa = aa->next;
				count++;
			}
			if(last){
				last->next = e->argv;
				e->argv = a;
				e->argc += count;
			}
		}
	}
}

void osc_expr_appendArg(t_osc_expr *e, t_osc_expr_arg *a)
{
	if(e){
		if(!(e->argv)){
			e->argv = a;
			e->argc = 1;
		}else{
			t_osc_expr_arg *aa = e->argv;
			t_osc_expr_arg *last = aa;
			while(aa){
				last = aa;
				aa = aa->next;
			}
			if(last){
				last->next = a;
				aa = a;
				int count = 0;
				while(aa){
					count++;
					aa = aa->next;
				}
				e->argc += count;
			}
		}
	}
}

inline t_osc_expr_arg *osc_expr_getArgs(t_osc_expr *e)
{
	if(!e){
		return NULL;
	}
	return e->argv;
}

inline long osc_expr_getArgCount(t_osc_expr *e)
{
	if(!e){
		return 0;
	}
	return e->argc;
}

inline void osc_expr_setNext(t_osc_expr *e, t_osc_expr *next)
{
	if(!e){
		return;
	}
	e->next = next;
}

inline t_osc_expr *osc_expr_next(t_osc_expr *e)
{
	if(!e){
		return NULL;
	}
	return e->next;
}

inline void osc_expr_arg_setOSCAtom(t_osc_expr_arg *a, t_osc_atom_u *atom)
{
	if(!a){
		return;
	}
	a->arg.atom = atom;
	a->type = OSC_EXPR_ARG_TYPE_ATOM;
}

inline void osc_expr_arg_setFunction(t_osc_expr_arg *a, t_osc_expr_rec *rec)
{
	if(!a){
		return;
	}
	a->arg.func = rec;
	a->type = OSC_EXPR_ARG_TYPE_FUNCTION;
} 

inline void osc_expr_arg_setExpr(t_osc_expr_arg *a, t_osc_expr *e)
{
	if(!a){
		return;
	}
	a->arg.expr = e;
	a->type = OSC_EXPR_ARG_TYPE_EXPR;
}

inline void osc_expr_arg_setOSCAddress(t_osc_expr_arg *a, char *osc_address)
{
	if(!a){
		return;
	}
	a->arg.osc_address = osc_address;
	a->type = OSC_EXPR_ARG_TYPE_OSCADDRESS;
}

inline void osc_expr_arg_setList(t_osc_expr_arg *a, t_osc_atom_ar_u *ar)
{
	if(!a){
		return;
	}
	a->arg.list = ar;
	a->type = OSC_EXPR_ARG_TYPE_LIST;
}

inline void osc_expr_arg_setType(t_osc_expr_arg *a, long type)
{
	if(a){
		a->type = type;
	}
}

inline int osc_expr_arg_getType(t_osc_expr_arg *a)
{
	if(a){
		return a->type;
	}
	return -1;
}

inline t_osc_atom_u *osc_expr_arg_getOSCAtom(t_osc_expr_arg *a)
{
	if(a){
		return a->arg.atom;
	}
	return NULL;
}

inline t_osc_expr *osc_expr_arg_getExpr(t_osc_expr_arg *a)
{
	if(a){
		return a->arg.expr;
	}
	return NULL;
}

inline char *osc_expr_arg_getOSCAddress(t_osc_expr_arg *a)
{
	if(a){
		return a->arg.osc_address;
	}
	return NULL;
}

inline t_osc_expr_rec *osc_expr_arg_getFunction(t_osc_expr_arg *a)
{
	if(a){
		return a->arg.func;
	}
	return NULL;
}

t_osc_err osc_expr_arg_copy(t_osc_expr_arg **dest, t_osc_expr_arg *src)
{
	if(!src){
		return OSC_ERR_NONE;
	}
	if(!(*dest)){
		*dest = osc_expr_arg_alloc();
	}
	t_osc_expr_arg *copy = *dest;
	memset(copy, '\0', sizeof(t_osc_expr_arg));
	copy->type = src->type;
	switch(src->type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		osc_atom_u_copy(&(copy->arg.atom), src->arg.atom);
		break;
	case OSC_EXPR_ARG_TYPE_EXPR:
		osc_expr_copy(&(copy->arg.expr), src->arg.expr);
		break;
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		{
			int len = strlen(src->arg.osc_address) + 1;
			copy->arg.osc_address = osc_mem_alloc(len);
			memcpy(copy->arg.osc_address, src->arg.osc_address, len);
		}
		break;
	case OSC_EXPR_ARG_TYPE_FUNCTION:
		{
			t_osc_expr_rec *copy = NULL;
			osc_expr_rec_copy(&copy, src->arg.func, (void (*)(void **, void*))osc_expr_copyAllLinked);
			(*dest)->arg.func = copy;
		}
		break;
	}
	return OSC_ERR_NONE;
}

void osc_expr_arg_setNext(t_osc_expr_arg *a, t_osc_expr_arg *next)
{
	a->next = next;
}

int osc_expr_arg_append(t_osc_expr_arg *a, t_osc_expr_arg *arg_to_append)
{
	t_osc_expr_arg *aa = a;
	t_osc_expr_arg *next = aa;
	int count = 0;
	while(aa){
		next = aa;
		aa = aa->next;
		count++;
	}
	next->next = arg_to_append;
	return count;
}

t_osc_expr_arg *osc_expr_arg_next(t_osc_expr_arg *a)
{
	return a->next;
}

void osc_expr_funcobj_dtor(char *key, void *val)
{
	if(key){
		osc_mem_free(key);
	}
	if(val){
		osc_expr_free((t_osc_expr *)val);
	}
}

int osc_expr_format_r(t_osc_expr *fg, char *buf)
{
	if(!fg){
		return 0;
	}
	char *ptr = buf;
	ptr += sprintf(ptr, "(%s ", fg->rec->name);
	t_osc_expr_arg *f_argv = fg->argv;
	while(f_argv){
		switch(f_argv->type){
		case OSC_EXPR_ARG_TYPE_ATOM:
			{
				t_osc_atom_u *a = f_argv->arg.atom;
				long buflen = 64;
				char *buf = osc_mem_alloc(buflen);
				if(!buf){
					return 0;
				}
				osc_atom_u_format(a, &buflen, &buf);
				ptr += sprintf(ptr, "%s ", buf);
				if(buf){
					osc_mem_free(buf);
				}
			}
			break;
		case OSC_EXPR_ARG_TYPE_LIST:
			{
				t_osc_atom_ar_u *ar = f_argv->arg.list;
				long buflen = 64;
				char *buf = osc_mem_alloc(buflen);
				if(!buf){
					return 0;
				}
				for(int i = 0; i < osc_atom_array_u_getLen(ar); i++){
					osc_atom_u_format(osc_atom_array_u_get(ar, i), &buflen, &buf);
					ptr += sprintf(ptr, "%s ", buf);
				}
				if(buf){
					osc_mem_free(buf);
				}
			}
			break;
		case OSC_EXPR_ARG_TYPE_OSCADDRESS:
			ptr += sprintf(ptr, "%s ", f_argv->arg.osc_address);
			break;
		case OSC_EXPR_ARG_TYPE_EXPR:
			ptr += osc_expr_format_r(f_argv->arg.expr, ptr);
			break;
 		case OSC_EXPR_ARG_TYPE_FUNCTION:
			{
				t_osc_expr_rec *r = f_argv->arg.func;
				ptr += sprintf(ptr, "(lambda (");
				int numparams = osc_expr_rec_getNumRequiredArgs(r);
				char **paramnames = osc_expr_rec_getRequiredArgsNames(r);
				for(int i = 0; i < numparams; i++){
					if(i < numparams - 1){
						ptr += sprintf(ptr, "%s, ", paramnames[i]);
					}else{
						ptr += sprintf(ptr, "%s) ", paramnames[i]);
					}
				}
				t_osc_expr *e = (t_osc_expr *)osc_expr_rec_getExtra(r);
				while(e){
					ptr += osc_expr_format_r(e, ptr);
					e = osc_expr_next(e);
				}
				ptr += sprintf(ptr, ") ");
			}
			break;
		}
		f_argv = f_argv->next;
	}
	ptr--;
	ptr += sprintf(ptr, ") ");
	return ptr - buf;
}

void osc_expr_format(t_osc_expr *fg, long *buflen, char **fmt)
{
	if(!(*fmt)){
		*fmt = osc_mem_alloc(512);
	}
	long bufsize = 512, bufpos = 0;
	t_osc_expr *f = fg;
	while(f){
		if(bufpos < 256){
			*fmt = osc_mem_resize(*fmt, bufsize + 256);
		}
		if(!(*fmt)){
			return;
		}
		bufsize += 256;
		bufpos += osc_expr_format_r(f, (*fmt) + bufpos);
		bufpos += sprintf((*fmt) + bufpos, "\n");
		f = f->next;
	}
	*buflen = bufpos;
}

void osc_expr_makeFunctionBundle(void)
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	int i;
	char buf[128];
	for(i = 0; i < sizeof(osc_expr_funcsym) / sizeof(t_osc_expr_rec); i++){
		int j = 0;
		t_osc_expr_rec r = osc_expr_funcsym[i];
		while(r.categories[j]){
			t_osc_msg_u *m = osc_message_u_alloc();
			sprintf(buf, "/doc/category%s/%s", r.categories[j++], r.name);
			osc_message_u_setAddress(m, buf);
			osc_message_u_appendString(m, r.name);
			osc_bundle_u_addMsg(b, m);
		}
	}
	osc_expr_functionBundle = b;
}

void osc_expr_makeCategoryBundle(void)
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	int i;
	char buf[128];
	for(i = 0; i < sizeof(osc_expr_categories) / sizeof(char *); i++){
		t_osc_msg_u *m = osc_message_u_alloc();
		sprintf(buf, "/doc/category/list%s", osc_expr_categories[i]);
		osc_message_u_setAddress(m, buf);
		osc_bundle_u_addMsg(b, m);
	}
	long len = 0;
	char *ptr = NULL;
	osc_bundle_u_serialize(b, &len, &ptr);
	osc_expr_categoryBundle = osc_bundle_s_alloc(len, ptr);
	osc_bundle_u_free(b);
}

t_osc_bndl_s *osc_expr_getCategories(void)
{
	if(!osc_expr_categoryBundle){
		osc_expr_makeCategoryBundle();
	}
	return osc_expr_categoryBundle;
}

t_osc_err osc_expr_getFunctionsForCategory(char *cat, long *len, char **ptr)
{
	if(!cat){
		return OSC_ERR_INVAL;
	}
	if(!osc_expr_functionBundle){
		osc_expr_makeFunctionBundle();
	}
	char buf[128];
	if(strncmp(cat, "/doc/category", 13)){
		sprintf(buf, "/doc/category%s", cat);
	}else{
		sprintf(buf, "%s", cat);
	}
	t_osc_msg_ar_u *ar = NULL;
	osc_bundle_u_lookupAddress(osc_expr_functionBundle, buf, &ar, 0);
	if(ar){
		t_osc_bndl_u *bndl = osc_bundle_u_alloc();
		osc_bundle_u_addMsgArrayCopy(bndl, ar);
		osc_message_array_u_free(ar);
		osc_bundle_u_serialize(bndl, len, ptr);
		osc_bundle_u_free(bndl);
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_expr_getDocForFunction(char *function_name, t_osc_bndl_u **bndl)
{
	t_osc_expr_rec *rec = osc_expr_lookupFunction(function_name);
	if(rec){
		return osc_expr_formatFunctionDoc(rec, bndl);
	}else{
		return OSC_ERR_EXPR_FUNCTIONNOTFOUND;
	}
}

t_osc_err osc_expr_formatFunctionDoc(t_osc_expr_rec *rec, t_osc_bndl_u **bndl)
{
	if(!rec){
		return OSC_ERR_EXPR_FUNCTIONNOTFOUND;
	}
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_message_u *name = osc_message_u_alloc();
	osc_message_u_setAddress(name, "/doc/function/name");
	osc_message_u_appendString(name, rec->name);
	osc_bundle_u_addMsg(b, name);

	t_osc_message_u *sig = osc_message_u_alloc();
	osc_message_u_setAddress(sig, "/doc/function/signature");
	osc_message_u_appendString(sig, rec->signature);
	osc_bundle_u_addMsg(b, sig);

	t_osc_message_u *docstring = osc_message_u_alloc();
	osc_message_u_setAddress(docstring, "/doc/function/docstring");
	osc_message_u_appendString(docstring, rec->docstring);
	osc_bundle_u_addMsg(b, docstring);

	t_osc_message_u *num_required_args = osc_message_u_alloc();
	osc_message_u_setAddress(num_required_args, "/doc/function/num_required_args");
	osc_message_u_appendInt32(num_required_args, rec->num_required_args);
	osc_bundle_u_addMsg(b, num_required_args);

	t_osc_message_u *num_optional_args = osc_message_u_alloc();
	osc_message_u_setAddress(num_optional_args, "/doc/function/num_optional_args");
	osc_message_u_appendInt32(num_optional_args, rec->num_optional_args);
	osc_bundle_u_addMsg(b, num_optional_args);

	int i;
	for(i = 0; i < rec->num_required_args; i++){
		if(rec->required_args_names){
			if(rec->required_args_names[i]){
				char a[128];
				sprintf(a, "/doc/function/arg/required/name/%d", i + 1);
				t_osc_msg_u *m = osc_message_u_alloc();
				osc_message_u_setAddress(m, a);
				osc_message_u_appendString(m, rec->required_args_names[i]);
				osc_bundle_u_addMsg(b, m);

				sprintf(a, "/doc/function/arg/required/types/%d", i + 1);
				t_osc_msg_u *mt = osc_message_u_alloc();
				osc_message_u_setAddress(mt, a);
				char ts[OSC_EXPR_MAX_TYPESTRING_LEN];
				osc_expr_formatTypes(rec->required_args_types[i], ts);
				osc_message_u_appendString(mt, ts);
				osc_bundle_u_addMsg(b, mt);
			}
		}
 	}
	for(i = 0; i < abs(rec->num_optional_args); i++){
		if(rec->optional_args_names){
			if(rec->optional_args_names[i]){
				char a[128];
				sprintf(a, "/doc/function/arg/optional/name/%d", i + 1);
				t_osc_msg_u *m = osc_message_u_alloc();
				osc_message_u_setAddress(m, a);
				osc_message_u_appendString(m, rec->optional_args_names[i]);
				osc_bundle_u_addMsg(b, m);

				sprintf(a, "/doc/function/arg/optional/types/%d", i + 1);
				t_osc_msg_u *mt = osc_message_u_alloc();
				osc_message_u_setAddress(mt, a);
				char ts[OSC_EXPR_MAX_TYPESTRING_LEN];
				osc_expr_formatTypes(rec->optional_args_types[i], ts);
				osc_message_u_appendString(mt, ts);
				osc_bundle_u_addMsg(b, mt);
			}
		}
	}
	t_osc_msg_u *categories = osc_message_u_alloc();
	osc_message_u_setAddress(categories, "/doc/function/categories");
	i = 0;
	while(rec->categories[i]){
		osc_message_u_appendString(categories, rec->categories[i++]);
	}
	osc_bundle_u_addMsg(b, categories);

	*bndl = b;
	return OSC_ERR_NONE;
}

void osc_expr_formatTypes(int types, char *str)
{
	if(!str){
		return;
	}
	char *ptr = str;
	char *fmt = "%s";
	if(types & OSC_EXPR_ARG_TYPE_NUMBER){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_NUMBER]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_LIST){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_LIST]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_STRING){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_STRING]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_ATOM){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_ATOM]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_EXPR){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_EXPR]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_OSCADDRESS){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_OSCADDRESS]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_BOOLEAN){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_BOOLEAN]);
		fmt = ", %s";
	}
	if(types & OSC_EXPR_ARG_TYPE_FUNCTION){
		ptr += sprintf(ptr, fmt, osc_expr_typestrings[types & OSC_EXPR_ARG_TYPE_FUNCTION]);
		fmt = ", %s";
	}
}

// these are for the global hashtab of compiled expressions.  may be removed or changed
void osc_expr_doFormatFunctionTable(char *key, void *val, void *context)
{
	struct context{
		long *buflen;
		long *bufpos;
		char **buf;
	} *ctxt = ((struct context *)context);
	if(*(ctxt->buflen) - *(ctxt->bufpos) < 64){
		*(ctxt->buf) = osc_mem_resize(*(ctxt->buf), *(ctxt->buflen) + 256);
		(*(ctxt->buflen)) += 256;
	}
	*(ctxt->bufpos) += sprintf(*(ctxt->buf) + *(ctxt->bufpos), "address %s is bound to compiled function object %p\n", key, val);
}

void osc_expr_formatFunctionTable(long *buflen, char **buf)
{
	*buflen = 256;
	long bufpos = 0;
	(*buf) = osc_mem_alloc(*buflen);
	struct context{
		long *buflen;
		long *bufpos;
		char **buf;
	} context = {buflen, &bufpos, buf};
	osc_hashtab_foreach(osc_expr_funcobj_ht, osc_expr_doFormatFunctionTable, &context);
	*buflen = bufpos;
}

static void osc_expr_err_badInfixArg(char *func, char typetag, int argnum, t_osc_atom_u *left, t_osc_atom_u *right)
{
	char *leftstr = NULL;
	char *rightstr = NULL;
	long len = 0;
	osc_atom_u_format(left, &len, &leftstr);
	if(!leftstr){
		return;
	}
	len = 0;
	osc_atom_u_format(right, &len, &rightstr);
	if(rightstr){
		osc_error(OSC_ERR_EXPR_ARGCHK, "bad argument for expression %s %s %s. arg %d is a %s", leftstr, func, rightstr, argnum, osc_typetag_str(typetag));
		osc_mem_free(leftstr);
		osc_mem_free(rightstr);
	}
}

static void osc_expr_err_unbound(char *address, char *func)
{
	osc_error(OSC_ERR_EXPR_ADDRESSUNBOUND, "%s: address %s is unbound", func, address);
}
