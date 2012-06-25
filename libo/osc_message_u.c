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
#include "osc.h"
#include "osc_message_u.h"
#include "osc_message_u.r"
#include "osc_atom_u.h"
#include "osc_atom_u.r"
#include "osc_atom_array_u.h"
#include "osc_message_iterator_u.h"
#include "osc_mem.h"
#include "osc_byteorder.h"
#include "osc_util.h"

t_osc_msg_u *osc_message_u_alloc()
{
	t_osc_msg_u *m = (t_osc_msg_u *)osc_mem_alloc(sizeof(t_osc_msg_u));
	if(!m){
		return NULL;
	}
	osc_message_u_initMsg(m);
	return m;
}

size_t osc_message_u_getStructSize(void)
{
	return sizeof(t_osc_msg_u);
}

void osc_message_u_free(t_osc_msg_u *m)
{
	if(!m){
		return;
	}
	if(m->address){
		osc_mem_free(m->address);
	}
	t_osc_atom_u *a = m->arghead;
	while(a){
		t_osc_atom_u *next = a->next;
		osc_atom_u_free(a);
		a = next;
	}
	osc_mem_free(m);
}

void osc_message_u_initMsg(t_osc_msg_u *m)
{
	if(!m){
		return;
	}
	memset(m, '\0', sizeof(t_osc_msg_u));
}

void osc_message_u_clearArgs(t_osc_msg_u *m)
{
	if(!m){
		return;
	}
	m->argc = 0;
	t_osc_atom_u *a = m->arghead;
	while(a){
		t_osc_atom_u *next = a->next;
		osc_atom_u_free(a);
		a = next;
	}
	m->arghead = m->argtail = NULL;
}

void osc_message_u_copy(t_osc_msg_u **dest, t_osc_msg_u *src)
{
	if(!src){
		return;
	}
	if(!(*dest)){
		*dest = osc_message_u_alloc();
	}
	**dest = *src;
}

t_osc_err osc_message_u_deepCopy(t_osc_msg_u **dest, t_osc_msg_u *src)
{
	if(!src){
		return OSC_ERR_NULLPTR;
	}
	if(!(*dest)){
		*dest = osc_message_u_alloc();
	}
	(*dest)->size = src->size;
	(*dest)->argc = 0;
	(*dest)->arghead = NULL;
	(*dest)->argtail = NULL;
	if(src->address){
		char *address = NULL;
		osc_util_strdup(&address, src->address);
		(*dest)->address = address;
	}
	t_osc_msg_it_u *it = osc_msg_it_u_get(src);
	while(osc_msg_it_u_hasNext(it)){
		t_osc_atom_u *a = osc_msg_it_u_next(it);
		t_osc_atom_u *acpy = NULL;
		osc_atom_u_copy(&acpy, a);
		osc_message_u_appendAtom(*dest, acpy);
	}
	osc_msg_it_u_destroy(it);
	(*dest)->next = NULL;
	(*dest)->prev = NULL;
	return OSC_ERR_NONE;
}

uint32_t osc_message_u_getSize(t_osc_msg_u *m)
{
	if(!m){
		return 0;
	}
	return m->size;
}

char *osc_message_u_getAddress(t_osc_msg_u *m)
{
	if(!m){
		return NULL;
	}
	return m->address;
}

t_osc_err osc_message_u_setAddress(t_osc_msg_u *m, const char *address)
{
	if(!m){
		return OSC_ERR_INVAL;
	}
	if(!address){
		m->address = NULL;
		return OSC_ERR_NONE;
	}
	if(*address != '/'){
		return OSC_ERR_MALFORMEDADDRESS;
	}
	if(m->address){
		int len = strlen(m->address);
		int newlen = strlen(address);
		if(len < newlen){
			m->address = osc_mem_resize(m->address, newlen + 1);
		}
		strncpy(m->address, address, newlen + 1);
	}else{
		char *buf = osc_mem_alloc(strlen(address) + 1);
		strcpy(buf, address);
		m->address = buf;
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_setAddressPtr(t_osc_msg_u *m, char *newAddress, char **oldAddress)
{
	if(oldAddress){
		*oldAddress = m->address;
	}
	m->address = newAddress;
	return OSC_ERR_NONE;
}

int osc_message_u_getArgCount(t_osc_msg_u *m)
{
	if(!m){
		return 0;
	}
	return m->argc;
}

void osc_message_u_getArg(t_osc_msg_u *m, int n, t_osc_atom_u **atom)
{
	if(!m){
		return;
	}
	int nn = osc_message_u_getArgCount(m);
	if(nn <= n){
		return;
	}
	if(n == 0){
		*atom = m->arghead;
		return;
	}
	t_osc_atom_u *a = NULL;
	int i;
	if((double)nn / (double)n < .5){
		a = m->arghead;
		for(i = 0; i < n; i++){
			a = a->next;
		}
	}else{
		a = m->argtail;
		for(i = m->argc - 1; i > n; i--){
			a = a->prev;
		}
	}
	*atom = a;
}

t_osc_err osc_message_u_appendAtom(t_osc_msg_u *m, t_osc_atom_u *a)
{
	m->argc++;
	if(!(m->arghead)){
		a->prev = a->next = NULL;
		m->arghead = m->argtail = a;
		return OSC_ERR_NONE;
	}
	m->argtail->next = a;
	a->prev = m->argtail;
	a->next = NULL;
	m->argtail = a;
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_prependAtom(t_osc_msg_u *m, t_osc_atom_u *a)
{
	m->argc++;
	if(!(m->arghead)){
		a->prev = a->next = NULL;
		m->arghead = m->argtail = a;
		return OSC_ERR_NONE;
	}
	a->next = m->arghead;
	m->arghead->prev = a;
	m->arghead = a;
	a->prev = NULL;
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_insertAtom(t_osc_msg_u *m, t_osc_atom_u *a, int pos)
{
	if(m->arghead == NULL){
		m->arghead = m->argtail = a;
		a->next = a->prev = NULL;
		goto out;
	}
	if(pos >= m->argc){
		if(m->argtail){
			m->argtail->next = a;
		}
		a->prev = m->argtail;
		m->argtail = a;
		goto out;
	}
	if(pos == 0){
		a->next = m->arghead;
		if(m->arghead){
			m->arghead->prev = a;
		}
		a->prev = NULL;
		m->arghead = a;
		goto out;
	}
	t_osc_atom_u *aa = NULL;
	int i;
	if((float)pos / m->argc < .5){
		aa = m->arghead;
		for(i = 0; i < pos; i++){
			aa = aa->next;
		}
	}else{
		aa = m->argtail;
		for(i = m->argc; i > pos + 1; i--){
			aa = aa->prev;
		}
	}
	if(aa->prev){
		aa->prev->next = a;
	}
	a->prev = aa->prev;
	a->next = aa;
	aa->prev = a;
 out:
	m->argc++;
	return OSC_ERR_NONE;
}

void osc_message_u_removeAtom(t_osc_msg_u *m, t_osc_atom_u *a)
{
	if(!m || !a){
		return;
	}
	if(a->next){
		a->next->prev = a->prev;
	}
	if(a->prev){
		a->prev->next = a->next;
	}
	if(a == m->arghead){
		m->arghead = a->next;
	}
	if(a == m->argtail){
		m->argtail = a->prev;
	}
	m->argc--;
}

t_osc_atom_u *osc_message_u_appendInt8(t_osc_msg_u *m, int8_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt8(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendInt16(t_osc_msg_u *m, int16_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt16(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendInt32(t_osc_msg_u *m, int32_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt32(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendInt64(t_osc_msg_u *m, int64_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt64(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendUInt8(t_osc_msg_u *m, uint8_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt8(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendUInt16(t_osc_msg_u *m, uint16_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt16(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendUInt32(t_osc_msg_u *m, uint32_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt32(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendUInt64(t_osc_msg_u *m, uint64_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt64(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendFloat(t_osc_msg_u *m, float v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFloat(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendDouble(t_osc_msg_u *m, double v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setDouble(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendStringPtr(t_osc_msg_u *m, char *v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setStringPtr(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendString(t_osc_msg_u *m, const char *v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	//int len = strlen(v);
	//char *buf = osc_mem_alloc(len + 1);
	//strncpy(buf, v, len + 1);
	osc_atom_u_setString(a, v);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendBool(t_osc_msg_u *m, int v)
{
	if(v == 0){
		return osc_message_u_appendFalse(m);
	}else{
		return osc_message_u_appendTrue(m);
	}
}

t_osc_atom_u *osc_message_u_appendTrue(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setTrue(a);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendFalse(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFalse(a);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendNull(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setNull(a);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendBndl(t_osc_msg_u *m, long len, char *bndl)
{
	return osc_message_u_appendBndl_s(m, len, bndl);
}

t_osc_atom_u *osc_message_u_appendBndl_s(t_osc_msg_u *m, long len, char *bndl)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_s(a, len, bndl);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_appendBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_u(a, b);
	osc_message_u_appendAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependInt8(t_osc_msg_u *m, int8_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt8(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependInt16(t_osc_msg_u *m, int16_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt16(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependInt32(t_osc_msg_u *m, int32_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt32(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependInt64(t_osc_msg_u *m, int64_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt64(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependUInt8(t_osc_msg_u *m, uint8_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt8(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependUInt16(t_osc_msg_u *m, uint16_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt16(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependUInt32(t_osc_msg_u *m, uint32_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt32(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependUInt64(t_osc_msg_u *m, uint64_t v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt64(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependFloat(t_osc_msg_u *m, float v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFloat(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependDouble(t_osc_msg_u *m, double v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setDouble(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependStringPtr(t_osc_msg_u *m, char *v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setStringPtr(a, v);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependString(t_osc_msg_u *m, char *v)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	int len = strlen(v);
	char *buf = osc_mem_alloc(len + 1);
	strncpy(buf, v, len + 1);
	osc_atom_u_setString(a, buf);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependBool(t_osc_msg_u *m, int v)
{
	if(v == 0){
		return osc_message_u_prependFalse(m);
	}else{
		return osc_message_u_prependTrue(m);
	}
}

t_osc_atom_u *osc_message_u_prependTrue(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setTrue(a);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependFalse(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFalse(a);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependNull(t_osc_msg_u *m)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setNull(a);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependBndl(t_osc_msg_u *m, long len, char *bndl)
{
	return osc_message_u_prependBndl_s(m, len, bndl);
}

t_osc_atom_u *osc_message_u_prependBndl_s(t_osc_msg_u *m, long len, char *bndl)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_s(a, len, bndl);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_prependBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_u(a, b);
	osc_message_u_prependAtom(m, a);
	return a;
}

t_osc_atom_u *osc_message_u_insertInt8(t_osc_msg_u *m, int8_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt8(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertInt16(t_osc_msg_u *m, int16_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt16(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertInt32(t_osc_msg_u *m, int32_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt32(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertInt64(t_osc_msg_u *m, int64_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setInt64(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertUInt8(t_osc_msg_u *m, uint8_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt8(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertUInt16(t_osc_msg_u *m, uint16_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt16(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertUInt32(t_osc_msg_u *m, uint32_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt32(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertUInt64(t_osc_msg_u *m, uint64_t v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setUInt64(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertFloat(t_osc_msg_u *m, float v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFloat(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertDouble(t_osc_msg_u *m, double v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setDouble(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertStringPtr(t_osc_msg_u *m, char *v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setString(a, v);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertString(t_osc_msg_u *m, char *v, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	int len = strlen(v);
	char *buf = osc_mem_alloc(len + 1);
	strncpy(buf, v, len + 1);
	osc_atom_u_setString(a, buf);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertBool(t_osc_msg_u *m, int v, int pos)
{
	if(v == 0){
		return osc_message_u_insertFalse(m, pos);
	}else{
		return osc_message_u_insertTrue(m, pos);
	}
}

t_osc_atom_u *osc_message_u_insertTrue(t_osc_msg_u *m, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setTrue(a);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertFalse(t_osc_msg_u *m, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setFalse(a);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertNull(t_osc_msg_u *m, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setNull(a);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertBndl(t_osc_msg_u *m, long len, char *bndl, int pos)
{
	return osc_message_u_insertBndl_s(m, len, bndl, pos);
}

t_osc_atom_u *osc_message_u_insertBndl_s(t_osc_msg_u *m, long len, char *bndl, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_s(a, len, bndl);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

t_osc_atom_u *osc_message_u_insertBndl_u(t_osc_msg_u *m, t_osc_bndl_u *b, int pos)
{
	t_osc_atom_u *a = osc_atom_u_alloc();
	osc_atom_u_setBndl_u(a, b);
	osc_message_u_insertAtom(m, a, pos);
	return a;
}

static t_osc_err osc_message_u_explode_impl(t_osc_bndl_u *dest, t_osc_msg_u *msg, int level, int maxlevel, char *sep)
{
	if(level >= maxlevel && maxlevel >= 0){
		osc_bundle_u_addMsg(dest, msg);
		return OSC_ERR_NONE;
	}
	char *s = sep && strlen(sep) > 0 ? sep : "/";
	char *a = osc_message_u_getAddress(msg);
	int alen = strlen(a);
	int i = 0;
	if(a[i] == *s){
		i = 1;
	}
	while(i < alen){
		i++;
		if(a[i] == *s){
			break;
		}
	}
	char a1[alen + 1];
	strncpy(a1, a, i);
	a1[i] = '\0';

	int exists = 0;
	osc_bundle_u_addressExists(dest, a1, 1, &exists);
	if(exists){
		if(a[i] == '\0'){
			osc_bundle_u_addMsgWithoutDups(dest, msg);
			return OSC_ERR_NONE;
		}else{
			t_osc_msg_ar_u *ar = NULL;
			osc_bundle_u_lookupAddress(dest, a1, &ar, 1);
			t_osc_msg_u *m = NULL;
			t_osc_bndl_u *b = NULL;
			osc_message_u_deepCopy(&m, osc_message_array_u_get(ar, 0));
			osc_message_array_u_free(ar);
			int argc = osc_message_u_getArgCount(m);
			if(argc > 1 || argc == 0){
				osc_message_u_clearArgs(m);
				b = osc_bundle_u_alloc();
			}else if(argc == 1){
				t_osc_atom_u *a = NULL;
				osc_message_u_getArg(m, 0, &a);
				if(osc_atom_u_getTypetag(a) != OSC_BUNDLE_TYPETAG){
					osc_message_u_clearArgs(m);
					b = osc_bundle_u_alloc();
				}else{
					t_osc_atom_u *a = NULL;
					osc_message_u_getArg(m, 0, &a);
					b = osc_atom_u_getBndl(a);
					t_osc_bndl_u *bb = NULL;
					osc_bundle_u_copy(&bb, b);
					b = bb;
					/*
					osc_bundle_s_deserialize(osc_bundle_s_getLen(b_s), 
								 osc_bundle_s_getPtr(b_s),
								 &b);
					*/
					osc_message_u_clearArgs(m);
				}
			}
			char a2[alen + 1];
			if(a[i] == '/'){
				strncpy(a2, a + i, (alen - i) + 1);
			}else{
				if(a[i + 1] == '/'){
					strncpy(a2, a + i + 1, (alen - i));
				}else{
					a2[0] = '/';
					strncpy(a2 + 1, a + i, (alen - i) + 1);
				}
			}
			osc_message_u_setAddress(msg, a2);
			t_osc_err ret = osc_message_u_explode_impl(b, msg, level + 1, maxlevel, s);
			if(ret){
				return ret;
			}
/*
			long len = 0;
			char *b_s = NULL;
			osc_bundle_u_serialize(b, &len, &b_s);
			if(b_s){
*/
				osc_message_u_appendBndl_u(m, b);
				osc_bundle_u_addMsgWithoutDups(dest, m);
//osc_mem_free(b_s);
//}
			//osc_bundle_u_free(b);
		}
	}else{
		if(a[i] == '\0'){
			osc_bundle_u_addMsg(dest, msg);
		}else{
			t_osc_bndl_u *b = osc_bundle_u_alloc();
			t_osc_msg_u *m = osc_message_u_alloc();
			osc_message_u_setAddress(m, a1);
			char a2[alen + 1];
			if(a[i] == '/'){
				strncpy(a2, a + i, (alen - i) + 1);
			}else{
				if(a[i + 1] == '/'){
					strncpy(a2, a + i + 1, (alen - i));
				}else{
					a2[0] = '/';
					strncpy(a2 + 1, a + i, (alen - i) + 1);
				}
			}
			osc_message_u_setAddress(msg, a2);
			t_osc_err ret = osc_message_u_explode_impl(b, msg, level + 1, maxlevel, s);
			if(ret){
				return ret;
			}
			/*
			long len = 0;
			char *b_s = NULL;
			osc_bundle_u_serialize(b, &len, &b_s);
			if(b_s){
			*/
				osc_message_u_appendBndl_u(m, b);
				osc_bundle_u_addMsgWithoutDups(dest, m);
				//osc_mem_free(b_s);
				//}
				//osc_bundle_u_free(b);
		}
	}
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_explode(t_osc_bndl_u *dest, t_osc_msg_u *msg, int maxlevel, char *sep)
{
	t_osc_msg_u *mcopy = NULL;
	osc_message_u_deepCopy(&mcopy, msg);
	t_osc_err ret = osc_message_u_explode_impl(dest, mcopy, 0, maxlevel, sep);
	return ret;
}

extern t_osc_err osc_atom_u_doSerialize(t_osc_atom_u *a, long *buflen, long *bufpos, char **buf);
t_osc_err osc_message_u_doSerialize(t_osc_msg_u *m, long *buflen, long *bufpos, char **buf)
{
	if(!m){
		return OSC_ERR_NONE;
	}
	if(!(m->address)){
		return OSC_ERR_MALFORMEDMSG;
	}
	if((*buflen - *bufpos) < 256){
		*buf = osc_mem_resize(*buf, *buflen + 1024);
		if(!(*buf)){
			return OSC_ERR_OUTOFMEM;
		}
		memset(*buf + *buflen, '\0', 1024);
		*buflen += 1024;
	}
	long bufstart = *bufpos;
	(*bufpos) += 4; // size

	long addresslen = strlen(m->address) + 1;
	strncpy(*buf + *bufpos, m->address, addresslen);
	(*bufpos) += addresslen; // includes NULL byte
	while(*bufpos % 4){
		(*bufpos)++;
	}

	int tt = *bufpos;
	int ntypetags = m->argc;
	long datapos = (tt + ntypetags + 2);
	while(datapos % 4){
		datapos++;
	}

	(*buf)[tt++] = ',';

	t_osc_msg_it_u *it = osc_msg_it_u_get(m);
	while(osc_msg_it_u_hasNext(it)){
		t_osc_atom_u *a = osc_msg_it_u_next(it);
		(*buf)[tt++] = osc_atom_u_getTypetag(a);
		t_osc_err e = osc_atom_u_doSerialize(a, buflen, &datapos, buf);
		if(e){
			return e;
		}
	}
	osc_msg_it_u_destroy(it);
	*((uint32_t *)((*buf) + bufstart)) = hton32((datapos - bufstart) - 4);
	*bufpos = datapos;

	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_serialize(t_osc_msg_u *m, long *buflen, char **buf)
{
	long mybuflen = *buflen, mybufpos = 0;
	t_osc_err e = osc_message_u_doSerialize(m, &mybuflen, &mybufpos, buf);
	*buflen = mybufpos;
	return e;
}

extern t_osc_err osc_atom_u_doFormat(t_osc_atom_u *a, long *buflen, long *bufpos, char **buf);

t_osc_err osc_message_u_doFormatArgs(t_osc_msg_u *m, long *buflen, long *bufpos, char **buf)
{
	if((*buflen - *bufpos) < 256){
		*buf = osc_mem_resize(*buf, *buflen + 1024);
		if(!(*buf)){
			return OSC_ERR_OUTOFMEM;
		}
		*buflen += 1024;
	}
	t_osc_msg_it_u *it = osc_msg_it_u_get(m);
	while(osc_msg_it_u_hasNext(it)){
		t_osc_atom_u *a = osc_msg_it_u_next(it);
		osc_atom_u_doFormat(a, buflen, bufpos, buf);
	}
	osc_msg_it_u_destroy(it);
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_formatArgs(t_osc_msg_u *m, long *buflen, char **buf)
{
	long mybuflen = 0, mybufpos = 0;
	t_osc_err e = osc_message_u_doFormatArgs(m, &mybuflen, &mybufpos, buf);
	*buflen = mybufpos;
	return e;
}

t_osc_err osc_message_u_doFormat(t_osc_msg_u *m, long *buflen, long *bufpos, char **buf)
{
	if((*buflen - *bufpos) < 256){
		*buf = osc_mem_resize(*buf, *buflen + 1024);
		if(!(*buf)){
			return OSC_ERR_OUTOFMEM;
		}
		*buflen += 1024;
	}
	*bufpos += sprintf(*buf + *bufpos, "%s ", osc_message_u_getAddress(m));
	osc_message_u_doFormatArgs(m, buflen, bufpos, buf);
	return OSC_ERR_NONE;
}

t_osc_err osc_message_u_format(t_osc_msg_u *m, long *buflen, char **buf)
{
	long mybuflen = 0, mybufpos = 0;
	t_osc_err e = osc_message_u_doFormat(m, &mybuflen, &mybufpos, buf);
	*buflen = mybufpos;
	return e;
}

t_osc_array *osc_message_array_u_alloc(long len)
{
	t_osc_array *ar = osc_array_allocWithSize(len, sizeof(t_osc_msg_u));
#ifdef OSC_ARRAY_CLEAR_ON_ALLOC
	osc_array_clear(ar);
#endif
	return ar;
}

void osc_message_array_u_free(t_osc_msg_ar_u *ar)
{
	if(ar){
		int i;
		int n = osc_message_array_u_getLen(ar);
		for(i = 0; i < n; i++){
			t_osc_msg_u *m = osc_message_array_u_get(ar, i);
			if(m){
				osc_message_u_clearArgs(m);
				if(m->address){
					osc_mem_free(m->address);
				}
			}
		}
		osc_array_free((t_osc_array *)ar);
	}
}

t_osc_array *osc_message_u_getArgArrayCopy(t_osc_msg_u *msg)
{
	t_osc_atom_ar_u *atom_array = osc_atom_array_u_alloc(osc_message_u_getArgCount(msg));
	t_osc_msg_it_u *it = osc_msg_it_u_get(msg);
	int i = 0;
	while(osc_msg_it_u_hasNext(it)){
		t_osc_atom_u *src = osc_msg_it_u_next(it);
		t_osc_atom_u *dest = osc_atom_array_u_get(atom_array, i);
		osc_atom_u_copy(&dest, src);
		i++;
	}
	osc_msg_it_u_destroy(it);
	return atom_array;
}
