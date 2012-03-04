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
#include "osc_message_u.h"
#include "osc_message_u.r"
#include "osc_bundle_u.h"
#include "osc_bundle_u.r"
#include "osc_bundle_iterator_u.h"
#include "osc_bundle_iterator_u.r"

t_osc_bndl_it_u *osc_bundle_iterator_u_getIterator(t_osc_bndl_u *bndl){
	t_osc_bndl_it_u *it = (t_osc_bndl_it_u *)osc_mem_alloc(sizeof(t_osc_bndl_it_u));
	if(!it){
		return NULL;
	}
	it->bndl = bndl;
	it->start.next = it->bndl->msghead;
	osc_bundle_iterator_u_resetIterator(it);
	return it;
}

void osc_bundle_iterator_u_destroyIterator(t_osc_bndl_it_u *it){
	osc_mem_free(it);
}

void osc_bundle_iterator_u_resetIterator(t_osc_bndl_it_u *it){
	it->msg = &(it->start);
}

t_osc_msg_u *osc_bundle_iterator_u_next(t_osc_bndl_it_u *it){
	if(it->msg){
		it->msg = it->msg->next;
	}
	return it->msg;
}

int osc_bundle_iterator_u_hasNext(t_osc_bndl_it_u *it){
	if(it->msg){
		if(it->msg->next){
			return 1;
		}
	}
	return 0;
}
