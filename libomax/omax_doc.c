/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2010-12, The Regents of
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

/** 	\file omax_doc.c
	\author John MacCallum

*/

#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif

#include <inttypes.h>

#include "omax_doc.h"
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"


void _omax_doc_outletDoc(void *outlet,
			 char *name,
			 char *short_desc,
			 char *long_desc,
			 int ninlets,
			 char **inlets_desc,
			 int noutlets,
			 char **outlets_desc,
			 int num_see_also_refs,
			 char **see_also)
{
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	t_osc_msg_u *msg_name = osc_message_u_alloc();
	osc_message_u_setAddress(msg_name, "/doc/name");
	osc_message_u_appendString(msg_name, name);
	osc_bundle_u_addMsg(bndl, msg_name);

	t_osc_msg_u *msg_short_desc = osc_message_u_alloc();
	osc_message_u_setAddress(msg_short_desc, "/doc/desc/short");
	osc_message_u_appendString(msg_short_desc, short_desc);
	osc_bundle_u_addMsg(bndl, msg_short_desc);

	t_osc_msg_u *msg_long_desc = osc_message_u_alloc();
	osc_message_u_setAddress(msg_long_desc, "/doc/desc/long");
	osc_message_u_appendString(msg_long_desc, long_desc);
	osc_bundle_u_addMsg(bndl, msg_long_desc);

	t_osc_msg_u *msg_ninlets = osc_message_u_alloc();
	osc_message_u_setAddress(msg_ninlets, "/doc/ninlets");
	osc_message_u_appendInt32(msg_ninlets, ninlets);
	osc_bundle_u_addMsg(bndl, msg_ninlets);

	t_osc_msg_u *msg_noutlets = osc_message_u_alloc();
	osc_message_u_setAddress(msg_noutlets, "/doc/noutlets");
	osc_message_u_appendInt32(msg_noutlets, noutlets);
	osc_bundle_u_addMsg(bndl, msg_noutlets);

	int i;
	for(i = 0; i < ninlets; i++){
		if(inlets_desc[i]){
			t_osc_msg_u *m = osc_message_u_alloc();
			char buf[64];
			sprintf(buf, "/doc/desc/inlet/%d", i + 1);
			osc_message_u_setAddress(m, buf);
			osc_message_u_appendString(m, inlets_desc[i]);
			osc_bundle_u_addMsg(bndl, m);
		}
	}
	for(i = 0; i < noutlets; i++){
		if(outlets_desc[i]){
			t_osc_msg_u *m = osc_message_u_alloc();
			char buf[64];
			sprintf(buf, "/doc/desc/outlet/%d", i + 1);
			osc_message_u_setAddress(m, buf);
			osc_message_u_appendString(m, outlets_desc[i]);
			osc_bundle_u_addMsg(bndl, m);
		}
	}

	t_osc_msg_u *msg_seealso = osc_message_u_alloc();
	osc_message_u_setAddress(msg_seealso, "/doc/seealso");
	for(i = 0; i < num_see_also_refs; i++){
		osc_message_u_appendString(msg_seealso, see_also[i]);
	}
	osc_bundle_u_addMsg(bndl, msg_seealso);
	long len = 0;
	char *bndl_s = NULL;
	osc_bundle_u_serialize(bndl, &len, &bndl_s);
	omax_util_outletOSC(outlet, len, bndl_s);
	if(bndl){
		osc_bundle_u_free(bndl);
	}
	if(bndl_s){
		osc_mem_free(bndl_s);
	}
}

void _omax_doc_assist(long io,
		     long num,
		     char *buf,
		     int ninlets,
		     char **inlet_assist_strings,
		     int noutlets,
		     char **outlet_assist_strings)
{
	switch(io){
	case ASSIST_INLET:
		if(ninlets < num){
			return;
		}
		sprintf(buf, "%s", inlet_assist_strings[num]);
		break;
	case ASSIST_OUTLET:
		if(noutlets < num){
			return;
		}
		sprintf(buf, "%s", outlet_assist_strings[num]);
		break;
	}
}
