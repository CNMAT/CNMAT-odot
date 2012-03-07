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

#include "osc_expr.h"
#include "osc_expr.r"
#include "osc_expr_func.h"
#include "osc_expr_parser.h"
#include "osc_expr_scanner.h"

//#define __OSC_PROFILE__
#include "osc_profile.h"

//i hope i don't have to add any more ;)
char *osc_expr_typestrings[] = {"", "number", "list", "", "string", "", "", "", "atom", "", "", "", "", "", "", "", "expression", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "OSC address", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "", "boolean"};

#define OSC_EXPR_MAX_TYPESTRING_LEN strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_NUMBER]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_LIST]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_STRING]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_ATOM]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_EXPR]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_OSCADDRESS]) + strlen(osc_expr_typestrings[OSC_EXPR_ARG_TYPE_BOOLEAN]) + 1 + 12 // commas, spaces, and null byte

char *osc_expr_categories[] = {"/math/operator/arithmetic", "/math/operator/relational", "/math/operator/logical", "/math/operator/assignment", "/math/arithmetic", "/math/trigonometric", "/math/power", "/math/conversion", "/math/specialfunction", "/math/constant", "/vector", "/statistics", "/string/operator", "/predicate", "/conditional", "/core"};

// this gets created the first time it's needed and then it's never freed
t_osc_bndl_u *osc_expr_functionBundle = NULL;
t_osc_bndl_s *osc_expr_categoryBundle = NULL;

static double rdtsc_cps = 0;

int _osc_expr_sign(double f);

t_osc_hashtab *osc_expr_funcobj_ht;
void osc_expr_funcobj_dtor(char *key, void *val);

extern t_osc_err osc_expr_parser_parseString(char *ptr, t_osc_expr **f);
t_osc_err osc_expr_lex(char *str, t_osc_atom_array_u **ar);

int osc_expr_eval(t_osc_expr *f, long *len, char **oscbndl, t_osc_atom_ar_u **out)
{
	int f_argc = f->argc;
	t_osc_expr_arg *f_argv = f->argv;
	int i = 0;
	int ret = 0;

	//////////////////////////////////////////////////
	// Special functions
	//////////////////////////////////////////////////
	if(f->rec->func == osc_expr_assign){
		t_osc_msg_ar_s *msg_ar = NULL;
		t_osc_atom_ar_u *address_ar = NULL;
		char *address = NULL;
		if(osc_expr_arg_getType(f_argv) == OSC_EXPR_ARG_TYPE_OSCADDRESS){
			osc_util_strdup(&address, f_argv->arg.osc_address);
		}else{
			osc_expr_getArg(f->argv, len, oscbndl, &address_ar);
			if(!address_ar){
				return 1;
			}
			t_osc_atom_u *address_atom = osc_atom_array_u_get(address_ar, 0);
			if(osc_atom_u_getTypetag(address_atom) != 's'){
				osc_atom_array_u_free(address_ar);
				return 1;
			}
			osc_atom_u_getString(address_atom, &address);
			osc_atom_array_u_free(address_ar);
		}
		osc_bundle_s_lookupAddress(*len, *oscbndl, address, &msg_ar, 1);

		t_osc_msg_u *mm = osc_message_u_alloc();
		osc_message_u_setAddress(mm, address);

		osc_expr_getArg(f->argv->next, len, oscbndl, out);
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
			osc_bundle_s_replaceMessage(len, oscbndl, osc_message_array_s_get(msg_ar, 0), (t_osc_msg_s *)osc_msg_s);
			osc_message_array_s_free(msg_ar);
		}else{
			osc_bundle_s_appendMessage(len, oscbndl, (t_osc_msg_s *)osc_msg_s);
		}
		if(address){
			osc_mem_free(address);
		}
		osc_message_u_free(mm);
		osc_mem_free(msg_s);
	}else if(f->rec->func == osc_expr_assign_to_index){
		if(f_argc != 3){
			return 1;
		}
		t_osc_msg_ar_s *msg_ar = NULL;
		osc_bundle_s_lookupAddress(*len, *oscbndl, f->argv->arg.osc_address, &msg_ar, 1);
		if(!msg_ar){
			// error
			return 1;
		}

		t_osc_msg_u *mm = osc_message_u_alloc();
		osc_message_u_setAddress(mm, f->argv->arg.osc_address);

		// get data at target address
		osc_expr_getArg(f->argv, len, oscbndl, out);
		int outlen = osc_atom_array_u_getLen(*out);

		// get index(es)
		t_osc_atom_ar_u *indexes = NULL;
		osc_expr_getArg(f->argv->next, len, oscbndl, &indexes);
		int nindexes = osc_atom_array_u_getLen(indexes);

		// get data
		t_osc_atom_ar_u *data = NULL;
		osc_expr_getArg(f->argv->next->next, len, oscbndl, &data);
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
			osc_bundle_s_replaceMessage(len, oscbndl, osc_message_array_s_get(msg_ar, 0), (t_osc_msg_s *)osc_msg_s);
			osc_message_array_s_free(msg_ar);
		}else{
			osc_bundle_s_appendMessage(len, oscbndl, (t_osc_msg_s *)osc_msg_s);
		}
		osc_message_u_free(mm);
		osc_mem_free(msg_s);
	}else if(f->rec->func == osc_expr_if){
		if(f_argc < 2){
			printf("osc_expr: osc_expr_if expected at least 2 arguments but only got %d\n", f_argc);
			return 1;
		}
		t_osc_atom_ar_u *argv = NULL;
		ret = osc_expr_getArg(f_argv, len, oscbndl, &argv);
		if(ret){
			if(argv){
				osc_atom_array_u_free(argv);
			}
			return ret;
		}

		int j;
		for(j = 0; j < osc_atom_array_u_getLen(argv); j++){
			if(osc_atom_u_getInt32(osc_atom_array_u_get(argv, j)) && (f_argc > 1)){
				osc_expr_getArg(f_argv->next, len, oscbndl, out);
			}else if(f_argc > 2){
				osc_expr_getArg(f_argv->next->next, len, oscbndl, out);
			}
		}
		osc_atom_array_u_free(argv);
	}else if(f->rec->func == osc_expr_emptybundle){
		*out = osc_atom_array_u_alloc(1);
			
		if(*len == OSC_HEADER_SIZE){
			osc_atom_u_setTrue(osc_atom_array_u_get(*out, 0));
		}else{
			osc_atom_u_setFalse(osc_atom_array_u_get(*out, 0));
		}
	}else if(f->rec->func == osc_expr_bound){
		*out = osc_atom_array_u_alloc(1);
			
		int res = 0;
		osc_bundle_s_addressIsBound(*len, *oscbndl, f_argv->arg.osc_address, 1, &res);
		osc_atom_u_setBool(osc_atom_array_u_get(*out, 0), res);
	}else if(f->rec->func == osc_expr_exists){
		*out = osc_atom_array_u_alloc(1);
			
		int res = 0;
		osc_bundle_s_addressExists(*len, *oscbndl, f_argv->arg.osc_address, 1, &res);
		osc_atom_u_setBool(osc_atom_array_u_get(*out, 0), res);
	}else if(f->rec->func == osc_expr_getaddresses){
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
	}else if(f->rec->func == osc_expr_getmsgcount){
		int n = 0;
		t_osc_bndl_it_s *it = osc_bndl_it_s_get(*len, *oscbndl);
		while(osc_bndl_it_s_hasNext(it)){
			osc_bndl_it_s_next(it);
			n++;
		}
		*out = osc_atom_array_u_alloc(1);
		osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), n);
		osc_bndl_it_s_destroy(it);
	}else if(f->rec->func == osc_expr_value){
		t_osc_atom_ar_u *arg = NULL;
		osc_expr_getArg(f_argv, len, oscbndl, &arg);
		if(arg){
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
		}
		if(arg){
			osc_atom_array_u_free(arg);
		}
	}else if(f->rec->func == osc_expr_quote){
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
	}else if(f->rec->func == osc_expr_map){
		if(f_argc < 2){
			// error
			return 1;
		}
		if(osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_ATOM){
			//error for now
			return 1;
		}
		t_osc_atom_u *arg_atom = osc_expr_arg_getOSCAtom(f_argv);
		if(osc_atom_u_getTypetag(arg_atom) != 's'){
			// error
			return 1;
		}
		char *funcname = osc_atom_u_getStringPtr(arg_atom);
		t_osc_expr_rec *r = osc_expr_lookupFunction(funcname);
		if(!r){
			printf("function %s not found\n", funcname);
			return 1;
			// error
		}

		t_osc_expr *e = osc_expr_alloc();
		osc_expr_setRec(e, r);

		int ac = f_argc - 1;
		t_osc_atom_ar_u *args[ac];
		uint32_t min = ~0;
		int i = 0;
		t_osc_expr_arg *a = f_argv->next;
		while(a){
			osc_expr_getArg(a, len, oscbndl, args + i);
			int count = osc_atom_array_u_getLen(args[i]);
			if(count < min){
				min = count;
			}
			i++;
			a = a->next;
		}

		t_osc_expr_arg *func_args[ac]; 
		for(i = 0; i < ac; i++){
			func_args[i] = osc_expr_arg_alloc(); // these will get freed when the expr is freed
			osc_expr_appendArg(e, func_args[i]);
		}

		t_osc_atom_ar_u *output[min];
		memset(output, '\0', min * sizeof(t_osc_atom_ar_u *));
		int outcount = 0;
		for(i = 0; i < min; i++){
			int j;
			for(j = 0; j < ac; j++){
				osc_expr_arg_setOSCAtom(func_args[j], osc_atom_array_u_get(args[j], i));
			}
			osc_expr_eval(e, len, oscbndl, output + i);
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
		for(i = 0; i < ac; i++){
			if(args[i]){
				osc_atom_array_u_free(args[i]);
			}
			if(func_args[i]){
				osc_mem_free(func_args[i]);
			}
		}
		for(i = 0; i < min; i++){
			if(output[i]){
				osc_atom_array_u_free(output[i]);
			}
		}
	}else if(f->rec->func == osc_expr_eval_call){
#ifdef  __OSC_PROFILE__
		if(!rdtsc_cps){
			rdtsc_cps = RDTSC_CYCLES_PER_SECOND;
		}
#endif
		t_osc_atom_ar_u *arg = NULL;
		osc_expr_getArg(f_argv, len, oscbndl, &arg);
		if(arg){
			if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' && osc_atom_array_u_getLen(arg) == 1){
				char *expr = osc_atom_u_getStringPtr(osc_atom_array_u_get(arg, 0));
				t_osc_expr *f = NULL;
				TIMER_START(foo, rdtsc_cps);
				osc_expr_parser_parseString(expr, &f);
				TIMER_STOP(foo, rdtsc_cps);
				TIMER_PRINTF(foo);
				TIMER_SNPRINTF(foo, buff);
#ifdef __OSC_PROFILE__
				printf("%s\n", buff);
#endif
				int ret = 0;
				*out = osc_atom_array_u_alloc(1);
					
				osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), 0);
				while(f){
					t_osc_atom_ar_u *ar = NULL;
					ret = osc_expr_eval(f, len, oscbndl, &ar);
					if(ar){
						osc_atom_array_u_free(ar);
					}
					if(ret){
						osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
						break;
					}
					f = osc_expr_next(f);
				}
				osc_expr_free(f);
			}else{
				long buflen = 0;
				char *buf = NULL;
				osc_atom_array_u_getStringArray(arg, &buflen, &buf);
				t_osc_expr *f = NULL;
				osc_expr_parser_parseString(buf, &f);
				int ret = 0;
				*out = osc_atom_array_u_alloc(1);
					
				osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), 0);
				while(f){
					t_osc_atom_ar_u *ar = NULL;
					ret = osc_expr_eval(f, len, oscbndl, &ar);
					if(ar){
						osc_atom_array_u_free(ar);
					}
					if(ret){
						osc_atom_u_setInt32(osc_atom_array_u_get(*out, 0), ret);
						break;
					}
					f = osc_expr_next(f);
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
	}else if(f->rec->func == osc_expr_tokenize){
		//char *ptr = "/foo += sin(2 * pi() * /bar)";
		char *expr = NULL;
		t_osc_atom_ar_u *arg = NULL;
		osc_expr_getArg(f_argv, len, oscbndl, &arg);
		if(arg){
			if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' && osc_atom_array_u_getLen(arg) == 1){
				expr = osc_atom_u_getStringPtr(osc_atom_array_u_get(arg, 0));
			}else{
				long buflen = 0;
				osc_atom_array_u_getStringArray(arg, &buflen, &expr);
			}
			if(expr){
				t_osc_err e = osc_expr_lex(expr, out);
				if(e){
					return e;
				}
			}
		}
	}else if(f->rec->func == osc_expr_compile){
		if(osc_expr_arg_getType(f_argv) != OSC_EXPR_ARG_TYPE_OSCADDRESS){
			return 1;
		}
		char *key_orig = osc_expr_arg_getOSCAddress(f_argv);
		int keylen = strlen(key_orig);
		char *key = osc_mem_alloc(keylen + 1);
		strncpy(key, key_orig, keylen + 1);
		char *expression = NULL;
		t_osc_expr *f = NULL;
		int arg2type = osc_expr_arg_getType(f_argv->next);
		if(arg2type == OSC_EXPR_ARG_TYPE_OSCADDRESS){
			// 2nd arg is an OSC address--look it up in the bundle
			t_osc_atom_ar_u *arg = NULL;
			osc_expr_getArg(f_argv->next, len, oscbndl, &arg);
			if(osc_atom_u_getTypetag(osc_atom_array_u_get(arg, 0)) == 's' &&
			   osc_atom_array_u_getLen(arg) == 1){
				osc_atom_u_getString(osc_atom_array_u_get(arg, 0), &expression);
				osc_expr_parser_parseString(expression, &f);
			}else{
				long buflen = 0;
				osc_atom_array_u_getStringArray(arg, &buflen, &expression);
				osc_expr_parser_parseString(expression, &f);
			}
			osc_atom_array_u_free(arg);
		}else if(arg2type == OSC_EXPR_ARG_TYPE_EXPR){
			// 2nd arg is an expr
			f = osc_expr_copy(osc_expr_arg_getExpr(f_argv->next));
		}else{
			// free mem here
			return 1;
		}
		if(f){
			if(!osc_expr_funcobj_ht){
				osc_expr_funcobj_ht = osc_hashtab_new(-1, osc_expr_funcobj_dtor);
			}
			osc_hashtab_store(osc_expr_funcobj_ht, keylen, key, f);
		}
		if(expression){
			osc_mem_free(expression);
		}
	}else{
		//////////////////////////////////////////////////
		// Call normal function
		//////////////////////////////////////////////////
		t_osc_atom_ar_u *argv[f_argc];
		memset(argv, '\0', sizeof(argv));
		while(f_argv){
			int ret = osc_expr_getArg(f_argv, len, oscbndl, argv + i);
			if(ret){
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
	}
	return ret;
}

/*
int osc_expr_eval(t_osc_expr *function, long *len, char **oscbndl, t_osc_atom_ar_u **out)
{
	t_osc_expr *f = function;
	int ret = _osc_expr_eval(f, len, oscbndl, out);
	if(ret){
		return ret;
	}
	if(f->assign_result_to_address){
		t_osc_msg_ar_s *msg_ar = NULL;
		osc_bundle_s_lookupAddress(*len, *oscbndl, f->argv->arg.osc_address, &msg_ar, 1);

		t_osc_msg_u *mm = osc_message_u_alloc();
		osc_message_u_setAddress(mm, f->argv->arg.osc_address);
		int i;
		for(i = 0; i < osc_atom_array_u_getLen(*out); i++){
			t_osc_atom_u *cpy = NULL;
			osc_atom_u_copy(&cpy, osc_atom_array_u_get(*out, i));
			osc_message_u_appendAtom(mm, cpy);
		}
		char *msg_s = NULL;
		long len_s = 0;
		osc_message_u_serialize(mm, &len_s, &msg_s);
		//t_osc_msg_s *osc_msg_s = osc_message_s_alloc();
		char osc_msg_s[osc_message_s_getStructSize()];
		osc_message_s_initMsg((t_osc_msg_s *)osc_msg_s);
		osc_message_s_wrap((t_osc_msg_s *)osc_msg_s, msg_s);
		//char msg_sw[osc_message_s_getStructSize()];
		//osc_message_s_wrap((t_osc_msg_s *)osc_msg_s, msg_s);
		if(msg_ar){
			osc_bundle_s_replaceMessage(len, oscbndl, osc_message_array_s_get(msg_ar, 0), (t_osc_msg_s *)osc_msg_s);
			osc_message_array_s_free(msg_ar);
		}else{
			osc_bundle_s_appendMessage(len, oscbndl, (t_osc_msg_s *)osc_msg_s);
		}
		//osc_message_s_free(osc_msg_s);
		osc_message_u_free(mm);
		osc_mem_free(msg_s);
	}
	return 0;
}
*/
int osc_expr_evalLexExprsInBndl(long *len, char **oscbndl, t_osc_atom_ar_u **out)
{
	// go through bundle looking for messages that have ``eval'' as their first arg
	t_osc_bndl_it_s *bit = osc_bndl_it_s_get(*len, *oscbndl);
	while(osc_bndl_it_s_hasNext(bit)){
		t_osc_msg_s *m = osc_bndl_it_s_next(bit);
		if(osc_message_s_getArgCount(m) > 1){
			if(osc_message_s_getTypetag(m, 0) == 's'){
				char a[osc_atom_s_getStructSize()];
				char *ap = a;
				osc_message_s_getArg(m, 0, (t_osc_atom_s **)(&ap));
				char *str = osc_atom_s_getData((t_osc_atom_s *)a);
				if(!strncmp(str, "eval", 4) || !strncmp(str, "EVAL", 4)){
					char *expr = NULL;
					long exprlen = 0;
					osc_message_s_formatArgs(m, &exprlen, &expr, 1);
					if(expr){
						t_osc_expr *f = NULL;
						osc_expr_parser_parseString(expr, &f);
						while(f){
							int ret = osc_expr_eval(f, len, oscbndl, out);
							if(ret){
								osc_mem_free(expr);
								osc_expr_free(f);
								return ret;
							}
							f = osc_expr_next(f);
						}
						osc_mem_free(expr);
						osc_expr_free(f);
					}
				}
			}
		}
	}
	osc_bndl_it_s_destroy(bit);
	return 0;
}

int osc_expr_getArg(t_osc_expr_arg *arg, long *len, char **oscbndl, t_osc_atom_ar_u **out){
	switch(arg->type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		{
			*out = osc_atom_array_u_alloc(1);
				
			t_osc_atom_u *a = osc_atom_array_u_get(*out, 0);
			osc_atom_u_copy(&a, arg->arg.atom);
		}
		return 0;
	case OSC_EXPR_ARG_TYPE_EXPR:
		{
			t_osc_err e = osc_expr_eval(arg->arg.expr, len, oscbndl, out);
			return e;
		}
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		{
			if(*oscbndl && *len > 0){
				t_osc_msg_ar_s *msg_ar = NULL;
				osc_bundle_s_lookupAddress(*len, *oscbndl, arg->arg.osc_address, &msg_ar, 1);
				if(msg_ar){
					t_osc_msg_s *m = osc_message_array_s_get(msg_ar, 0);
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
					osc_message_array_s_free(msg_ar);
					return 0;
				}else{
					*out = NULL;
					return 0;
				}
			}
			return 1;
		}
	}
	return 1; // this really shouldn't happen unless there's a bug somewhere
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

t_osc_expr *osc_expr_makeFuncObjFromOSCMsg_s(t_osc_msg_s *msg, int argoffset){
	char *buf = NULL;
	long len = 0;
	osc_message_s_formatArgs(msg, &len, &buf, argoffset);
	t_osc_expr *f = NULL;
	osc_expr_parser_parseString(buf, &f);
	return f;
}

t_osc_expr_rec *osc_expr_lookupFunction(char *name){
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

/*
  t_osc_expr_const_rec *osc_expr_lookupConstant(char *name){
  t_osc_expr_const_rec *rec = NULL;
  int i;
  for(i = 0; i < sizeof(osc_expr_constsym) / sizeof(t_osc_expr_const_rec); i++){
  if(!strcmp(name, osc_expr_constsym[i].name)){
  rec = osc_expr_constsym + i;
  break;
  }
  }
  return rec;
  }
*/

int osc_expr_1arg_dbl(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
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

int osc_expr_2arg_dbl_dbl(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
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

int osc_expr_2arg(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
	uint32_t argc0 = osc_atom_array_u_getLen(argv[0]);
	uint32_t argc1 = osc_atom_array_u_getLen(argv[1]);
	uint32_t min_argc = argc0, max_argc = argc1;
	if(argc0 > argc1){
		min_argc = argc1, max_argc = argc0;
	}
	int i;
	void  (*func)(t_osc_atom_u*,t_osc_atom_u*,t_osc_atom_u**) = (void (*)(t_osc_atom_u*,t_osc_atom_u*,t_osc_atom_u**))(f->rec->extra);
	if(argc0 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			func(osc_atom_array_u_get(argv[0], 0), osc_atom_array_u_get(argv[1], i), &a);
		}
		return 0;
	}else if(argc1 == 1){
		*out = osc_atom_array_u_alloc(max_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < max_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			func(osc_atom_array_u_get(argv[0], i), osc_atom_array_u_get(argv[1], 0), &a);
		}
		return 0;
	}else{
		*out = osc_atom_array_u_alloc(min_argc);
			
		osc_atom_array_u_clear(*out);
		for(i = 0; i < min_argc; i++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, i);
			func(osc_atom_array_u_get(argv[0], i), osc_atom_array_u_get(argv[1], i), &a);
		}
		return 0;
	}
}

// wrappers for infix ops
void osc_expr_add(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1){
		osc_atom_u_copy(result, f2);
		return;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		char *sp1 = osc_atom_u_getStringPtr(f1);
		char *sp2 = osc_atom_u_getStringPtr(f2);
		char buf[strlen(sp1) + strlen(sp2) + 1];
		sprintf(buf, "%s%s", sp1, sp2);
		osc_atom_u_setString(*result, buf);
	}else if(tt1 == 's' || tt2 == 's'){
		osc_atom_u_setFalse(*result);
	}else if(tt1 == 'f' || tt2 == 'f' || tt1 == 'd' || tt2 == 'd'){
		osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) + osc_atom_u_getDouble(f2));
	}else{
		osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) + osc_atom_u_getInt32(f2));
	}
	return;
}

void osc_expr_subtract(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1){
		osc_atom_u_copy(result, f2);
		return;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
		osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) - osc_atom_u_getDouble(f2));
	}else{
		osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) - osc_atom_u_getInt32(f2));
	}
	return;
}

void osc_expr_multiply(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1){
		osc_atom_u_copy(result, f2);
		return;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
		double d1 = osc_atom_u_getDouble(f1);
		double d2 = osc_atom_u_getDouble(f2);
		double r = d1 * d2;
		osc_atom_u_setDouble(*result, r);
	}else{
		osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) * osc_atom_u_getInt32(f2));
	}
	return;
}

void osc_expr_divide(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1){
		osc_atom_u_copy(result, f2);
		return;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
		osc_atom_u_setDouble(*result, osc_atom_u_getDouble(f1) / osc_atom_u_getDouble(f2));
	}else{
		osc_atom_u_setInt32(*result, osc_atom_u_getInt32(f1) / osc_atom_u_getInt32(f2));
	}
	return;
}

void osc_expr_lt(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret < 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setFalse(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) < osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_lte(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret <= 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setFalse(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) <= osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_gt(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret > 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setFalse(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) > osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_gte(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret >= 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setFalse(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) >= osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_eq(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret == 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setFalse(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) == osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_neq(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	if(tt1 == 's' && tt2 == 's'){
		int ret = strcmp(osc_atom_u_getStringPtr(f1), osc_atom_u_getStringPtr(f2));
		osc_atom_u_setBool(*result, ret != 0);
	}else if((tt1 == 's') || (tt2 == 's')){
		osc_atom_u_setTrue(*result);
	}else{
		osc_atom_u_setBool(*result, osc_atom_u_getDouble(f1) != osc_atom_u_getDouble(f2));
	}
	return;
}

void osc_expr_and(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	if(!f1 || !f2){
		osc_atom_u_setFalse(*result);
		return;
	}
	osc_atom_u_setBool(*result, osc_atom_u_getBool(f1) && osc_atom_u_getBool(f2));
	return;
}

void osc_expr_or(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result){
	int ff1 = 0;
	int ff2 = 0;
	if(f1){
		ff1 = osc_atom_u_getBool(f1);
	}
	if(f2){
		ff2 = osc_atom_u_getBool(f2);
	}
	osc_atom_u_setBool(*result, ff1 || ff2);
	return;
}

double _osc_expr_fmod(double x, double m)
{
	return x - m * _osc_expr_sign(m) * floor(x / fabs(m));
}

void osc_expr_mod(t_osc_atom_u *f1, t_osc_atom_u *f2, t_osc_atom_u **result)
{
	if(!f1){
		osc_atom_u_setInt32(*result, 0);
		return;
	}
	if(!f2){
		osc_atom_u_copy(result, f1);
		return;
	}
	/*
	  char tt1 = osc_atom_u_getTypetag(f1), tt2 = osc_atom_u_getTypetag(f2);
	  if(tt1 == 'f' || tt1 == 'd' || tt2 == 'f' || tt2 == 'd'){
	  double ff1 = osc_atom_u_getDouble(f1), ff2 = osc_atom_u_getDouble(f2);
	  if(ff2 == 0){
	  osc_atom_u_copy(result, f1);
	  return;
	  }
	  osc_atom_u_setDouble(*result, fmod(ff1, ff2));
	  }else{
	  int32_t ff1 = osc_atom_u_getInt32(f1), ff2 = osc_atom_u_getInt32(f2);
	  if(ff2 == 0){
	  osc_atom_u_copy(result, f1);
	  return;
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
			return;
		}
		osc_atom_u_setDouble(*result, m);
	}else{
		if(ff2 == 0){
			osc_atom_u_copy(result, f1);
			return;
		}
		osc_atom_u_setInt32(*result, (int32_t)m);
	}
	return;
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

int osc_expr_get_index(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
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
				return 1;
			}
			t_osc_atom_u *r = osc_atom_array_u_get(*out, k);
			osc_atom_u_copy(&r, osc_atom_array_u_get(argv[0], l));
			k++;
		}
	}
	//*out = result;
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
		for(j = 0; j < osc_atom_array_u_getLen(argv[j]); j++){
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

int osc_expr_concat(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int i, j = 0, k;
	long len = 0;
	for(i = 0; i < argc; i++){
		len += osc_atom_array_u_getLen(argv[i]);
	}
	*out = osc_atom_array_u_alloc(len);
		
	for(i = 0; i < argc; i++){
		for(k = 0; k < osc_atom_array_u_getLen(argv[i]); k++){
			t_osc_atom_u *a = osc_atom_array_u_get(*out, j);
			osc_atom_u_copy(&a, osc_atom_array_u_get(argv[i], k));
			j++;
		}
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

int osc_expr_list(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
{
	int outlen = 0;
	int i;
	for(i = 0; i < argc; i++){
		outlen += osc_atom_array_u_getLen(argv[i]);
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
 	double step = _osc_expr_sign(end - start);
 	if(argc > 2){
	 	step = osc_atom_u_getDouble(osc_atom_array_u_get(argv[2], 0));
		char tt = osc_atom_u_getTypetag(osc_atom_array_u_get(argv[2], 0));
		if(tt == 'f' || tt == 'd'){
			dblup = 1;
		}
 	}
 	if(_osc_expr_sign(end - start) != _osc_expr_sign(step)){
	 	return 0;
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

int osc_expr_interleave(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
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

int osc_expr_not(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out){
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
		case '#':
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
	double min = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0));
	double max = osc_atom_u_getDouble(osc_atom_array_u_get(argv[2], 0));
	long len = osc_atom_array_u_getLen(*argv);
	osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *result = *out;
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == '#'){
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
		if(type == 'f' || type == 'd'){
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
	double min_in = osc_atom_u_getDouble(osc_atom_array_u_get(argv[1], 0));
	double max_in = osc_atom_u_getDouble(osc_atom_array_u_get(argv[2], 0));
	double min_out = osc_atom_u_getDouble(osc_atom_array_u_get(argv[3], 0));
	double max_out = osc_atom_u_getDouble(osc_atom_array_u_get(argv[4], 0));
	double m = (max_out - min_out) / (max_in - min_in);
	float b = (min_out - (m * min_in));
	long len = osc_atom_array_u_getLen(*argv);
	*out = osc_atom_array_u_alloc(len);
		
	t_osc_atom_ar_u *result = *out;
	int i;
	for(i = 0; i < len; i++){
		char type = osc_atom_u_getTypetag(osc_atom_array_u_get(*argv, i));
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == '#'){
			t_osc_atom_u *a = osc_atom_array_u_get(result, i);
			osc_atom_u_copy(&a, osc_atom_array_u_get(*argv, i));
			continue;
		}
		double val = osc_atom_u_getDouble(osc_atom_array_u_get(*argv, i));
		val = m * val + b;
		if(type == 'f' || type == 'd'){
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
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == '#'){
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
		if(type == 's' || type == 'T' || type == 'F' || type == 'N' || type == 'b' || type == '#'){
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

int osc_expr_map(t_osc_expr *f, int argc, t_osc_atom_ar_u **argv, t_osc_atom_ar_u **out)
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
	osc_atom_u_getString(src, &s);
	if(s){
		osc_atom_u_setString(dest, s);
		osc_mem_free(s);
		return 0;
	}else{
		return 1;
	}
}

t_osc_expr *osc_expr_alloc(void){
	t_osc_expr *expr = (t_osc_expr *)osc_mem_alloc(sizeof(t_osc_expr));
	memset(expr, '\0', sizeof(t_osc_expr));
	return expr;
}

t_osc_expr_arg *osc_expr_arg_alloc(void){
	t_osc_expr_arg *arg = (t_osc_expr_arg *)osc_mem_alloc(sizeof(t_osc_expr_arg));
	memset(arg, '\0', sizeof(t_osc_expr_arg));
	return arg;
}

void osc_expr_free(t_osc_expr *e){
	t_osc_expr *ee = e;
	while(ee){
		t_osc_expr *next = ee->next;
		osc_expr_arg_free(ee->argv);
		osc_mem_free(ee);
		ee = next;
	}
}

t_osc_expr *osc_expr_copy(t_osc_expr *e){
	t_osc_expr *copy = osc_expr_alloc();
	copy->rec = e->rec;
	copy->argc = e->argc;
	t_osc_expr_arg *arg = e->argv;
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
	return copy;
}

void osc_expr_appendExpr(t_osc_expr *e, t_osc_expr *expr_to_append){
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

void osc_expr_arg_free(t_osc_expr_arg *a){
	if(!a){
		return;
	}
	osc_expr_arg_free(a->next);
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
	}
	osc_mem_free(a);
}

void osc_expr_setRec(t_osc_expr *e, t_osc_expr_rec *rec){
	e->rec = rec;
}

t_osc_expr_rec *osc_expr_getRec(t_osc_expr *e){
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

t_osc_expr_arg *osc_expr_getArgs(t_osc_expr *e){
	return e->argv;
}

long osc_expr_getArgCount(t_osc_expr *e){
	return e->argc;
}

void osc_expr_setNext(t_osc_expr *e, t_osc_expr *next){
	e->next = next;
}

t_osc_expr *osc_expr_next(t_osc_expr *e){
	return e->next;
}

void osc_expr_arg_setOSCAtom(t_osc_expr_arg *a, t_osc_atom_u *atom){
	a->arg.atom = atom;
	a->type = OSC_EXPR_ARG_TYPE_ATOM;
}

void osc_expr_arg_setExpr(t_osc_expr_arg *a, t_osc_expr *e){
	a->arg.expr = e;
	a->type = OSC_EXPR_ARG_TYPE_EXPR;
}

void osc_expr_arg_setOSCAddress(t_osc_expr_arg *a, char *osc_address){
	a->arg.osc_address = osc_address;
	a->type = OSC_EXPR_ARG_TYPE_OSCADDRESS;
}

int osc_expr_arg_getType(t_osc_expr_arg *a){
	return a->type;
}

t_osc_atom_u *osc_expr_arg_getOSCAtom(t_osc_expr_arg *a){
	return a->arg.atom;
}

t_osc_expr *osc_expr_arg_getExpr(t_osc_expr_arg *a)
{
	return a->arg.expr;
}

char *osc_expr_arg_getOSCAddress(t_osc_expr_arg *a)
{
	return a->arg.osc_address;
}

t_osc_err osc_expr_arg_copy(t_osc_expr_arg **dest, t_osc_expr_arg *src)
{
	if(!(*dest)){
		*dest = osc_expr_arg_alloc();
	}
	t_osc_expr_arg *copy = *dest;
	copy->type = src->type;
	switch(src->type){
	case OSC_EXPR_ARG_TYPE_ATOM:
		osc_atom_u_copy(&(copy->arg.atom), src->arg.atom);
		break;
	case OSC_EXPR_ARG_TYPE_EXPR:
		copy->arg.expr = osc_expr_copy(src->arg.expr);
		break;
	case OSC_EXPR_ARG_TYPE_OSCADDRESS:
		{
			int len = strlen(src->arg.osc_address) + 1;
			copy->arg.osc_address = osc_mem_alloc(len);
			memcpy(copy->arg.osc_address, src->arg.osc_address, len);
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
	char *ptr = buf;
	ptr += sprintf(ptr, "(%s ", fg->rec->name);
	t_osc_expr_arg *f_argv = fg->argv;
	while(f_argv){
		switch(f_argv->type){
		case OSC_EXPR_ARG_TYPE_ATOM:
			{
				t_osc_atom_u *a = f_argv->arg.atom;
				switch(osc_atom_u_getTypetag(a)){
				case 'i':
					ptr += sprintf(ptr, "%"PRId32" ", osc_atom_u_getInt32(a));
					break;
				case 'h':
					ptr += sprintf(ptr, "%"PRIu32" ", osc_atom_u_getUInt32(a));
					break;
				case 'I':
					ptr += sprintf(ptr, "%"PRId64" ", osc_atom_u_getInt64(a));
					break;
 				case 'H':
					ptr += sprintf(ptr, "%"PRIu64" ", osc_atom_u_getUInt64(a));
					break;
				case 'd':
				case 'f':
					ptr += sprintf(ptr, "%f ", osc_atom_u_getDouble(a));
					break;
				case 's':
					ptr += sprintf(ptr, "%s ", osc_atom_u_getStringPtr(a));
					break;
				}
			}
			break;
		case OSC_EXPR_ARG_TYPE_OSCADDRESS:
			ptr += sprintf(ptr, "%s ", f_argv->arg.osc_address);
			break;
		case OSC_EXPR_ARG_TYPE_EXPR:
			ptr += osc_expr_format_r(f_argv->arg.expr, ptr);
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
