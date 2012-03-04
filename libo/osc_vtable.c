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

/** 	\file osc_vtable.c
	\author John MacCallum

*/

#include <string.h>
#include <stdio.h>
#include "osc.h"
#include "osc_mem.h"
#include "osc_error.h"
#include "osc_bundle_s.h"
#include "osc_hashtab.h"
#include "osc_vtable.h"
#include "osc_vtable.r"

t_osc_vtable *osc_vtable_alloc(int num_entries){
	t_osc_vtable *vtab = osc_mem_alloc(sizeof(t_osc_vtable));
	vtab->entries = NULL;
	vtab->num_entries = 0;
	vtab->num_slots = 0;
	if(num_entries > 0){
		vtab->entries = osc_mem_alloc(num_entries * sizeof(t_osc_vtable_entry));
		vtab->num_entries = 0;
		vtab->num_slots = num_entries;
	}
	vtab->hashtab = osc_hashtab_new(num_entries, NULL);
	vtab->delegation_context = NULL;
	vtab->delegation_method = NULL;
	return vtab;
}

void osc_vtable_free(t_osc_vtable *vtab){
	int i;
	for(i = 0; i < osc_vtable_getNumEntries(vtab); i++){
		t_osc_vtable_entry *e = osc_vtable_getEntryByIndex(vtab, i);
		if(e->selector){
			osc_mem_free(e->selector);
		}
	}
	if(vtab->entries){
		osc_mem_free(vtab->entries);
	}
	if(vtab->hashtab){
		osc_hashtab_destroy(vtab->hashtab);
	}
}

void osc_vtable_setDelegationMethod(t_osc_vtable *vtab,
				    t_osc_vtable_delegation_method delegation_method,
			      	    void *delegation_context)
{
	vtab->delegation_method = delegation_method;
	vtab->delegation_context = delegation_context;
}

t_osc_err osc_vtable_addEntry(t_osc_vtable *vtab,
			      char *selector,
			      t_osc_vtable_method method,
			      void *context)
{
	if(vtab->num_entries >= vtab->num_slots){
		vtab->entries = osc_mem_resize(vtab->entries, ++(vtab->num_slots) * sizeof(t_osc_vtable_entry));
		if(!(vtab->entries)){
			return OSC_ERR_OUTOFMEM;
		}
	}
	t_osc_vtable_entry *entry = osc_vtable_getEntryBySelector(vtab, selector);
	if(entry){
		// already an entry with this selector.  blow away the old one.
		entry->method = method;
		entry->context = context;
		return OSC_ERR_NONE;
	}

	entry = &(vtab->entries[vtab->num_entries]);
	vtab->num_entries++;
	if(selector){
		int len = strlen(selector);
		entry->selector = osc_mem_alloc(len + 1);
		strncpy(entry->selector, selector, len);
		entry->selector[len] = '\0';
	}
	entry->method = method;
	entry->context = context;
	if(!(vtab->hashtab)){
		vtab->hashtab = osc_hashtab_new(-1, NULL);
	}
	// osc_hashtab_store doesn't make a copy of the key, so make sure to use the selector that we have 
	// allocated memory for.
	osc_hashtab_store(vtab->hashtab, strlen(entry->selector), entry->selector, entry);
	return OSC_ERR_NONE;

}

int osc_vtable_getNumEntries(t_osc_vtable *vtab){
	return vtab->num_entries;
}

int osc_vtable_getNumSlots(t_osc_vtable *vtab){
	return vtab->num_slots;
}

t_osc_vtable_entry *osc_vtable_getEntryByIndex(t_osc_vtable *vtab, int index){
	if(index >= vtab->num_entries){
		return NULL;
	}
	return &(vtab->entries[index]);
}

t_osc_vtable_entry *osc_vtable_getEntryBySelector(t_osc_vtable *vtab, char *selector){
	return osc_hashtab_lookup(vtab->hashtab, strlen(selector), selector);
}

int osc_vtable_getIndexForEntry(t_osc_vtable *vtab, t_osc_vtable_entry *e){
	if(e){
		return (e - vtab->entries);
	}
	return -1;
}

int osc_vtable_getIndexForSelector(t_osc_vtable *vtab, char *selector){
	t_osc_vtable_entry *e = osc_hashtab_lookup(vtab->hashtab, strlen(selector), selector);
	return osc_vtable_getIndexForEntry(vtab, e);
}

char *osc_vtable_entry_getSelector(t_osc_vtable_entry *e){
	return e->selector;
}

t_osc_err osc_vtable_rebindSelector(t_osc_vtable *vtab, char *selector, t_osc_vtable_method new_method){
	t_osc_vtable_entry *e = osc_vtable_getEntryBySelector(vtab, selector);
	if(!e){
		return OSC_ERR_INVAL;
	}
	e->method = new_method;
	return OSC_ERR_NONE;
}

t_osc_err osc_vtable_rebindSelectorWithContext(t_osc_vtable *vtab,
					       char *selector,
					       t_osc_vtable_method new_method,
					       void *new_context)
{
	t_osc_vtable_entry *e = osc_vtable_getEntryBySelector(vtab, selector);
	if(!e){
		return OSC_ERR_INVAL;
	}
	e->method = new_method;
	e->context = new_context;
	return OSC_ERR_NONE;
}

t_osc_err osc_vtable_renameEntry(t_osc_vtable *vtab, char *old_selector, char *new_selector){
	t_osc_vtable_entry *e = osc_vtable_getEntryBySelector(vtab, old_selector);
	if(!e){
		return OSC_ERR_INVAL;
	}
	int oldlen = strlen(old_selector);
	int newlen = strlen(new_selector);
	if(newlen > oldlen){
		e->selector = osc_mem_resize(e->selector, newlen + 1);
	}
	strncpy(e->selector, new_selector, newlen + 1);
	osc_hashtab_remove(vtab->hashtab, oldlen, old_selector, NULL);
	osc_hashtab_store(vtab->hashtab, newlen, new_selector, (void *)e);
	return OSC_ERR_NONE;
}

int osc_vtable_callWithEntry(t_osc_vtable *vtab,
			     t_osc_vtable_entry *e,
			     long bndllen,
			     char *bndl,
			     t_osc_bndl_s *partial_matches,
			     t_osc_bndl_s *complete_matches)
{
	e->method(e, bndllen, bndl, partial_matches, complete_matches, e->context);
	return 0;
}

int osc_vtable_call(t_osc_vtable *vtab,
		    char *selector,
		    long bndllen,
		    char *bndl,
		    t_osc_bndl_s *partial_matches,
		    t_osc_bndl_s *complete_matches)
{
	t_osc_vtable_entry *e = osc_hashtab_lookup(vtab->hashtab, strlen(selector), selector);
	if(!e){
		return 1;
	}
	return osc_vtable_callWithEntry(vtab, e, bndllen, bndl, partial_matches, complete_matches);
}

int osc_vtable_delegate(t_osc_vtable *vtab, long bndllen, char *bndl, t_osc_bndl_s *unmatched){
	vtab->delegation_method(bndllen, bndl, unmatched, vtab->delegation_context);
	return 0;
}

