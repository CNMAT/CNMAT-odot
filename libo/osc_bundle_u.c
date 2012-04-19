/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009-ll, The Regents of
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

#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <inttypes.h>
#include "osc.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_match.h"
#include "osc_message_u.h"
#include "osc_message_u.r"
#include "osc_atom_u.h"
#include "osc_atom_u.r"
#include "osc_bundle_u.h"
#include "osc_bundle_u.r"
#include "osc_bundle_iterator_u.h"
#include "osc_array.h"

t_osc_bndl_u *osc_bundle_u_alloc(void){
	t_osc_bndl_u *b = osc_mem_alloc(sizeof(t_osc_bndl_u));
	memset(b, '\0', sizeof(t_osc_bndl_u));
	return b;
}

size_t osc_bundle_u_getStructSize(void){
	return sizeof(t_osc_bndl_u);
}

void osc_bundle_u_free(t_osc_bndl_u *bndl){
	if(!bndl){
		return;
	}
	t_osc_msg_u *m = bndl->msghead;
	while(m){
		t_osc_msg_u *next = m->next;
		osc_message_u_free(m);
		m = next;
	}
	osc_mem_free(bndl);
}

t_osc_err osc_bundle_u_deepCopy(t_osc_bndl_u **dest, t_osc_bndl_u *src){

	return OSC_ERR_NONE;
}

int osc_bundle_u_getMsgCount(t_osc_bndl_u *bndl){
	return bndl->msgcount;
}

t_osc_err osc_bundle_u_getMessagesWithCallback(t_osc_bndl_u *bndl, void (*f)(t_osc_msg_u*, void *), void *context){
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(bndl);
	while(osc_bndl_it_u_hasNext(it)){
		t_osc_msg_u *m = osc_bndl_it_u_next(it);
		f(m, context);
	}
	osc_bndl_it_u_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_lookupAddress(t_osc_bndl_u *bndl, const char *address, t_osc_array **osc_msg_u_array, int fullmatch)
{
	int matchbuflen = 16, n = 0;
	//t_osc_msg_u **matches = osc_mem_alloc(matchbuflen * sizeof(t_osc_msg_u *));
	t_osc_msg_ar_u *ar = osc_message_array_u_alloc(matchbuflen);
	osc_array_clear(ar);
	//memset(matches, '\0', matchbuflen * sizeof(t_osc_msg_u *));
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(bndl);
	while(osc_bndl_it_u_hasNext(it)){
		if(n >= matchbuflen){
			//matches = osc_mem_resize(matches, (matchbuflen + 16) * sizeof(t_osc_msg_u *));
			t_osc_err e = osc_array_resize(ar, matchbuflen + 16);
			if(e){
				return e;
			}
			matchbuflen += 16;
		}
		t_osc_msg_u *current_message = osc_bndl_it_u_next(it);
		int po, ao;
		int r = osc_match(address, osc_message_u_getAddress(current_message), &po, &ao);
		if(fullmatch){
			if(r != (OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE)){
				continue;
			}
		}else{
			if(r == 0 || (((r & OSC_MATCH_PATTERN_COMPLETE) == 0) && address[po] != '/')){
				continue;
			}
		}
		//osc_message_u_copy(matches + n++, current_message);
		t_osc_msg_u *p = osc_array_get(ar, n++);
		osc_message_u_deepCopy(&p, current_message);
	}
	osc_bndl_it_u_destroy(it);
	osc_array_resize(ar, n);
	*osc_msg_u_array = ar;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_addMsg(t_osc_bndl_u *bndl, t_osc_msg_u *msg)
{
	if(!bndl || !msg){
		return OSC_ERR_NONE;
	}
	bndl->msgcount++;
	if(!(bndl->msghead)){
		bndl->msghead = msg;
		bndl->msgtail = NULL;
		msg->prev = msg->next = NULL;
		return OSC_ERR_NONE;
	}
	if(bndl->msghead && !(bndl->msgtail)){
		bndl->msghead->next = msg;
		msg->prev = bndl->msghead;
		msg->next = NULL;
		bndl->msgtail = msg;
		return OSC_ERR_NONE;
	}
	msg->prev = bndl->msgtail;
	msg->next = NULL;
	bndl->msgtail->next = msg;
	bndl->msgtail = msg;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_addMsgCopy(t_osc_bndl_u *bndl, t_osc_msg_u *msg)
{
	if(bndl && msg){
		t_osc_msg_u *copy = NULL;
		osc_message_u_deepCopy(&copy, msg);
		osc_bundle_u_addMsg(bndl, copy);
		return OSC_ERR_NONE;
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_addMsgArrayCopy(t_osc_bndl_u *bndl, t_osc_msg_ar_u *ar)
{
	if(!bndl){
		return OSC_ERR_NOBUNDLE;
	}
	if(!ar){
		return OSC_ERR_NONE;
	}
	int len = osc_message_array_u_getLen(ar);
	if(len == 0){
		return OSC_ERR_NONE;
	}
	int i;
	for(i = 0; i < len; i++){
		osc_bundle_u_addMsgCopy(bndl, osc_message_array_u_get(ar, i));
	}
	return OSC_ERR_NONE;
}

extern t_osc_err osc_message_u_doSerialize(t_osc_msg_u *msg, long *buflen, long *bufpos, char **buf);
t_osc_err osc_bundle_u_doSerialize(t_osc_bndl_u *bndl, long *buflen, long *bufpos, char **buf)
{
	if((*buflen - *bufpos) < 256){
		*buf = osc_mem_resize(*buf, *buflen + 1024);
		if(!(*buf)){
			return OSC_ERR_OUTOFMEM;
		}
		memset(*buf + *buflen, '\0', 1024);
		*buflen += 1024;
	}
	strncpy(*buf + *bufpos, OSC_IDENTIFIER, OSC_IDENTIFIER_SIZE);
	(*bufpos) += OSC_HEADER_SIZE;
	t_osc_msg_u *m = bndl->msghead;
	while(m){
		osc_message_u_doSerialize(m, buflen, bufpos, buf);
		m = m->next;
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_serialize(t_osc_bundle_u *bndl, long *buflen, char **buf){
	long bufpos = 0;
	if(!(*buf)){
		*buflen = 1024;
		(*buf) = osc_mem_alloc(*buflen);
	}
	memset(*buf, '\0', *buflen);
	t_osc_err e = osc_bundle_u_doSerialize(bndl, buflen, &bufpos, buf);
	*buflen = bufpos;
	return e;
}

extern t_osc_err osc_message_u_doFormat(t_osc_msg_u *m, long *buflen, long *bufpos, char **buf);

t_osc_err osc_bundle_u_doFormat(t_osc_bndl_u *bndl, long *buflen, long *bufpos, char **buf){
	t_osc_bndl_it_u *it = osc_bndl_it_u_get(bndl);
	while(osc_bndl_it_u_hasNext(it)){
		t_osc_msg_u *m = osc_bndl_it_u_next(it);
		osc_message_u_doFormat(m, buflen, bufpos, buf);
		(*bufpos) += sprintf(*buf + *bufpos, "\n");
	}
	osc_bndl_it_u_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_u_format(t_osc_bndl_u *bndl, long *buflen, char **buf){
	long mybuflen = 0, mybufpos = 0;
	if(*buflen > 0){
		if(*buf){
			mybuflen = *buflen;
		}
	}
	t_osc_err e = osc_bundle_u_doFormat(bndl, &mybuflen, &mybufpos, buf);
	// don't return the actual buffer length since it may be longer than the number of bytes used
	*buflen = mybufpos;
	return e;
}

t_osc_array *osc_bundle_array_u_alloc(long len){
	return osc_array_allocWithSize(len, sizeof(t_osc_bndl_u));
}
