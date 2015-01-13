/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2013, The Regents of
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

#define APPEND
#ifdef APPEND
#define OMAX_DOC_NAME "o.append"
#define OMAX_DOC_SHORT_DESC "Append an OSC address to every OSC address in a bundle"
#define OMAX_DOC_LONG_DESC "o.append takes an OSC address as an argument and appends it to every address in the bundle."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet with argument appended"}
#define OMAX_DOC_SEEALSO (char *[]){"o.prepend", "prepend", "append"}
#endif
#include "../o.prepend/o.prepend.c"
