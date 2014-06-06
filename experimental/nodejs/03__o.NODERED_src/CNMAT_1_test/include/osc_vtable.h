/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2011, The Regents of
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

/** 	\file osc_vtable.h
	\author John MacCallum

*/

#ifndef __OSC_VTABLE_H__
#define __OSC_VTABLE_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_bundle_s.h"
#include "osc_atom_u.h"
#include "osc_atom_array_u.h"

typedef struct _osc_vtable t_osc_vtable;
typedef struct _osc_vtable_entry t_osc_vtable_entry;

typedef void (*t_osc_vtable_method)(t_osc_vtable_entry *e,
				    long bndllen,
				    char *bndl,
				    t_osc_bndl_s *partial_matches,
				    t_osc_bndl_s *complete_matches,
				    void *context);

typedef void (*t_osc_vtable_delegation_method)(long bndllen, char *bndl, t_osc_bndl_s *unmatched, void *context);

t_osc_vtable *osc_vtable_alloc(int num_entries);
void osc_vtable_free(t_osc_vtable *vtab);
void osc_vtable_setDelegationMethod(t_osc_vtable *vtab,
			      t_osc_vtable_delegation_method delegation_method,
			      void *delegation_context);
t_osc_err osc_vtable_addEntry(t_osc_vtable *vtab,
			      char *selector,
			      t_osc_vtable_method method,
			      void *context);
t_osc_vtable_entry *osc_vtable_getEntryByIndex(t_osc_vtable *vtab, int index);
t_osc_vtable_entry *osc_vtable_getEntryBySelector(t_osc_vtable *vtab, char *selector);
char *osc_vtable_entry_getSelector(t_osc_vtable_entry *e);
t_osc_err osc_vtable_rebindSelector(t_osc_vtable *vtab, char *selector, t_osc_vtable_method new_method);
int osc_vtable_getIndexForEntry(t_osc_vtable *vtab, t_osc_vtable_entry *e);
int osc_vtable_getIndexForSelector(t_osc_vtable *vtab, char *selector);
t_osc_err osc_vtable_rebindSelectorWithContext(t_osc_vtable *vtab,
					       char *selector,
					       t_osc_vtable_method new_method,
					       void *new_context);
t_osc_err osc_vtable_renameEntry(t_osc_vtable *vtab, char *old_selector, char *new_selector);

int osc_vtable_callWithEntry(t_osc_vtable *vtab,
			     t_osc_vtable_entry *e,
			     long bndllen,
			     char *bndl,
			     t_osc_bndl_s *partial_matches,
			     t_osc_bndl_s *complete_matches);
int osc_vtable_call(t_osc_vtable *vtab,
		    char *selector,
		    long bndllen,
		    char *bndl,
		    t_osc_bndl_s *partial_matches,
		    t_osc_bndl_s *complete_matches);
int osc_vtable_delegate(t_osc_vtable *vtab, long bndllen, char *bndl, t_osc_bndl_s *unmatched);
int osc_vtable_getNumEntries(t_osc_vtable *vtab);
int osc_vtable_getNumSlots(t_osc_vtable *vtab);

#ifdef __cplusplus
}
#endif

#endif // __OSC_VTABLE_H__
