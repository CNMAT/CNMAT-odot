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

/** 	\file osc_hashtab.h
	\author John MacCallum

*/
#ifndef __OSC_HASHTAB_H__
#define __OSC_HASHTAB_H__

#ifdef __cplusplus
extern "C" {
#endif

#define OSC_HASHTYPE32 uint32_t
#define OSC_HASHTYPE64 uint64_t

#ifdef __LP64__
#define OSC_HASHTYPE OSC_HASHTYPE64
#else
#define OSC_HASHTYPE OSC_HASHTYPE32
#endif

#define OSC_HASHTAB_DEFAULT_NUM_SLOTS 541 // big to avoid a rehash

typedef struct _osc_hashtab_elem t_osc_hashtab_elem;
typedef struct _osc_hashtab t_osc_hashtab;

typedef void (*t_osc_hashtab_dtor)(char *key, void *val);

t_osc_hashtab *osc_hashtab_new(int nslots, t_osc_hashtab_dtor dtor);
void osc_hashtab_store(t_osc_hashtab *ht, int keylen, char *key, void *val);
void osc_hashtab_storeSafe(t_osc_hashtab *ht, int keylen, char *key, void *val);
void *osc_hashtab_lookup(t_osc_hashtab *ht, int keylen, char *key);
void osc_hashtab_remove(t_osc_hashtab *ht, int keylen, char *key, t_osc_hashtab_dtor dtor);
void osc_hashtab_clear(t_osc_hashtab *ht);
void osc_hashtab_destroy(t_osc_hashtab *ht);
void osc_hashtab_foreach(t_osc_hashtab *ht, void (*cb)(char *key, void *val, void *context), void *context);

#ifdef __cplusplus
}
#endif

#endif // __OSC_HASHTAB_H__
