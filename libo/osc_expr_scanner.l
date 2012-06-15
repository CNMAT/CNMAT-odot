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

/** 	\file osc_expr_scanner.l
	\author John MacCallum

*/
%{
#include "osc_expr_parser.h"
#include "osc_expr.h"

int colnum;

#define YY_USER_INIT {yylineno = 0;colnum = 0; yylloc->first_line = 0; yylloc->first_column = 0; yylloc->last_column = 0; yylloc->last_line = 0;}
#define YY_USER_ACTION {yylloc->first_line = yylineno; yylloc->first_column = colnum; colnum=colnum+yyleng; yylloc->last_column = colnum; yylloc->last_line = yylineno;}

int osc_expr_scanner_wrap(yyscan_t scanner){
	return 1;
}

%}

dseq      ([[:digit:]]+)
dseq_opt  ([[:digit:]]*)
frac      (({dseq_opt}"."{dseq})|{dseq}".")
exp       ([eE][+-]?{dseq})
exp_opt   ({exp}?)
fsuff     [flFL]
fsuff_opt ({fsuff}?)
hpref     (0[xX])
hdseq     ([[:xdigit:]]+)
hdseq_opt ([[:xdigit:]]*)
hfrac     (({hdseq_opt}"."{hdseq})|({hdseq}"."))
bexp      ([pP][+-]?{dseq})
dfc       (({frac}{exp_opt}{fsuff_opt})|({dseq}{exp}{fsuff_opt}))
hfc       (({hpref}{hfrac}{bexp}{fsuff_opt})|({hpref}{hdseq}{bexp}{fsuff_opt}))
c99_floating_point_constant  ({dfc}|{hfc})

quoted_string [^\"\\]
oscaddress \/[^\+\-\*%\^!=\[\]:;,\?<>\&\|\\\{\}\(\)\"\' \n\t]+
reserved_chars \+|-|\*|\/|%|^|!|=|\[|\]|:|;|\?|<|>|\&|\||\\|\{|\}|\(|\)

%option reentrant
%option bison-bridge
%option bison-locations

%x quote quote_function escape

%%
%{
	if(!(*started)){
		*started = 1;
		return startcond;
	}
%}

\+|-|\*|\/|%|^|!|=|\[|\]|:|\?|<|> {
	return *yytext;
}
\<= {
	return OSC_EXPR_LTE;
}
>= {
	return OSC_EXPR_GTE;
}
!= {
	return OSC_EXPR_NEQ;
}
== {
	return OSC_EXPR_EQ;
}
\&\& {
	return OSC_EXPR_AND;
}
\|\| {
	return OSC_EXPR_OR;
}
\+\+ {
	return OSC_EXPR_INC;
}
\-\- {
	return OSC_EXPR_DEC;
}
\+= {
	return OSC_EXPR_PLUSEQ;
}
\-= {
	return OSC_EXPR_MINUSEQ;
}
\*= {
	return OSC_EXPR_MULTEQ;
}
\/= {
	return OSC_EXPR_DIVEQ;
}
%= {
	return OSC_EXPR_MODEQ;
}
\^= {
	return OSC_EXPR_POWEQ;
}
\?\? {
	return OSC_EXPR_DBLQMARK;
}
\?\?= {
	return OSC_EXPR_DBLQMARKEQ;
}

,|;|\(|\)|\{|\}				{
						return *yytext;
					}
\[\[					{
						//printf("open double brackets\n");
						return OPEN_DBL_BRKTS;
					}
\]\]					{
						//printf("close double brackets\n");
						return CLOSE_DBL_BRKTS;
					}

quote[[:space:]]*\( {
	BEGIN(quote_function);
	}

<quote_function>.* {
	char *start = yytext;
	char *end = start;
	int np = 1;
	while(np){
		if(*end == ')'){
			np--;
		}else if(*end == '('){
			np++;
		}
		end++;
	}
	yyless(end - start);
	if(alloc_atom){
		yylval->atom = osc_atom_u_alloc();
	}
	*(end - 1) = '\0';
	osc_atom_u_setString(yylval->atom, yytext);
	*(end - 1) = ')';
	BEGIN(0);
	return OSC_EXPR_QUOTED_EXPR;
	}

\" {
	BEGIN(quote);
}
	/*
	<quote>\/[^\+\-\*%\^!=\[\]:;,\?<>\&\|\\\{\}\(\) \n\t\"\']+  {
	if(*buf){
		*buf = osc_mem_resize(*buf, *buflen + yyleng + 1);
		*buflen += yyleng + 1;
		strcat(*buf, yytext);
	}else{
		//char *copy = osc_mem_alloc(yyleng + 1);
		//strncpy(copy, yytext, yyleng + 1);
		t_osc_atom_u *a = osc_atom_u_alloc();
		osc_atom_u_setString(a, yytext);
		yylval->atom = a;
		return OSC_EXPR_OSCADDRESS;
	}
	}
	*/
<quote>[^\"]+ { 
	if(*buf){
		*buf = osc_mem_resize(*buf, *buflen + yyleng + 1);
		*buflen += yyleng + 1;
		strcat(*buf, yytext);
	}else{
		//char *copy = osc_mem_alloc(yyleng + 1);
		//strncpy(copy, yytext, yyleng + 1);
		t_osc_atom_u *a = osc_atom_u_alloc();
		osc_atom_u_setString(a, yytext);
		yylval->atom = a;
		return OSC_EXPR_STRING;
	}
}

<quote>\" {
	BEGIN(0);
	if(*buf){
		t_osc_atom_u *a = osc_atom_u_alloc();
		osc_atom_u_setStringPtr(a, *buf);
		osc_atom_u_setShouldFreePtr(a, 1);
		//yylval->string = *buf;
		*buf = NULL;
		*buflen = 0;
		return OSC_EXPR_STRING;
	}
}

<quote>{quoted_string}*\\. {
	if(*buf){
		*buflen += yyleng;
		*buf = osc_mem_resize(*buf, *buflen);
		strcat(*buf, yytext);
		(*buf)[*buflen - 3] = (*buf)[*buflen - 2];
		(*buf)[*buflen - 2] = '\0';
	}else{
		*buf = osc_mem_alloc(yyleng);
		memcpy(*buf, yytext, yyleng);
		*buflen = yyleng;
		(*buf)[*buflen - 2] = (*buf)[*buflen - 1];
		(*buf)[*buflen - 1] = '\0';
	}
}

(true|True|TRUE)			{
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setTrue(yylval->atom);
						return OSC_EXPR_NUM;
					}
(false|False|FALSE)			{
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setFalse(yylval->atom);
						return OSC_EXPR_NUM;
					}
(lambda|fn)				{
						return OSC_EXPR_LAMBDA;
					}

\/[^\+\-\*%\^!=\[\]:;,\?<>\&\|\\\{\}\(\) \n\t]+  {
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setString(yylval->atom, yytext);
						return OSC_EXPR_OSCADDRESS;
				 	}

[^0-9\+\-\*\/%\^!=\[\]:;,\?<>\&\|\\\{\}\(\) \n\t][^\+\-\*\/%\^!=\[\]:;,\?<>\&\|\\\{\}\(\) \n\t]* {
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setString(yylval->atom, yytext);
						return OSC_EXPR_STRING;
					}


;+|(;[[:space:]]*)+			{
						// attempt to get rid of repeated semicolons
						return ';';
					}
(-?([[:digit:]]{-}[0])[[:digit:]]*|0) 	{
						// int 
						char *endptr = NULL;
						int32_t i = strtol(yytext, &endptr, 0);
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setInt32(yylval->atom, i);
						return OSC_EXPR_NUM;
					}
-?{c99_floating_point_constant}		{
						// floating point number
						char *endptr = NULL;
						double f = strtod(yytext, &endptr);
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						osc_atom_u_setDouble(yylval->atom, f);
						return OSC_EXPR_NUM;
					}

	/*
	\"[[:space:]]+\"			{
						if(alloc_atom){
							yylval->atom = osc_atom_u_alloc();
						}
						yytext[yyleng - 1] = '\0';
						osc_atom_u_setString(yylval->atom, yytext + 1);
						yytext[yyleng - 1] = '\"';
						return OSC_EXPR_STRING;
					}

	*/

[ \t\n]+	/* eat up whitespace */



%%
