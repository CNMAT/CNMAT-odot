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
#include "osc_message_s.h"
#include "osc_message_s.r"
#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_bundle_iterator_s.r"

t_osc_bndl_it_s *osc_bundle_iterator_s_getIterator(long len, char *ptr){
	t_osc_bndl_it_s *it = (t_osc_bndl_it_s *)osc_mem_alloc(sizeof(t_osc_bndl_it_s));
	if(!it){
		return NULL;
	}
	it->len = len;
	it->bndl = ptr;
	osc_bundle_iterator_s_resetIterator(it);
	return it;
}

void osc_bundle_iterator_s_destroyIterator(t_osc_bndl_it_s *it){
	osc_mem_free(it);
}

void osc_bundle_iterator_s_resetIterator(t_osc_bndl_it_s *it){
	it->msgptr = it->bndl;
	osc_message_s_initMsg(&(it->msg));
	//osc_message_s_wrap(&(it->msg), it->bndl + OSC_HEADER_SIZE);
}

t_osc_msg_s *osc_bundle_iterator_s_next(t_osc_bndl_it_s *it){
	if(it->msgptr == it->bndl){
		it->msgptr += OSC_HEADER_SIZE;
		osc_message_s_wrap(&(it->msg), it->msgptr);
		return &(it->msg);
	}
	if(it->msgptr - it->bndl < it->len){
		it->msgptr += osc_message_s_getSize(&(it->msg)) + 4;
	}else{
		osc_message_s_initMsg(&(it->msg));
		return &(it->msg);
	}
	if(it->msgptr - it->bndl < it->len){
		osc_message_s_wrap(&(it->msg), it->msgptr);
		return &(it->msg);
	}else{
		osc_message_s_initMsg(&(it->msg));
		return &(it->msg);
	}
}

int osc_bundle_iterator_s_hasNext(t_osc_bndl_it_s *it){
	if((it->msgptr - it->bndl >= it->len) || (it->len == OSC_HEADER_SIZE) || (it->msgptr == NULL)){
		return 0;
	}
	if(it->msgptr == it->bndl && it->len > OSC_HEADER_SIZE){
		return 1;
	}
	if((it->msgptr + osc_message_s_getSize(&(it->msg)) + 4) - it->bndl >= it->len){
		return 0;
	}
	return 1;
}
