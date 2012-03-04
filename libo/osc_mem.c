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
#include <string.h>
#include <inttypes.h>
#include "osc_mem.h"
#include "osc_byteorder.h"

static void *(*osc_mem_alloc_fp)(size_t size) = malloc;
static void (*osc_mem_free_fp)(void *ptr) = free;
static void *(*osc_mem_resize_fp)(void *ptr, size_t size) = realloc;

void *osc_mem_alloc(size_t size){
	void *p = osc_mem_alloc_fp(size);
	//printf("alloc %p\n", p);
	return p;
}

void *osc_mem_resize(void *ptr, size_t size){
	if(!ptr){
		return osc_mem_alloc_fp(size);
	}
	return osc_mem_resize_fp(ptr, size);
}

void osc_mem_free(void *ptr){
	//printf("free %p\n", ptr);
	osc_mem_free_fp(ptr);
}

void osc_set_mem(void *(*malloc_func)(size_t),
		 void (*free_func)(void*),
		 void *(*resize_func)(void*, size_t)){
	if(malloc_func){
		osc_mem_alloc_fp = malloc_func;
	}
	if(free_func){
		osc_mem_free_fp = free_func;
	}
	if(resize_func){
		osc_mem_resize_fp = resize_func;
	}
}

char osc_data_lengths[128] = {
	/*	0		*/	-1	,
	/*	1		*/	-1	,
	/*	2		*/	-1	,
	/*	3		*/	-1	,
	/*	4		*/	-1	,
	/*	5		*/	-1	,
	/*	6		*/	-1	,
	/*	7		*/	-1	,
	/*	8		*/	-1	,
	/*	9		*/	-1	,
	/*	10		*/	-1	,
	/*	11		*/	-1	,
	/*	12		*/	-1	,
	/*	13		*/	-1	,
	/*	14		*/	-1	,
	/*	15		*/	-1	,
	/*	16		*/	-1	,
	/*	17		*/	-1	,
	/*	18		*/	-1	,
	/*	19		*/	-1	,
	/*	20		*/	-1	,
	/*	21		*/	-1	,
	/*	22		*/	-1	,
	/*	23		*/	-1	,
	/*	24		*/	-1	,
	/*	25		*/	-1	,
	/*	26		*/	-1	,
	/*	27		*/	-1	,
	/*	28		*/	-1	,
	/*	29		*/	-1	,
	/*	30		*/	-1	,
	/*	31		*/	-1	,
	/*	32		*/	-1	,
	/*	33		*/	-1	,
	/*	34		*/	-1	,
	/*	35		*/	-1	,
	/*	36		*/	-1	,
	/*	37		*/	-1	,
	/*	38		*/	-1	,
	/*	39		*/	-1	,
	/*	40		*/	-1	,
	/*	41		*/	-1	,
	/*	42		*/	-1	,
	/*	43		*/	-1	,
	/*	44		*/	-1	,
	/*	45		*/	-1	,
	/*	46		*/	-1	,
	/*	47		*/	-1	,
	/*	48		*/	-1	,
	/*	49		*/	-1	,
	/*	50		*/	-1	,
	/*	51		*/	-1	,
	/*	52		*/	-1	,
	/*	53		*/	-1	,
	/*	54		*/	-1	,
	/*	55		*/	-1	,
	/*	56		*/	-1	,
	/*	57		*/	-1	,
	/*	58		*/	-1	,
	/*	59		*/	-1	,
	/*	60		*/	-1	,
	/*	61		*/	-1	,
	/*	62		*/	-1	,
	/*	63		*/	-1	,
	/*	64		*/	-1	,
	/*	65	A	*/	3	,
	/*	66	B	*/	-1	,
	/*	67	C	*/	4	,
	/*	68	D	*/	-1	,
	/*	69	E	*/	-1	,
	/*	70	F	*/	0	,
	/*	71	G	*/	-1	,
	/*	72	H	*/	8	,
	/*	73	I	*/	4	,
	/*	74	J	*/	16	,
	/*	75	K	*/	-1	,
	/*	76	L	*/	-1	,
	/*	77	M	*/	-1	,
	/*	78	N	*/	0	,
	/*	79	O	*/	-1	,
	/*	80	P	*/	-1	,
	/*	81	Q	*/	-1	,
	/*	82	R	*/	-1	,
	/*	83	S	*/	sizeof(char *)	,
	/*	84	T	*/	0	,
	/*	85	U	*/	4	,
	/*	86	V	*/	-1	,
	/*	87	W	*/	-1	,
	/*	88	X	*/	-1	,
	/*	89	Y	*/	-1	,
	/*	90	Z	*/	-1	,
	/*	91		*/	-1	,
	/*	92		*/	-1	,
	/*	93		*/	-1	,
	/*	94		*/	-1	,
	/*	95		*/	-1	,
	/*	96		*/	-1	,
	/*	97	a	*/	3	,
	/*	98	b	*/	sizeof(char *)	,
	/*	99	c	*/	4	,
	/*	100	d	*/	8	,
	/*	101	e	*/	-1	,
	/*	102	f	*/	4	,
	/*	103	g	*/	-1	,
	/*	104	h	*/	8	,
	/*	105	i	*/	4	,
	/*	106	j	*/	16	,
	/*	107	k	*/	-1	,
	/*	108	l	*/	-1	,
	/*	109	m	*/	4	,
	/*	110	n	*/	-1	,
	/*	111	o	*/	-1	,
	/*	112	p	*/	-1	,
	/*	113	q	*/	-1	,
	/*	114	r	*/	4	,
	/*	115	s	*/	sizeof(char *)	,
	/*	116	t	*/	8	,
	/*	117	u	*/	4	,
	/*	118	v	*/	-1	,
	/*	119	w	*/	-1	,
	/*	120	x	*/	-1	,
	/*	121	y	*/	-1	,
	/*	122	z	*/	-1	,
	/*	123		*/	-1	,
	/*	124		*/	-1	,
	/*	125		*/	-1	,
	/*	126		*/	-1	,
	/*	127		*/	-1		
};

size_t osc_sizeof(unsigned char typetag, char *data){
	if(typetag > 127){
		return -1;
	}
	switch(typetag){
	case 'b':
	case 's':
	case 'S':
		{
			int size = strlen(data);
			size++;
			while(size % 4){
				size++;
			}
			return size;
		}
	case '#':
		return ntoh32(*((uint32_t *)data)) + 4;
	default:
		return osc_data_lengths[typetag];
	}
}

int osc_mem_shouldByteswap(unsigned char typetag){
	switch(typetag){
		// signed ints
	case 'c':
	case 'u':
	case 'a':
	case 'i':
	case 'h':
	case 'j':
		// unsigned ints
	case 'C':
	case 'U':
	case 'A':
	case 'I':
	case 'H':
	case 'J':
		// floats
	case 'e':
	case 'f':
	case 'd':
	case 'q':
		return 1;
	default:
		return 0;
	}
}

t_osc_err osc_mem_encodeByteorder(unsigned char typetag, char *data, char **out){
	size_t size = osc_sizeof(typetag, data);
	if(!osc_mem_shouldByteswap(typetag)){
		memcpy(*out, data, size);
		return OSC_ERR_NONE;
	}
	char tmp[size];
	switch(size){
	case 1:
		break;
	case 2:
		*((uint16_t *)tmp) = hton16(*((uint16_t *)data));
		break;
	case 4:
		*((uint32_t *)tmp) = hton32(*((uint32_t *)data));
		break;
	case 8:
		*((uint64_t *)tmp) = hton64(*((uint64_t *)data));
		break;	
	case 16:
		*((uint128_t *)tmp) = hton128(*((uint128_t *)data));
		break;
	}
	memcpy(*out, tmp, size);
	return OSC_ERR_NONE;
}

t_osc_err osc_mem_decodeByteorder(unsigned char typetag, char *data, char **out){
	size_t size = osc_sizeof(typetag, data);
	if(!osc_mem_shouldByteswap(typetag)){
		memcpy(*out, data, size);
		return OSC_ERR_NONE;
	}	
	char tmp[size];
	switch(size){
	case 1:
		break;
	case 2:
		*((uint16_t *)tmp) = ntoh16(*((uint16_t *)data));
		break;
	case 4:
		*((uint32_t *)tmp) = ntoh32(*((uint32_t *)data));
		break;
	case 8:
		*((uint64_t *)tmp) = ntoh64(*((uint64_t *)data));
		break;
	case 16:
		*((uint128_t *)tmp) = ntoh128(*((uint128_t *)data));
		break;	
	}
	memcpy(*out, tmp, size);
	return OSC_ERR_NONE;
}
