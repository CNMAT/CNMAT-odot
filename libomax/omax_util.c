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

/** 	\file omax_util.c
	\author John MacCallum

*/

#ifndef WIN_VERSION
#include <Carbon.h>
#include <CoreServices.h>
#endif

#include <inttypes.h>
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_bundle.h"
#include "osc_message.h"
#include "osc_match.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"
#include "osc_atom_s.h"

#define __ODOT_PROFILE__
#include "profile.h"

t_symbol *omax_ps_FullPacket = NULL;

int omax_util_liboErrorHandler(const char * const errorstr)
{
	// stupid max window doesn't respect newlines
	int len = strlen(errorstr) + 1;
	char buf[len];
	strncpy(buf, errorstr, len);

	char *s = buf;
	char *e = buf;
	while(*e){
		if(*e == '\n'){
			*e = '\0';
			error("%s", s);
			s = e + 1;
		}
		e++;
	}
	if(e != s){
		error("%s", s);
	}
	return 0;
}

void omax_util_outletOSC(void *outlet, long len, char *ptr)
{
	if(!omax_ps_FullPacket){
		omax_ps_FullPacket = gensym("FullPacket");
	}
	t_atom out[2];
	atom_setlong(out, len);
	atom_setlong(out + 1, (long)ptr);
	outlet_anything(outlet, omax_ps_FullPacket, 2, out);
}

int omax_util_getNumAtomsInOSCMsg(t_osc_msg_s *m)
{
	int n = 1; // address;
	t_osc_msg_it_s *it = osc_msg_it_s_get(m);
	while(osc_msg_it_s_hasNext(it)){
		t_osc_atom_s *a = osc_msg_it_s_next(it);
		switch(osc_atom_s_getTypetag(a)){
		case '#':
			n += 3; // FullPacket <len> <address>
			break;
		default:
			n += 1;
			break;
		}
	}
	osc_msg_it_s_destroy(it);
	return n;
}

void omax_util_oscMsg2MaxAtoms(t_osc_msg_s *m, t_atom *av)
{
	t_atom *ptr = av;
	if(osc_message_s_getAddress(m)){
		atom_setsym(ptr, gensym(osc_message_s_getAddress(m)));
	}else{
		// there are some cases when a message won't have an address
	}
	ptr++;

	t_osc_msg_it_s *it = osc_msg_it_s_get(m);
	while(osc_msg_it_s_hasNext(it)){
		t_osc_atom_s *a = osc_msg_it_s_next(it);
		switch(osc_atom_s_getTypetag(a)){
		case 'i':
		case 'I':
		case 'h':
		case 'H':
		case 'T':
		case 'F':
		case 'N':
			atom_setlong(ptr++, osc_atom_s_getInt32(a));
			break;
		case 'f':
		case 'd':
			atom_setfloat(ptr++, osc_atom_s_getFloat(a));
			break;
		case 's':		
			{
				int len = osc_atom_s_getStringLen(a);
				char buf[len];
				char *bufptr = buf;
				osc_atom_s_getString(a, len, &bufptr);
				atom_setsym(ptr++, gensym(buf));
			}
			break;
		case 'b':
			{
				int j, n = osc_atom_s_sizeof(a);
				char *data = osc_message_s_getData(m);
				atom_setlong(ptr++, ntoh32(*((uint32_t *)(data))));
				for(j = 0; j < n; j++){
					atom_setlong(ptr++, (long)data[j]);
				}
			}
		case '#':
			{
				char *data = osc_atom_s_getData(a);
				atom_setsym(ptr++, gensym("FullPacket"));
				atom_setlong(ptr++, ntoh32(*((uint32_t *)data)));
				atom_setlong(ptr++, (long)(data + 4));
			}
			break;
		}
	}
	osc_msg_it_s_destroy(it);
}

// encode a FullPacket <len> <ptr> message as a nested bundle
void omax_util_maxFullPacketToOSCAtom_u(t_osc_atom_u **osc_atom, t_atom *len, t_atom *ptr){
	if(!(*osc_atom)){
		*osc_atom = osc_atom_u_alloc();
	}
	osc_atom_u_setBndl(*osc_atom, atom_getlong(len), (char *)atom_getlong(ptr));
}

void omax_util_maxAtomToOSCAtom_u(t_osc_atom_u **osc_atom, t_atom *max_atom){
	if(!(*osc_atom)){
		*osc_atom = osc_atom_u_alloc();
	}
	switch(atom_gettype(max_atom)){
	case A_FLOAT:
		osc_atom_u_setFloat(*osc_atom, atom_getfloat(max_atom));
		break;
	case A_LONG:
		osc_atom_u_setInt32(*osc_atom, atom_getlong(max_atom));
		break;
	case A_SYM:
		osc_atom_u_setString(*osc_atom, atom_getsym(max_atom)->s_name);
		break;
	}
}

t_osc_err omax_util_maxAtomsToOSCMsg_u(t_osc_msg_u **msg, t_symbol *address, int argc, t_atom *argv){
	if(!(*msg)){
		*msg = osc_message_u_alloc();
		if(address){
			t_osc_err e = osc_message_u_setAddress(*msg, address->s_name);
			if(e){
				return e;
			}
		}
		int i;
		for(i = 0; i < argc; i++){
			t_osc_atom_u *a = NULL;
			if(atom_gettype(argv + i) == A_SYM){
				if((atom_getsym(argv + i) == gensym("FullPacket")) && argc - i >= 3){
					// FullPacket to be encoded as nested bundle
					omax_util_maxFullPacketToOSCAtom_u(&a, argv + 1, argv + 2);
					i += 2;
				}else{
					omax_util_maxAtomToOSCAtom_u(&a, argv + i);
				}
			}else{
				omax_util_maxAtomToOSCAtom_u(&a, argv + i);
			}
			osc_message_u_appendAtom(*msg, a);
		}
	}
	return OSC_ERR_NONE;
}
