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
#include "osc_message.h"
#include "osc_byteorder.h"

t_osc_msg *osc_message_alloc(void){
	t_osc_msg *m = (t_osc_msg *)osc_mem_alloc(sizeof(t_osc_msg));
	if(!m){
		return NULL;
	}
	m->size = 0;
	m->address = NULL;
	m->typetags = m->typetags_start = NULL;
	m->typetag_buffer_pos = 0;
	m->typetag_buffer_size = 0;
	m->argv = m->argv_start = NULL;
	m->argv_buffer_pos = 0;
	m->argv_buffer_size = 0;
	m->next = m->prev = NULL;
	m->free_internal_buffers = 0;
	m->argc = 0;
	return m;
}

void osc_message_free_internal_buffers(t_osc_msg *m){
	if(m->address){
		osc_mem_free(m->address);
	}
	if(m->typetags){
		osc_mem_free(m->typetags);
	}
	if(m->argv){
		osc_mem_free(m->argv);
	}
}

void osc_message_free(t_osc_msg *m){
	if(m->free_internal_buffers){
		osc_message_free_internal_buffers(m);
	}
	osc_mem_free(m);
}

void osc_message_freeList(t_osc_msg *m){
	while(m){
		t_osc_msg *next = m->next;
		osc_message_free(m);
		m = next;
	}
}

t_osc_err osc_message_deepCopy(t_osc_msg **dest, t_osc_msg *source){
	if(!source){
		return OSC_ERR_MSGTOOSMALL;
	}
	if(!(*dest)){
		*dest = osc_message_alloc();
		if(!(*dest)){
			return OSC_ERR_OUTOFMEM;
		}
	}
	(*dest)->size = source->size;
	(*dest)->address = (char *)osc_mem_alloc(strlen(source->address));
	strcpy((*dest)->address, source->address);
	
	(*dest)->typetags = (char *)osc_mem_alloc(source->typetag_buffer_size);
	memset((*dest)->typetags, '\0', source->typetag_buffer_size);
	memcpy((*dest)->typetags, source->typetags, source->typetag_buffer_pos);
	(*dest)->typetag_buffer_pos = source->typetag_buffer_pos;
	(*dest)->typetag_buffer_size = source->typetag_buffer_size;
	
	(*dest)->argv = (char *)osc_mem_alloc(source->typetag_buffer_size);
	memset((*dest)->argv, '\0', source->typetag_buffer_size);
	memcpy((*dest)->argv, source->argv, source->typetag_buffer_pos);
	(*dest)->argv_buffer_pos = source->argv_buffer_pos;
	(*dest)->argv_buffer_size = source->argv_buffer_size;
	(*dest)->argc = source->argc;

	(*dest)->argv_start = (*dest)->argv;
	(*dest)->typetags_start = (*dest)->typetags;
	
	(*dest)->next = source->next;
	(*dest)->prev = source->prev;
	
	(*dest)->free_internal_buffers = 1;
	return OSC_ERR_NONE;
}

t_osc_err osc_message_parseMessage(int n, char *buf, t_osc_msg *osc_msg){
	if(!osc_msg){
		return OSC_ERR_NOBUNDLE;
	}
	char *ptr = buf;

	if(*buf == '/'){
		if(n > 0){
			osc_msg->size = n;
		}else{
			return OSC_ERR_MSGTOOSMALL;
		}
	}else if(*(buf + 4) == '/'){
		osc_msg->size = ntoh32(*((uint32_t *)buf));
		if(osc_msg->size <= 0){
			return OSC_ERR_MSGTOOSMALL;
		}
		ptr += 4;
	}else{
		return OSC_ERR_MALFORMEDMSG;
	}
	
	osc_msg->address = NULL;
	osc_msg->typetags = NULL;
	osc_msg->argv = NULL;

	osc_msg->size = n;
	osc_msg->address = ptr;
	while(*ptr++){}
	while((ptr - buf) % 4){
		ptr++;
	}
	if(ptr - buf == n){
		// this message just has an address with no data
		return OSC_ERR_NONE;
	}
	// typetags are required
	if(*ptr != ','){
		printf("no typetags! %c\n", *ptr);
		return OSC_ERR_NONE;
	}
	// we set the typetags pointer to point to the , so that the first call to osc_util_incrementArg will set it to the first
	// actual argument so that you can just go while(osc_util_incrementArg(...)){}
	osc_msg->typetags = ptr;
	osc_msg->typetags_start = ptr;
	ptr++;

	while(*ptr){
		ptr++;
	}
	osc_msg->argc = ptr - osc_msg->typetags - 1;
	if(osc_msg->argc == 0){
		return OSC_ERR_NONE;
	}
	ptr++;
	while((ptr - buf) % 4){
		ptr++;
	}
	osc_msg->argv = ptr;
	osc_msg->argv_start = ptr;
	return OSC_ERR_NONE;
}

int osc_message_rename(int len, char *buffer, char *new_address, char **new_buffer){
	if(!buffer){
		return 0;
	}
	if(*buffer != '/'){
		buffer += 4; // assume first 4 bytes are size
		if(*buffer != '/'){
			return 0;
		}
	}
	int new_address_len = strlen(new_address);
	int new_address_len_nullpadded = new_address_len;
	new_address_len_nullpadded++;
	while(new_address_len_nullpadded % 4){
		new_address_len_nullpadded++;
	}
	int old_address_len_nullpadded = strlen(buffer); // if there was a size, we skipped over it
	old_address_len_nullpadded++;
	while(old_address_len_nullpadded % 4){
		old_address_len_nullpadded++;
	}
	int newlen = len - old_address_len_nullpadded + new_address_len_nullpadded;
	char newbuf[newlen];
	memset(newbuf, '\0', newlen);
	char *ptr = newbuf + 4;
	memcpy(ptr, new_address, new_address_len);
	ptr += new_address_len;
	ptr++;
	while((ptr - newbuf) % 4){
		ptr++;
	}
	memcpy(ptr, buffer + old_address_len_nullpadded, len - old_address_len_nullpadded);
	*((uint32_t *)newbuf) = ntoh32(newlen);
	if(!(*new_buffer)){
		*new_buffer = (char *)osc_mem_alloc(newlen);
	}
	memcpy(*new_buffer, newbuf, newlen + 4);
	return newlen + 4;
}

uint32_t osc_message_getSize_s(char *buf){
	if(!buf){
		return 0;
	}
	return ntoh32(*((uint32_t *)buf));
}

int osc_message_getArgCount(t_osc_msg *msg){
	if(!msg){
		return 0;
	}
	if(!(msg->typetags)){
		return 0;
	}
	if(msg->typetags){
		return strlen(msg->typetags) - 1;
	}
	return 0;
}

int osc_message_incrementArg(t_osc_msg *msg){
	if(!msg->typetags || msg->argc == 0){
		return 0;
	}
	char tt = *(msg->typetags);
	if(tt == ','){
		msg->typetags += 1;
		return 1;
	}
	msg->typetags += 1;
	msg->argc--;
	if(msg->typetags == '\0' || msg->argc == 0){
		return 0;
	}
	int size = osc_sizeof(tt, msg->argv);
	msg->argv += size;
	return 1;
}

void osc_message_resetArgs(t_osc_msg *msg){
	msg->typetags = msg->typetags_start;
	msg->argv = msg->argv_start;
}

t_osc_err osc_message_formatMsg(t_osc_msg *msg, long *buflen, long *bufpos, char **buf){
	t_osc_msg m = *msg;
	if((*buflen - *bufpos) < 256){
		*buf = osc_mem_resize(*buf, *buflen + 1024);
		if(!(*buf)){
			return OSC_ERR_OUTOFMEM;
		}
		*buflen += 1024;
	}
	*bufpos += sprintf(*buf + *bufpos, "%s ", m.address);
	while(osc_message_incrementArg(&m)){
		if((*buflen - *bufpos) < 256){
			*buf = osc_mem_resize(*buf, *buflen + 1024);
			if(!(*buf)){
				return OSC_ERR_OUTOFMEM;
			}
			*buflen += 1024;
		}
		switch(*(m.typetags)){
		case 'i':
			*bufpos += sprintf(*buf + *bufpos, "%d ", ntoh32(*((int32_t *)m.argv)));
			break;
		case 'f':
			{
				uint32_t l = ntoh32(*((int32_t *)m.argv));
				*bufpos += sprintf(*buf + *bufpos, "%f ", *((float *)&l));
			}
			break;
		case 'h':
		case 't':
			*bufpos += sprintf(*buf + *bufpos, "%lld ", ntoh64(*((int64_t *)m.argv)));
			break;
		case 'd':
			{
				uint64_t l = ntoh64(*((int64_t *)m.argv));
				*bufpos += sprintf(*buf + *bufpos, "%f ", *((double *)&l));
			}
			break;
		case 's':
		case 'S':
			*bufpos += sprintf(*buf + *bufpos, "%s ", m.argv);
			break;
		case 'c':
			*bufpos += sprintf(*buf + *bufpos, "%c ", *(m.argv));
			break;
		case 'T':
			*bufpos += sprintf(*buf + *bufpos, "True ");
			break;
		case 'F':
			*bufpos += sprintf(*buf + *bufpos, "False ");
			break;
		case 'N':
			*bufpos += sprintf(*buf + *bufpos, "Nil ");
			break;
		case 'I':
			*bufpos += sprintf(*buf + *bufpos, "Infinitum ");
			break;
		case 'b':
			{
				int j, n = osc_sizeof(*(m.typetags), m.argv);
				*bufpos += sprintf(*buf + *bufpos, "blob (%d bytes): ", n);
				for(j = 0; j < n; j++){
					*bufpos += sprintf(*buf + *bufpos, "%d ", m.argv[j]);
				}
			}
		case '#':
			{
				*bufpos += sprintf(*buf + *bufpos, "[\n");
				osc_bundle_formatBndl(ntoh32(*((uint32_t *)m.argv)), m.argv + 4, buflen, bufpos, buf);
				*bufpos += sprintf(*buf + *bufpos, "]");
			}
			break;
		}
	}
	*bufpos += sprintf(*buf + *bufpos, "\n");
}

void osc_message_printMsg(t_osc_msg *msg, int (*p)(const char *, ...)){
	p("\t%d ", msg->size);
	p("%s ", msg->address);
	while(osc_message_incrementArg(msg)){
		switch(*(msg->typetags)){
		case 'i':
			p("%d ", ntoh32(*((int32_t *)msg->argv)));
			break;
		case 'f':
			{
				uint32_t l = ntoh32(*((int32_t *)msg->argv));
				p("%f ", *((float *)&l));
			}
			break;
		case 'h':
		case 't':
			p("%lld ", ntoh64(*((int64_t *)msg->argv)));
			break;
		case 'd':
			{
				uint64_t l = ntoh64(*((int64_t *)msg->argv));
				p("%f ", *((double *)&l));
			}
			break;
		case 's':
		case 'S':
			p("%s ", msg->argv);
			break;
		case 'c':
			p("%c ", *(msg->argv));
			break;
		case 'T':
			p("True ");
			break;
		case 'F':
			p("False ");
			break;
		case 'N':
			p("Nil ");
			break;
		case 'I':
			p("Infinitum ");
			break;
		case 'b':
			{
				int j, n = osc_sizeof(*(msg->typetags), msg->argv);
				p("blob (%d bytes): ", n);
				for(j = 0; j < n; j++){
					p("%d ", msg->argv[j]);
				}
			}
		case '#':
			{
				osc_bundle_printBundle(ntoh32(*((uint32_t *)msg->argv)), msg->argv + 4, p);
			}
			break;
		}
	}
	p("\n");
	osc_message_resetArgs(msg);	
}

int osc_message_getSize(t_osc_msg *m){
	if(m->size){
		return m->size;
	}
	int size = 0;
	size += strlen(m->address);
	size++;
	while(size % 4){
		size++;
	}
	size += m->typetag_buffer_pos;
	size++;
	while(size % 4){
		size++;
	}
	size += m->argv_buffer_pos;
	return size;
}

int osc_message_serialize(t_osc_msg *m, char *buffer){
	char *ptr = buffer;
	char *sizeptr = buffer;
	ptr = ptr + 4;
	char *tmp = m->address;
	if(!tmp){
		return 0;
	}
	while(*tmp){
		*ptr++ = *tmp++;
	}
	*ptr++ = '\0';
	while((ptr - buffer) % 4){
		*ptr++ = '\0';
	}
	if(!(m->typetags)){
		*ptr++ = ',';
		*ptr++ = '\0';
		*ptr++ = '\0';
		*ptr++ = '\0';
		goto out;
	}
	if(*(m->typetags) != ','){
		*ptr++ = ',';
	}
	memcpy(ptr, m->typetags, m->typetag_buffer_pos);
	ptr += m->typetag_buffer_pos;
	*ptr++ = '\0';
	while((ptr - buffer) % 4){
		*ptr++ = '\0';
	}

	memcpy(ptr, m->argv, m->argv_buffer_pos);
	ptr += m->argv_buffer_pos;
	/*
	while((ptr - buffer) % 4){
		*ptr++ = '\0';
	}
	*/
 out:
	*((uint32_t *)buffer) = hton32((ptr - buffer) - 4);
	return ptr - buffer;
}

t_osc_err osc_message_setSize(t_osc_msg *m){
	m->size = 0;
	if(m->address){
		m->size += strlen(m->address);
		m->size++;
		while(m->size % 4){
			m->size++;
		}
	}
	m->size += m->typetag_buffer_pos;
	m->size++;
	while(m->size % 4){
		m->size++;
	}
	m->size += m->argv_buffer_pos;
	return OSC_ERR_NONE;
}

t_osc_err osc_message_setAddress(t_osc_msg *m, char *address){
	int len = strlen(address) + 1;
	if(m->address){
		if(strlen(m->address) < len){
			char *tmp = NULL;
			tmp = (char *)osc_mem_resize(m->address, len);
			if(!tmp){
				return OSC_ERR_OUTOFMEM;
			}
			m->address = tmp;
		}
	}else{
		m->address = (char *)osc_mem_alloc(len);
	}
	memcpy(m->address, address, len - 1);
	m->address[len - 1] = '\0';
	osc_message_setSize(m);
	return OSC_ERR_NONE;
}

t_osc_err osc_message_addData(t_osc_msg *m, int ntypetags, char *typetags, int argv_len_bytes, char *argv){
	if(!(m->typetags)){
		m->typetags = osc_mem_alloc(ntypetags + 2);
		memset(m->typetags, '\0', ntypetags + 2);
		m->typetag_buffer_size = ntypetags + 2;
		*(m->typetags) = ',';
		m->typetags_start = m->typetags;
		m->typetag_buffer_pos = 1;
	}else if((ntypetags + m->typetag_buffer_pos) > (m->typetag_buffer_size - 1)){
		char *tmp = (char *)osc_mem_resize(m->typetags, ntypetags + m->typetag_buffer_size);
		if(!tmp){
			return OSC_ERR_OUTOFMEM;
		}
		m->typetags = tmp;
		m->typetags_start = tmp;
		m->typetag_buffer_size += ntypetags;
		memset(m->typetags + m->typetag_buffer_pos, '\0', (m->typetag_buffer_size - m->typetag_buffer_pos));
	}
	memcpy(m->typetags + m->typetag_buffer_pos, typetags, ntypetags);
	m->typetag_buffer_pos += ntypetags;
	m->argc += ntypetags;
	
	if(m->argv == NULL){
		m->argv = (char *)osc_mem_alloc(argv_len_bytes);
		m->argv_buffer_size = argv_len_bytes;
		m->argv_buffer_pos = 0;
	}
	if((argv_len_bytes + m->argv_buffer_pos) > m->argv_buffer_size){
		char *tmp = (char *)osc_mem_resize(m->argv, argv_len_bytes + m->argv_buffer_size);
		if(!tmp){
			return OSC_ERR_OUTOFMEM;
		}
		m->argv = tmp;
		m->argv_start = tmp;
		m->argv_buffer_size += argv_len_bytes;
	}
	char *ptr = argv;
	int i = 0;
	while((ptr - argv) < argv_len_bytes){
		if(i >= ntypetags){
			return OSC_ERR_BADTYPETAG;
		}
		size_t size = osc_sizeof(typetags[i], ptr);
		char *tmp = m->argv + m->argv_buffer_pos;
		osc_mem_encodeByteorder(typetags[i], ptr, &tmp);
		m->argv_buffer_pos += size;
		i++;
		ptr += size;
	}
	osc_message_setSize(m);
}

void osc_message_clear(t_osc_msg *m){
	memset((char *)m, '\0', sizeof(t_osc_msg));
}
