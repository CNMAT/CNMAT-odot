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
#include "osc_mem.h"
#include "osc_message_iterator_s.h"
#include "osc_message_iterator_s.r"
#include "osc_message_s.h"
#include "osc_message_s.r"
#include "osc_atom_s.h"
#include "osc_atom_s.r"

t_osc_msg_it_s *osc_message_iterator_s_getIterator(t_osc_msg_s *m){
	t_osc_msg_it_s *it = (t_osc_msg_it_s *)osc_mem_alloc(sizeof(t_osc_msg_it_s));
	it->msg = m;
	it->n = 0;
	it->dataptr = it->msg->data;
	return it;
}

void osc_message_iterator_s_destroyIterator(t_osc_msg_it_s *it){
	osc_mem_free(it);
}

void osc_message_iterator_s_resetIterator(t_osc_msg_it_s *it){
	it->n = 0;
	it->dataptr = it->msg->data;
}

t_osc_atom_s *osc_message_iterator_s_next(t_osc_msg_it_s *it){
	if(osc_message_s_getTypetag(it->msg, it->n) == '\0'){
		return NULL;
	}

	if(osc_message_s_getTypetag(it->msg, it->n) == '\0'){
		return NULL;
	}
	it->a = (t_osc_atom_s){it->dataptr, osc_message_s_getTypetag(it->msg, it->n)};
	if(it->msg->cache_size){
		it->dataptr += it->msg->data_size_cache[it->n];
	}else{
		it->dataptr += osc_sizeof(osc_message_s_getTypetag(it->msg, it->n), it->dataptr);
	}
	it->n++;
	return &(it->a);
}

int osc_message_iterator_s_hasNext(t_osc_msg_it_s *it){
	if(osc_message_s_getTypetag(it->msg, it->n) == '\0'){// || osc_message_s_getTypetag(it->msg, it->n + 1) == '\0'){
		return 0;
	}
	return 1;
}
