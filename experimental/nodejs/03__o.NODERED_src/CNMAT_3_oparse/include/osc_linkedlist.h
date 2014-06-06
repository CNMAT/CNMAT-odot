/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2013, The Regents of
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

/** 	\file osc_linkedlist.h
	\author John MacCallum

*/
#ifndef __OSC_LINKEDLIST_H__
#define __OSC_LINKEDLIST_H__

#ifdef __cplusplus
extern "C" {
#endif

typedef struct _osc_linkedlist_elem t_osc_linkedlist_elem;
typedef struct _osc_linkedlist t_osc_linkedlist;

typedef void (*t_osc_linkedlist_dtor)(void *data);

t_osc_linkedlist *osc_linkedlist_new(t_osc_linkedlist_dtor dtor);
void osc_linkedlist_clear(t_osc_linkedlist *ll);
t_osc_linkedlist *osc_linkedlist_clone(t_osc_linkedlist *ll, void (*copydata)(void**, void*));
void osc_linkedlist_destroy(t_osc_linkedlist *ll);
void osc_linkedlist_prepend(t_osc_linkedlist *ll, void *data);
void osc_linkedlist_append(t_osc_linkedlist *ll, void *data);
void *osc_linkedlist_peekHead(t_osc_linkedlist *ll);
void *osc_linkedlist_peekTail(t_osc_linkedlist *ll);
void *osc_linkedlist_peekNth(t_osc_linkedlist *ll, int n);
void *osc_linkedlist_popHead(t_osc_linkedlist *ll);
void *osc_linkedlist_popTail(t_osc_linkedlist *ll);
void *osc_linkedlist_popNth(t_osc_linkedlist *ll, int n);
void osc_linkedlist_iterate(t_osc_linkedlist *ll, void (*cb)(void*, int, void*), void *context);
unsigned long osc_linkedlist_getCount(t_osc_linkedlist *ll);

#ifdef __cplusplus
}
#endif

#endif // __OSC_LINKEDLIST_H__
