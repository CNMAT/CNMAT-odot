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

#ifndef YY_OSC_EXPR_PARSER_OSC_EXPR_PARSER_H_INCLUDED
# define YY_OSC_EXPR_PARSER_OSC_EXPR_PARSER_H_INCLUDED
/* Enabling traces.  */
#ifndef YYDEBUG
# define YYDEBUG 0
#endif
#if YYDEBUG
extern int osc_expr_parser_debug;
#endif
/* "%code requires" blocks.  */
/* Line 2058 of yacc.c  */
#line 64 "osc_expr_parser.y"

#include "osc.h"
#include "osc_mem.h"
#include "osc_atom_u.h"
#include "osc_expr.h"

#ifdef __cplusplus
#undef YY_DECL
#define YY_DECL extern "C" int osc_expr_scanner_lex(YYSTYPE * yylval_param, YYLTYPE * yylloc_param , yyscan_t yyscanner, int alloc_atom, long *buflen, char **buf, int startcond, int *started)
#else
#undef YY_DECL
#define YY_DECL int osc_expr_scanner_lex(YYSTYPE * yylval_param, YYLTYPE * yylloc_param , yyscan_t yyscanner, int alloc_atom, long *buflen, char **buf, int startcond, int *started)
#endif
	//t_osc_err osc_expr_parser_parseString(char *ptr, t_osc_expr **f);
#ifdef __cplusplus
extern "C"{
#endif
t_osc_err osc_expr_parser_parseExpr(const char *ptr, t_osc_expr **f);
t_osc_err osc_expr_parser_parseFunction(char *ptr, t_osc_expr_rec **f);
#ifdef __cplusplus
}
#endif


/* Line 2058 of yacc.c  */
#line 69 "osc_expr_parser.h"

/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     OSC_EXPR_LAMBDA = 258,
     OSC_EXPR_OSCADDRESS = 259,
     OSC_EXPR_STRING = 260,
     OSC_EXPR_NUM = 261,
     OSC_EXPR_POWEQ = 262,
     OSC_EXPR_MODEQ = 263,
     OSC_EXPR_DIVEQ = 264,
     OSC_EXPR_MULTEQ = 265,
     OSC_EXPR_MINUSEQ = 266,
     OSC_EXPR_PLUSEQ = 267,
     OSC_EXPR_DBLQMARKEQ = 268,
     OSC_EXPR_DBLQMARK = 269,
     OSC_EXPR_TERNARY_COND = 270,
     OSC_EXPR_OR = 271,
     OSC_EXPR_AND = 272,
     OSC_EXPR_NEQ = 273,
     OSC_EXPR_EQ = 274,
     OSC_EXPR_GTE = 275,
     OSC_EXPR_LTE = 276,
     OSC_EXPR_UMINUS = 277,
     OSC_EXPR_UPLUS = 278,
     OSC_EXPR_PREFIX_DEC = 279,
     OSC_EXPR_PREFIX_INC = 280,
     CLOSE_DBL_BRKTS = 281,
     OPEN_DBL_BRKTS = 282,
     OSC_EXPR_QUOTED_EXPR = 283,
     OSC_EXPR_FUNC_CALL = 284,
     OSC_EXPR_DEC = 285,
     OSC_EXPR_INC = 286,
     START_EXPNS = 287,
     START_FUNCTION = 288
   };
#endif


#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef union YYSTYPE
{
/* Line 2058 of yacc.c  */
#line 541 "osc_expr_parser.y"

	t_osc_atom_u *atom;
	t_osc_expr *expr;
	t_osc_expr_rec *func;
	t_osc_expr_arg *arg;


/* Line 2058 of yacc.c  */
#line 125 "osc_expr_parser.h"
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
int osc_expr_parser_parse (void *YYPARSE_PARAM);
#else
int osc_expr_parser_parse ();
#endif
#else /* ! YYPARSE_PARAM */
#if defined __STDC__ || defined __cplusplus
int osc_expr_parser_parse (t_osc_expr **exprstack, t_osc_expr **tmp_exprstack, t_osc_expr_rec **rec, void *scanner, char *input_string, long *buflen, char **buf, int startcond, int *started);
#else
int osc_expr_parser_parse ();
#endif
#endif /* ! YYPARSE_PARAM */

#endif /* !YY_OSC_EXPR_PARSER_OSC_EXPR_PARSER_H_INCLUDED  */
