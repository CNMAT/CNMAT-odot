/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009-12, The Regents of
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

#include "osc_typetag.h"

static char *osc_typetag_strings[] = {"unknown type: (decimal: 0)", "unknown type: (decimal: 1)", "unknown type: (decimal: 2)", "unknown type: (decimal: 3)", "unknown type: (decimal: 4)", "unknown type: (decimal: 5)", "unknown type: (decimal: 6)", "unknown type: (decimal: 7)", "unknown type: (decimal: 8)", "unknown type: (decimal: 9)", "unknown type: (decimal: 10)", "unknown type: (decimal: 11)", "unknown type: (decimal: 12)", "unknown type: (decimal: 13)", "unknown type: (decimal: 14)", "unknown type: (decimal: 15)", "unknown type: (decimal: 16)", "unknown type: (decimal: 17)", "unknown type: (decimal: 18)", "unknown type: (decimal: 19)", "unknown type: (decimal: 20)", "unknown type: (decimal: 21)", "unknown type: (decimal: 22)", "unknown type: (decimal: 23)", "unknown type: (decimal: 24)", "unknown type: (decimal: 25)", "unknown type: (decimal: 26)", "unknown type: (decimal: 27)", "unknown type: (decimal: 28)", "unknown type: (decimal: 29)", "unknown type: (decimal: 30)", "unknown type: (decimal: 31)", "unknown type: (decimal: 32)", "unknown type: '!'", "unknown type: '\"'", "unknown type: '#'", "unknown type: '$'", "unknown type: '\%'", "unknown type: '&'", "unknown type: '''", "unknown type: '('", "unknown type: ')'", "unknown type: '*'", "unknown type: '+'", "unknown type: ','", "unknown type: '-'", "bundle", "unknown type: '/'", "unknown type: '0'", "unknown type: '1'", "unknown type: '2'", "unknown type: '3'", "unknown type: '4'", "unknown type: '5'", "unknown type: '6'", "unknown type: '7'", "unknown type: '8'", "unknown type: '9'", "unknown type: ':'", "unknown type: ';'", "unknown type: '<'", "unknown type: '='", "unknown type: '>'", "unknown type: '?'", "unknown type: '@'", "unknown type: 'A'", "unknown type: 'B'", "unsigned int8", "unknown type: 'D'", "unknown type: 'E'", "false", "unknown type: 'G'", "unsigned int64", "unsigned int32", "unknown type: 'J'", "unknown type: 'K'", "unknown type: 'L'", "unknown type: 'M'", "null", "unknown type: 'O'", "unknown type: 'P'", "unknown type: 'Q'", "unknown type: 'R'", "unknown type: 'S'", "true", "unsigned int16", "unknown type: 'V'", "unknown type: 'W'", "unknown type: 'X'", "unknown type: 'Y'", "unknown type: 'Z'", "unknown type: '['", "unknown type: '\'", "unknown type: ']'", "unknown type: '^'", "unknown type: '_'", "unknown type: '`'", "unknown type: 'a'", "unknown type: 'b'", "int8", "float64", "unknown type: 'e'", "float32", "unknown type: 'g'", "int64", "int32", "unknown type: 'j'", "unknown type: 'k'", "unknown type: 'l'", "unknown type: 'm'", "unknown type: 'n'", "unknown type: 'o'", "unknown type: 'p'", "unknown type: 'q'", "unknown type: 'r'", "string", "unknown type: 't'", "int16", "unknown type: 'v'", "unknown type: 'w'", "unknown type: 'x'", "unknown type: 'y'", "unknown type: 'z'", "unknown type: '{'", "unknown type: '|'", "unknown type: '}'", "unknown type: '~'", "unknown type: (decimal: 127)"};


char *osc_typetag_str(int8_t tt)
{
	return osc_typetag_strings[tt];
}
