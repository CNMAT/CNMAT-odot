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

/** 	\file osc_parser.y
	\author John MacCallum

*/
%{
#include <math.h>
#include <ctype.h>
#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif
#include "osc.h"
#include "osc_mem.h"
#include "osc_error.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_message_u.r"
#include "osc_atom_u.h"
#include "osc_parser.h"
#include "osc_scanner.h"

	//#define OSC_PARSER_DEBUG
#ifdef OSC_PARSER_DEBUG
#define PP(fmt, ...)printf("%d: "fmt, __LINE__, ##__VA_ARGS__)
#else
#define PP(fmt, ...)
#endif

%}

%code requires{
#include "osc.h"
#include "osc_error.h"

#define YY_DECL int osc_scanner_lex(YYSTYPE *yylval_param, YYLTYPE *yylloc_param, yyscan_t yyscanner, long *buflen, char **buf)

#ifndef __HAVE_OSC_PARSER_SUBST__
#define __HAVE_OSC_PARSER_SUBST__
typedef struct _osc_parser_subst{
	struct _osc_message_u *msg;
	int listitem;
	struct _osc_atom_u *osc_atom;
	int item_to_replace;
	struct _osc_parser_subst *next;
} t_osc_parser_subst;
#endif

#ifndef __HAVE_OSC_BNDL_LIST__
#define __HAVE_OSC_BNDL_LIST__
typedef struct _osc_parser_bndl_list{
	struct _osc_bundle_u *bndl;
	struct _osc_parser_bndl_list *next;
} t_osc_parser_bndl_list;
#endif

#ifndef __HAVE_OSC_PARSER_PARSESTRING__
#define __HAVE_OSC_PARSER_PARSESTRING__
t_osc_err osc_parser_parseString(long len, char *ptr, struct _osc_bundle_u **bndl, long *nsubs, t_osc_parser_subst **subs);
#endif
}

%{

int osc_parser_lex(YYSTYPE * yylval_param,YYLTYPE * yylloc_param ,yyscan_t yyscanner, long *buflen, char **buf){
	return osc_scanner_lex(yylval_param, yylloc_param, yyscanner, buflen, buf);
}

//int yyparse (t_osc_parser_bndl_list **bndl, t_osc_msg_u **msg, long *nsubs, t_osc_parser_subst **subs, void *scanner);


t_osc_err osc_parser_parseString(long len, char *ptr, t_osc_bndl_u **bndl, long *nsubs, t_osc_parser_subst **subs){
	yyscan_t scanner;
	osc_scanner_lex_init(&scanner);
	YY_BUFFER_STATE buf_state = osc_scanner__scan_string(ptr, scanner);
	osc_scanner_set_out(NULL, scanner);
	t_osc_msg_u *msg = NULL;
	t_osc_parser_bndl_list *bl = NULL;
	long buflen = 0;
	char *buf = NULL;
	int ret = osc_parser_parse(&bl, &msg, nsubs, subs, scanner, &buflen, &buf);
	osc_scanner__delete_buffer(buf_state, scanner);
	osc_scanner_lex_destroy(scanner);
	if(!ret){
		*bndl = bl->bndl;
	}
	if(bl){
		osc_mem_free(bl);
	}
	if(ret){
		return OSC_ERR_PARSER;
	}
	return OSC_ERR_NONE;
}

void yyerror (YYLTYPE *yylloc, t_osc_parser_bndl_list **bndl, t_osc_msg_u **msg, long *nsubs, t_osc_parser_subst **subs, void *scanner, long *buflen, char **buf, char const *e){
	printf("osc_parser: error: %s\n", e);
	//printf("%d: %s at %s\n", yylineno, e, yytext);
}

void osc_parser_substitution(t_osc_parser_subst **subs_list, t_osc_msg_u *msg, int listitem, t_osc_atom_u *osc_atom, int item_to_replace){
	t_osc_parser_subst *s = (t_osc_parser_subst *)osc_mem_alloc(sizeof(t_osc_parser_subst));
	s->msg = msg;
	s->listitem = listitem;
	s->osc_atom = osc_atom;
	s->item_to_replace = item_to_replace;
	s->next = *subs_list;
	*subs_list = s;
}

%}

%define "api.pure"
%locations
%require "2.4.2"


%parse-param{t_osc_parser_bndl_list **bndl}
%parse-param{t_osc_msg_u **msg}
%parse-param{long *nsubs}
%parse-param{t_osc_parser_subst **subs}
%parse-param{void *scanner}
%parse-param{long *buflen}
%parse-param{char **buf}

%lex-param{void *scanner}
%lex-param{long *buflen}
%lex-param{char **buf}

%union {
	double f;
	int32_t i;
	char c;
	char *string;
	char b;
	struct _osc_message_u *msg;
}

%token <f>OSCFLOAT 
%token <i>OSCINT DOLLARSUB OSCADDRESS_DOLLARSUB
%token <c>OSCCHAR
%token <string>STRING OSCADDRESS 
%token <b>OSCBOOL

%type <msg>arglist msg 

%%

bundle: {
		t_osc_parser_bndl_list *b = osc_mem_alloc(sizeof(t_osc_parser_bndl_list));
		b->bndl = osc_bundle_u_alloc();
		if(*bndl){
			PP("push BNDL %p->%p\n", b->bndl, (*bndl)->bndl);
 		}else{
			PP("push BNDL %p->%p\n", b->bndl, NULL);
 		}
		b->next = *bndl;
		*bndl = b;
	}
	| bundle msg {
		PP("pop MSG %p<-%p\n", *msg, (*msg)->next);
		PP("add MSG to BNDL %p := %p\n", (*bndl)->bndl, *msg);
		t_osc_msg_u *m = (*msg)->next;
		(*msg)->next = NULL;
		osc_bundle_u_addMsg((*bndl)->bndl, *msg);
		*msg = m;
	}
;

arglist:
	STRING {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add STRING to MSG %p := %s\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendStringPtr(*msg, $1);
  	}
	| OSCADDRESS {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add OSCADDRESS to MSG %p := %s\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendStringPtr(*msg, $1);
	}
	| OSCFLOAT {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add OSCFLOAT to MSG %p := %f\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendDouble(*msg, $1);
	}
	| OSCINT {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add OSCINT to MSG %p := %d\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendInt32(*msg, $1);

	  }
	| OSCCHAR {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add OSCCHAR to MSG %p := %c\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendInt8(*msg, $1);

	  }
	| OSCBOOL {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add OSCBOOL to MSG %p := %c\n", m, $1);
		m->next = *msg;
		*msg = m;
		osc_message_u_appendBool(*msg, (int)$1);
	  }
	| DOLLARSUB {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("push MSG %p->%p\n", m, *msg);
		PP("add DOLLARSUB to MSG %p := %d\n", m, $1);
		m->next = *msg;
		*msg = m;
		char buf[8];
		sprintf(buf, "$%d", $1);
		t_osc_atom_u *a = osc_message_u_appendString(*msg, buf);
		osc_parser_substitution(subs, *msg, $1, a, (*msg)->argc);
		(*nsubs)++;
	}
	| arglist STRING {
		PP("add STRING to MSG %p := %s\n", *msg, $2);
		osc_message_u_appendStringPtr(*msg, $2);
 	}
	| arglist OSCADDRESS {
		PP("add OSCADDRESS to MSG %p := %s\n", *msg, $2);
		osc_message_u_appendStringPtr(*msg, $2);
 	}
	| arglist OSCFLOAT {
		PP("add OSCFLOAT to MSG %p := %f\n", *msg, $2);
		osc_message_u_appendDouble(*msg, $2);
 	}
	| arglist OSCINT {
		PP("add OSCINT to MSG %p := %d\n", *msg, $2);
		osc_message_u_appendInt32(*msg, $2);
 	}
	| arglist OSCCHAR {
		PP("add OSCCHAR to MSG %p := %c\n", *msg, $2);
		osc_message_u_appendInt8(*msg, $2);
 	}
	| arglist OSCBOOL {
		PP("add OSCCHAR to MSG %p := %c\n", *msg, $2);
		osc_message_u_appendBool(*msg, (int)$2);
 	}
	| arglist DOLLARSUB {
		PP("add DOLLARSUB to MSG %p := %d\n", *msg, $2);
		char buf[8];
		sprintf(buf, "$%d", $2);
		t_osc_atom_u *a = osc_message_u_appendString(*msg, buf);
		osc_parser_substitution(subs, *msg, $2, a, (*msg)->argc);
		(*nsubs)++;
 	}
	| '[' bundle ']' {
		//if(!(*msg)){
			t_osc_msg_u *m = osc_message_u_alloc();
			PP("push MSG %p->%p\n", m, *msg);
			m->next = *msg;
			*msg = m;
			//}
		PP("add BNDL to MSG %p := %p\n", *msg, (*bndl)->bndl);
		long len = 0;
		char *ptr = NULL;
		osc_bundle_u_serialize((*bndl)->bndl, &len, &ptr);
		if(ptr){
			osc_message_u_appendBndl(*msg, len, ptr);
			osc_mem_free(ptr);
		}
		PP("pop BNDL %p<-%p\n", (*bndl), (*bndl)->next);
		t_osc_parser_bndl_list *b = (*bndl)->next;
		osc_bundle_u_free((*bndl)->bndl);
		osc_mem_free(*bndl);
		*bndl = b;
	}
	| '[' '\n' bundle ']' {
		//if(!(*msg)){
			t_osc_msg_u *m = osc_message_u_alloc();
			PP("push MSG %p->%p\n", m, *msg);
			m->next = *msg;
			*msg = m;
			//}
		PP("add BNDL to MSG %p := %p\n", *msg, (*bndl)->bndl);
		long len = 0;
		char *ptr = NULL;
		osc_bundle_u_serialize((*bndl)->bndl, &len, &ptr);
		if(ptr){
			osc_message_u_appendBndl(*msg, len, ptr);
			osc_mem_free(ptr);
		}
		PP("pop BNDL %p<-%p\n", (*bndl), (*bndl)->next);
		t_osc_parser_bndl_list *b = (*bndl)->next;
		osc_bundle_u_free((*bndl)->bndl);
		osc_mem_free(*bndl);
		*bndl = b;
	}
	| arglist '[' bundle ']' {
		if(!(*msg)){
			t_osc_msg_u *m = osc_message_u_alloc();
			PP("push MSG %p->%p\n", m, *msg);
			m->next = *msg;
			*msg = m;
		}
		PP("add BNDL to MSG %p := %p\n", *msg, (*bndl)->bndl);
		long len = 0;
		char *ptr = NULL;
		osc_bundle_u_serialize((*bndl)->bndl, &len, &ptr);
		if(ptr){
			osc_message_u_appendBndl(*msg, len, ptr);
			osc_mem_free(ptr);
		}
		PP("pop BNDL %p<-%p\n", (*bndl), (*bndl)->next);
		t_osc_parser_bndl_list *b = (*bndl)->next;
		osc_bundle_u_free((*bndl)->bndl);
		osc_mem_free(*bndl);
		*bndl = b;
	}
	| arglist '[' '\n' bundle ']' {
		if(!(*msg)){
			t_osc_msg_u *m = osc_message_u_alloc();
			PP("push MSG %p->%p\n", m, *msg);
			m->next = *msg;
			*msg = m;
		}
		PP("add BNDL to MSG %p := %p\n", *msg, (*bndl)->bndl);
		long len = 0;
		char *ptr = NULL;
		osc_bundle_u_serialize((*bndl)->bndl, &len, &ptr);
		if(ptr){
			osc_message_u_appendBndl(*msg, len, ptr);
			osc_mem_free(ptr);
		}
		PP("pop BNDL %p<-%p\n", (*bndl), (*bndl)->next);
		t_osc_parser_bndl_list *b = (*bndl)->next;
		osc_bundle_u_free((*bndl)->bndl);
		osc_mem_free(*bndl);
		*bndl = b;
	}
;

msg: 
	OSCADDRESS arglist '\n' {
		PP("set ADDRESS %p := %s\n", *msg, $1);
		osc_message_u_setAddressPtr(*msg, $1, NULL);
 	}
	| OSCADDRESS '\n' {
		t_osc_msg_u *m = osc_message_u_alloc();
		PP("set ADDRESS %p := %s\n", *msg, $1);
		PP("push MSG %p->%p\n", m, *msg);
		PP("have message with address and no arguments\n");
		m->next = *msg;
		*msg = m;
		osc_message_u_setAddressPtr(*msg, $1, NULL);
 	}
	| OSCADDRESS_DOLLARSUB arglist '\n' {
		char buf[8];
		sprintf(buf, "/$%d", $1);
		PP("set ADDRESS %p := %s\n", *msg, buf);
		osc_message_u_setAddressPtr(*msg, buf, NULL);
		osc_parser_substitution(subs, *msg, $1, NULL, 0);
		(*nsubs)++;
 	}
;
