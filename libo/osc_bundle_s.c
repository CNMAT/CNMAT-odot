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
#include "osc_match.h"
#include "osc_timetag.h"

#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_atom_u.h"

#include "osc_bundle_s.r"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_atom_s.h"

#include "osc_array.h"

t_osc_bndl_s *osc_bundle_s_alloc(long len, char *ptr){
	t_osc_bndl_s *b = osc_mem_alloc(sizeof(t_osc_bndl_s));
	b->len = len;
	b->ptr = ptr;
	return b;
}

t_osc_bndl_s *osc_bundle_s_allocEmptyBundle(void){
	t_osc_bndl_s *b = osc_mem_alloc(sizeof(t_osc_bndl_s));
	osc_bundle_s_setBundleID_b(b);
	return b;
}

size_t osc_bundle_s_getStructSize(void){
	return sizeof(t_osc_bndl_s);
}

void osc_bundle_s_free(t_osc_bndl_s *bndl){
	if(!bndl){
		return;
	}
	osc_mem_free(bndl);
}

void osc_bundle_s_deepFree(t_osc_bndl_s *bndl){
	if(bndl){
		if(bndl->ptr){
			osc_mem_free(bndl->ptr);
		}
		osc_mem_free(bndl);
	}
}

char *osc_bundle_s_getPtr(t_osc_bndl_s *bndl){
	if(!bndl){
		return NULL;
	}
	return bndl->ptr;
}

long osc_bundle_s_getLen(t_osc_bndl_s *bndl){
	if(!bndl){
		return 0;
	}
	return bndl->len;
}

void osc_bundle_s_setLen(t_osc_bndl_s *bndl, long len){
	if(bndl){
		bndl->len = len;
	}
}

void osc_bundle_s_setPtr(t_osc_bndl_s *bndl, char *ptr){
	if(bndl){
		bndl->ptr = ptr;
	}
}

t_osc_err osc_bundle_s_getMsgCount(int len, char *buf, int *count){
	*count = 0;
	t_osc_err ret;
	if((ret = osc_error_bundleSanityCheck(len, buf))){
		return ret;
	}
	char *ptr = buf + OSC_HEADER_SIZE;
	while((ptr - buf) < len){
		int size = ntoh32(*((uint32_t *)ptr));
		*count += 1;
		ptr += size + 4;
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_getMessagesWithCallback(int len, char *buf, void (*f)(t_osc_msg_s*, void *), void *context)
{
	int ret;
	if((ret = osc_error_bundleSanityCheck(len, buf))){
		return ret;
	}
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, buf);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		f(m, context);
	}
	osc_bndl_it_s_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_addressIsBound(long len, char *buf, char *address, int fullmatch, int *res)
{
	*res = 0;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, buf);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		int po, ao;
		int r = osc_match(address, osc_message_s_getAddress(m), &po, &ao);
		if(fullmatch){
			if(r != (OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE)){
				continue;
			}
		}else{
			if(r == 0 || (((r & OSC_MATCH_PATTERN_COMPLETE) == 0) && address[po] != '/')){
				continue;
			}
		}
		if(osc_message_s_getArgCount(m) > 0){
			*res = 1;
			break;
		}
	}
	osc_bndl_it_s_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_addressExists(long len, char *buf, char *address, int fullmatch, int *res)
{
	*res = 0;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, buf);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		int po, ao;
		int r = osc_match(address, osc_message_s_getAddress(m), &po, &ao);
		if(fullmatch){
			if(r != (OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE)){
				continue;
			}
		}else{
			if(r == 0 || (((r & OSC_MATCH_PATTERN_COMPLETE) == 0) && address[po] != '/')){
				continue;
			}
		}
		*res = 1;
		break;
	}
	osc_bndl_it_s_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_lookupAddress(int len, char *buf, char *address, t_osc_ar **osc_msg_s_array, int fullmatch)
{
	int matchbuflen = 0, n = 0;
	t_osc_msg_ar_s *ar = NULL;
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, buf);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *current_message = osc_bndl_it_s_next(it);
		int po, ao;
		int r = osc_match(address, osc_message_s_getAddress(current_message), &po, &ao);
		if(fullmatch){
			if(r != (OSC_MATCH_ADDRESS_COMPLETE | OSC_MATCH_PATTERN_COMPLETE)){
				continue;
			}
		}else{
			if(r == 0 || (((r & OSC_MATCH_PATTERN_COMPLETE) == 0) && address[po] != '/')){
				continue;
			}
		}
		//osc_message_s_copy(matches + n++, current_message);
		if(n >= matchbuflen){
			//matches = osc_mem_resize(matches, (matchbuflen + 16) * sizeof(t_osc_msg_s *));
			if(!ar){
				ar = osc_message_array_s_alloc(16);
				if(!ar){
					return OSC_ERR_OUTOFMEM;
				}
			}else{
				t_osc_err e = osc_array_resize(ar, matchbuflen + 16);
				if(e){
					return e;
				}
			}
			matchbuflen += 16;
		}
		t_osc_msg_s *p = osc_array_get(ar, n++);
		osc_message_s_copy(&p, current_message);
	}
	osc_bndl_it_s_destroy(it);
//*nmatches = n;
//*m = matches;
	if(ar){
		osc_array_resize(ar, n);
	}
	*osc_msg_s_array = ar;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_wrapMessage(long len, char *msg, long *bndllen, char **bndl, char *alloc)
{
	*alloc = 0;
	*bndllen = len + OSC_HEADER_SIZE + 4;
	if(!(*bndl)){
		*bndl = osc_mem_alloc(*bndllen);
		if(!(*bndl)){
			return OSC_ERR_OUTOFMEM;
		}
		*alloc = 1;
	}
	osc_bundle_s_setBundleID(*bndl);
	*((int32_t *)((*bndl) + OSC_HEADER_SIZE)) = hton32(len);
	memcpy((*bndl) + OSC_HEADER_SIZE + 4, msg, len);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_replaceMessage(long *len, char **bndl, t_osc_msg_s *oldmsg, t_osc_msg_s *newmsg)
{
	char *om = osc_message_s_getPtr(oldmsg);
	char *nm = osc_message_s_getPtr(newmsg);
	uint32_t old_size = ntoh32(*((uint32_t *)om));
	uint32_t new_size = ntoh32(*((uint32_t *)nm));
	char copy[*len - (old_size + 4) + (new_size + 4)];
	char *oldptr = *bndl, *newptr = copy;

	memcpy(newptr, oldptr, om - *bndl);
	newptr += om - *bndl;
	oldptr += om - *bndl;

	memcpy(newptr, nm, new_size + 4);
	newptr += new_size + 4;
	oldptr += old_size + 4;

	long r = *len - (oldptr - *bndl);
	if(r){
		memcpy(newptr, oldptr, r);
	}
	if(sizeof(copy) > *len){
		char *tmp = osc_mem_resize(*bndl, sizeof(copy));
		if(!tmp){
			return OSC_ERR_OUTOFMEM;
		}
		*bndl = tmp;
	}
	memcpy(*bndl, copy, sizeof(copy));
	*len = sizeof(copy);
	return OSC_ERR_NONE;
}

// if msg == NULL, an empty bundle will be created, or, if a bundle
// already exists, nothing will happen.
t_osc_err osc_bundle_s_appendMessage(long *len, char **bndl, t_osc_msg_s *msg){
	if(!msg){
		//printf("no freaking message\n");
		return OSC_ERR_NONE;
	}
	uint32_t msglen = osc_message_s_getSize(msg);
	char *tmp = NULL;
	if(*bndl){
		tmp = (char *)osc_mem_resize(*bndl, *len + msglen + 4);
	}else{
		int size;
		if(msg){
			size = msglen + 4;
		}else{
			size = 0;
		}
		tmp = (char *)osc_mem_alloc(size + OSC_HEADER_SIZE);
		if(!tmp){
			return OSC_ERR_OUTOFMEM;
		}
		memset(tmp + OSC_IDENTIFIER_SIZE, '\0', OSC_IDENTIFIER_SIZE);
		osc_bundle_s_setBundleID(tmp);
		*len = OSC_HEADER_SIZE;
		*bndl = tmp;
	}
	if(!tmp){
		return OSC_ERR_OUTOFMEM;
	}
	memcpy(tmp + *len, osc_message_s_getPtr(msg), msglen + 4);
	*len = *len + msglen + 4;
	*bndl = tmp;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_appendMessage_b(t_osc_bndl_s **bndl, t_osc_msg_s *msg){
	if(!(*bndl)){
		*bndl = osc_bundle_s_alloc(0, NULL);
	}
        int ret = osc_bundle_s_appendMessage(&((*bndl)->len), &((*bndl)->ptr), msg);
	return ret;
}

t_osc_err osc_bundle_s_setBundleID(char *buf){
	if(!buf){
		return OSC_ERR_NOBUNDLE;
	}
	strncpy(buf, OSC_IDENTIFIER, OSC_IDENTIFIER_SIZE);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_setBundleID_b(t_osc_bndl_s *bndl){
	if(!bndl){
		return OSC_ERR_NOBUNDLE;
	}
	if(!(bndl->ptr)){
		bndl->ptr = osc_mem_alloc(OSC_IDENTIFIER_SIZE);
		if(!(bndl->ptr)){
			return OSC_ERR_OUTOFMEM;
		}
	}else{
		if(bndl->len < OSC_HEADER_SIZE){
			bndl->ptr = (char *)osc_mem_resize(bndl->ptr, OSC_HEADER_SIZE);
			if(!bndl->ptr){
				return OSC_ERR_OUTOFMEM;
			}
		}
	}
	memset(bndl->ptr + OSC_IDENTIFIER_SIZE, '\0', OSC_HEADER_SIZE - OSC_IDENTIFIER_SIZE);
	bndl->len = OSC_HEADER_SIZE;
	strncpy(bndl->ptr, OSC_IDENTIFIER, OSC_IDENTIFIER_SIZE);
	return OSC_ERR_NONE;
}

int osc_bundle_s_strcmpID(char *buf){
	return strncmp(buf, OSC_ID, OSC_ID_SIZE);
}

#ifdef OSC_2_0
t_osc_timetag osc_bundle_s_getTimetag(int len, char *buf){
}
#else
t_osc_timetag osc_bundle_s_getTimetag(int len, char *buf){
	return 0;
}
#endif

t_osc_err osc_bundle_s_deserialize(long len, char *ptr, t_osc_bndl_u **bndl){
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, ptr);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		t_osc_msg_u *um = NULL;
		osc_message_s_deserialize(m, &um);
		osc_bundle_u_addMsg(b, um);
	}
	osc_bndl_it_s_destroy(it);
	*bndl = b;
	return OSC_ERR_NONE;
}

extern t_osc_err osc_message_s_doFormat(t_osc_msg_s *m, long *buflen, long *bufpos, char **buf);

t_osc_err osc_bundle_s_doFormat(long len, char *bndl, long *buflen, long *bufpos, char **buf){
	if(len == OSC_HEADER_SIZE){
		// empty bundle
		return OSC_ERR_NONE;
	}
	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, bndl);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		osc_message_s_doFormat(m, buflen, bufpos, buf);
		(*bufpos) += sprintf(*buf + *bufpos, "\n");
	}
	osc_bndl_it_s_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_format(long len, char *bndl, long *buflen, char **buf){
	long mybuflen = 0, mybufpos = 0;
	if(*buflen > 0){
		if(*buf){
			mybuflen = *buflen;
		}
	}
	t_osc_err e = osc_bundle_s_doFormat(len, bndl, &mybuflen, &mybufpos, buf);
	// don't return the actual buffer length since it may be longer than the number of bytes used
	*buflen = mybufpos;
	return e;
}

t_osc_array *osc_bundle_array_s_alloc(long len){
	return osc_array_allocWithSize(len, sizeof(t_osc_bndl_s));
}

t_osc_err osc_bundle_s_union(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out){
	if((len1 == 0 && len2 == 0) || (len1 == OSC_HEADER_SIZE && len2 == OSC_HEADER_SIZE)){
		if(!(*bndl_out)){
			*bndl_out = osc_mem_alloc(OSC_HEADER_SIZE);
		}
		osc_bundle_s_setBundleID(*bndl_out);
		*len_out = OSC_HEADER_SIZE;
		return OSC_ERR_NONE;
	}
	if(!(*bndl_out)){
		*bndl_out = osc_mem_alloc(len1 + len2);
		memset(*bndl_out, '\0', len1 + len2);
	}
	char *bndl = *bndl_out;
	long len = OSC_HEADER_SIZE;
	if(bndl1){
		memcpy(*bndl_out, bndl1, OSC_HEADER_SIZE);
	}else if(bndl2){
		memcpy(*bndl_out, bndl2, OSC_HEADER_SIZE);
	}else{
		osc_bundle_s_setBundleID(*bndl_out);
	}

	char *bndls[2] = {bndl1, bndl2};
	long lens[2] = {len1, len2};
	int i;
	for(i = 0; i < 2; i++){
		t_osc_bndl_it_s *it = osc_bndl_it_s_get(lens[i], bndls[i]);
		while(osc_bndl_it_s_hasNext(it)){
			t_osc_msg_s *m = osc_bndl_it_s_next(it);
			char *address = osc_message_s_getAddress(m);
			int res = 0;
			osc_bundle_s_addressExists(len, bndl, address, 1, &res);
			if(res == 0){
				long l = osc_message_s_getSize(m) + 4;
				memcpy(bndl + len, osc_message_s_getPtr(m), l);
				len += l;
			}
		}
		osc_bndl_it_s_destroy(it);
	}
	*len_out = len;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_intersection(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out){
	if(len1 == 0 || len2 == 0 || len1 == OSC_HEADER_SIZE || len2 == OSC_HEADER_SIZE){
		if(!(*bndl_out)){
			*bndl_out = osc_mem_alloc(OSC_HEADER_SIZE);
		}
		osc_bundle_s_setBundleID(*bndl_out);
		*len_out = OSC_HEADER_SIZE;
		return OSC_ERR_NONE;
	}
	if(!(*bndl_out)){
		*bndl_out = osc_mem_alloc(len1 + len2);
		memset(*bndl_out, '\0', len1 + len2);
	}
	char *bndl = *bndl_out;
	long len = OSC_HEADER_SIZE;
	if(bndl1){
		memcpy(*bndl_out, bndl1, OSC_HEADER_SIZE);
	}else if(bndl2){
		memcpy(*bndl_out, bndl2, OSC_HEADER_SIZE);
	}else{
		osc_bundle_s_setBundleID(*bndl_out);
	}

	t_osc_bndl_it_s *it = osc_bndl_it_s_get(len1, bndl1);
	while(osc_bndl_it_s_hasNext(it)){
		t_osc_msg_s *m = osc_bndl_it_s_next(it);
		char *address = osc_message_s_getAddress(m);
		int res = 0;
		osc_bundle_s_addressExists(len2, bndl2, address, 1, &res);
		if(res != 0){
			int res = 0;
			osc_bundle_s_addressExists(len, bndl, address, 1, &res);
			if(res == 0){
				long l = osc_message_s_getSize(m) + 4;
				memcpy(bndl + len, osc_message_s_getPtr(m), l);
				len += l;
			}
		}
	}
	osc_bndl_it_s_destroy(it);
	*len_out = len;
	return OSC_ERR_NONE;
}

t_osc_err osc_bundle_s_difference(long len1, char *bndl1, long len2, char *bndl2, long *len_out, char **bndl_out){
	if((len1 == 0 && len2 == 0) || (len1 == OSC_HEADER_SIZE && len2 == OSC_HEADER_SIZE)){
		if(!(*bndl_out)){
			*bndl_out = osc_mem_alloc(OSC_HEADER_SIZE);
		}
		osc_bundle_s_setBundleID(*bndl_out);
		*len_out = OSC_HEADER_SIZE;
		return OSC_ERR_NONE;
	}
	if(!(*bndl_out)){
		*bndl_out = osc_mem_alloc(len1 + len2);
		memset(*bndl_out, '\0', len1 + len2);
	}

	char *bndl = *bndl_out;
	long len = OSC_HEADER_SIZE;
	if(bndl1){
		memcpy(*bndl_out, bndl1, OSC_HEADER_SIZE);
	}else if(bndl2){
		memcpy(*bndl_out, bndl2, OSC_HEADER_SIZE);
	}else{
		osc_bundle_s_setBundleID(*bndl_out);
	}

	long lens[2] = {len1, len2};
	char *bndls[2] = {bndl1, bndl2};
	int i;
	for(i = 0; i < 2; i++){
		t_osc_bndl_it_s *it = osc_bndl_it_s_get(lens[i], bndls[i]);
		while(osc_bndl_it_s_hasNext(it)){
			t_osc_msg_s *m = osc_bndl_it_s_next(it);
			char *address = osc_message_s_getAddress(m);
			int res = 0;
			osc_bundle_s_addressExists(lens[(i + 1) % 2], bndls[(i + 1) % 2], address, 1, &res);
			if(res == 0){
				int res = 0;
				osc_bundle_s_addressExists(len, bndl, address, 1, &res);
				if(res == 0){
					long l = osc_message_s_getSize(m) + 4;
					memcpy(bndl + len, osc_message_s_getPtr(m), l);
					len += l;
				}
			}
		}
		osc_bndl_it_s_destroy(it);
	}

	*len_out = len;
	return OSC_ERR_NONE;
}

int osc_bundle_s_concat(long len1, char *bndl1, long len2, char *bndl2, char *bndl){
	if(!bndl1 && !bndl2){
		return 0;
	}
	if(!bndl1){
		memcpy(bndl, bndl2, len2);
		return len2;
	}
	if(!bndl2){
		memcpy(bndl, bndl1, len1);
		return len1;
	}
	memcpy(bndl, bndl1, len1);
	memcpy(bndl + len1, bndl2 + OSC_HEADER_SIZE, len2 - OSC_HEADER_SIZE);
	return len1 + len2 - OSC_HEADER_SIZE;
}
