/* A Bison parser, made by GNU Bison 2.7.  */

/* Bison interface for Yacc-like parsers in C
   
      Copyright (C) 1984, 1989-1990, 2000-2012 Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */

#ifndef YY_OSC_PARSER_OSC_PARSER_H_INCLUDED
# define YY_OSC_PARSER_OSC_PARSER_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int osc_parser_debug;
#endif
/* "%code requires" blocks.  */
/* Line 2058 of yacc.c  */
#line 63 "osc_parser.y"

#include "osc.h"
#include "osc_error.h"
#include "osc_message_u.h"

#ifdef __cplusplus
#define YY_DECL extern "C" int osc_scanner_lex(YYSTYPE *yylval_param, YYLTYPE *yylloc_param, yyscan_t yyscanner, long *buflen, char **buf)
#else
#define YY_DECL int osc_scanner_lex(YYSTYPE *yylval_param, YYLTYPE *yylloc_param, yyscan_t yyscanner, long *buflen, char **buf)
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
#ifdef __cplusplus
extern "C"{
#endif
t_osc_err osc_parser_parseString(long len, char *ptr, struct _osc_bundle_u **bndl);
#ifdef __cplusplus
}
#endif
#endif


/* Line 2058 of yacc.c  */
#line 78 "osc_parser.h"

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     OSCFLOAT = 258,
     OSCINT32 = 259,
     DOLLARSUB = 260,
     OSCADDRESS_DOLLARSUB = 261,
     OSCUINT32 = 262,
     OSCINT64 = 263,
     OSCUINT64 = 264,
     OSCCHAR = 265,
     STRING = 266,
     OSCADDRESS = 267,
     OSCBOOL = 268,
     OSCTIMETAG = 269
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 2058 of yacc.c  */
#line 146 "osc_parser.y"

	double f;
	int32_t i;
	uint32_t I;
	int64_t h;
	uint64_t H;
	char c;
	char *string;
	char b;
	t_osc_timetag t;
	struct _osc_message_u *msg;


/* Line 2058 of yacc.c  */
#line 121 "osc_parser.h"
} YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

#if ! defined YYLTYPE && ! defined YYLTYPE_IS_DECLARED
typedef struct YYLTYPE
{
  int first_line;
  int first_column;
  int last_line;
  int last_column;
} YYLTYPE;
# define yyltype YYLTYPE /* obsolescent; will be withdrawn */
# define YYLTYPE_IS_DECLARED 1
# define YYLTYPE_IS_TRIVIAL 1
#endif


#ifdef YYPARSE_PARAM
#if defined __STDC__ || defined __cplusplus
int osc_parser_parse (void *YYPARSE_PARAM);
#else
int osc_parser_parse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int osc_parser_parse (t_osc_parser_bndl_list **bndl, t_osc_msg_u **msg, void *scanner, long *buflen, char **buf);
#else
int osc_parser_parse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_OSC_PARSER_OSC_PARSER_H_INCLUDED  */
