/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2009-11, The Regents of
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

/** 	\file omax_doc.h
	\author John MacCallum

*/

#ifndef __OMAX_DOC_H__
#define __OMAX_DOC_H__

#include "osc.h"
#include "ext.h"
#include "ext_obex.h"
#include "osc_message.h"
#include "osc_message_s.h"

#ifdef __cplusplus
extern "C" {
#endif

#ifndef OMAX_DOC_NAME
#define OMAX_DOC_NAME "<unknown>"
#endif

#ifndef OMAX_DOC_SHORT_DESC
#define OMAX_DOC_SHORT_DESC NULL
#endif

#ifndef OMAX_DOC_LONG_DESC
#define OMAX_DOC_LONG_DESC NULL
#endif

#ifndef OMAX_DOC_INLETS_DESC
#define OMAX_DOC_INLETS_DESC NULL
#ifdef OMAX_DOC_NINLETS
#undef OMAX_DOC_NINLETS
#endif
#define OMAX_DOC_NINLETS 0
#else
#define OMAX_DOC_NINLETS sizeof(OMAX_DOC_INLETS_DESC) / sizeof(char *)
#endif

#ifndef OMAX_DOC_OUTLETS_DESC
#define OMAX_DOC_OUTLETS_DESC NULL
#ifdef OMAX_DOC_NOUTLETS
#undef OMAX_DOC_NOUTLETS
#endif
#define OMAX_DOC_NOUTLETS 0
#else
#define OMAX_DOC_NOUTLETS sizeof(OMAX_DOC_OUTLETS_DESC) / sizeof(char *)
#endif

#ifndef OMAX_DOC_SEEALSO
#define OMAX_DOC_SEEALSO NULL
#ifdef OMAX_DOC_NUM_SEE_ALSO_REFS
#undef OMAX_DOC_NUM_SEE_ALSO_REFS
#endif
#define OMAX_DOC_NUM_SEE_ALSO_REFS 0
#else
#define OMAX_DOC_NUM_SEE_ALSO_REFS sizeof(OMAX_DOC_SEEALSO) / sizeof(char *)
#endif

#define omax_doc_outletDoc(outlet)			\
	_omax_doc_outletDoc(outlet,			\
			    OMAX_DOC_NAME,		\
			    OMAX_DOC_SHORT_DESC,	\
			    OMAX_DOC_LONG_DESC,		\
			    OMAX_DOC_NINLETS,		\
			    OMAX_DOC_INLETS_DESC,	\
			    OMAX_DOC_NOUTLETS,		\
			    OMAX_DOC_OUTLETS_DESC,	\
			    OMAX_DOC_NUM_SEE_ALSO_REFS,	\
			    OMAX_DOC_SEEALSO)

#define omax_doc_assist(io, num, buf)		\
	_omax_doc_assist(io,			\
			 num,			\
			 buf,			\
			 OMAX_DOC_NINLETS,	\
			 OMAX_DOC_INLETS_DESC,	\
			 OMAX_DOC_NOUTLETS,	\
			 OMAX_DOC_OUTLETS_DESC)

void _omax_doc_outletDoc(void *outlet,
			 char *name,
			 char *short_desc,
			 char *long_desc,
			 int ninlets,
			 char **inlets_desc,
			 int noutlets,
			 char **outlets_desc,
			 int num_see_also_refs,
			 char **seealso);

void _omax_doc_assist(long io,
		      long num,
		      char *buf,
		      int numinlets,
		      char **inlet_assist_strings,
		      int noutlets,
		      char **outlet_assist_strings);

#ifdef __cplusplus
}
#endif

#endif 
