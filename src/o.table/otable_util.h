#ifndef __OTABLE_UTIL_H__
#define __OTABLE_UTIL_H__

#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_hashtab.h"
#include "ext_critical.h"
#include "maxdb.h"
#include "avl.h"
#include "osc.h"

typedef struct _otable_oscbndl{
	struct _otable_oscbndl *self; // reference to our self in case this is a copy
	long len; // osc bundle length
	char *ptr; // osc bundle
	t_symbol *key; // key associated with this bundle
	long long id; // numeric id
	struct _otable_oscbndl *next, *prev; // links can be used to assemble a list of bundles
} t_otable_oscbndl;

typedef void (*t_otable_oscbndl_dtor)(t_object *, t_otable_oscbndl *);

typedef struct _otable_db{
	t_maxdb maxdb;
	t_hashtab *ht;
	RUMATI_AVL_TREE *tree; // input order
	RUMATI_AVL_TREE *key_tree; // alpha sorted list of keys
	long long monotonic_counter;
	long long count;
} t_otable_db;
/*
typedef struct _otable_db{
	t_hashtab *ht;
	RUMATI_AVL_TREE *tree; // input order
	RUMATI_AVL_TREE *key_tree; // alpha sorted list of keys
	int refcount;
	long long monotonic_counter;
	int count;
	t_critical lock;
	t_symbol *name;
	t_otable_oscbndl_dtor dtor;
} t_otable_db;
*/

#define EMPTY_BUNDLE (t_otable_oscbndl){NULL, 0, NULL, NULL, 0, NULL, NULL};

void otable_util_init(void);
t_otable_oscbndl *otable_util_lookup(t_object *x, t_otable_db *db, int argc, t_atom *argv);
void otable_util_store(t_object *x, t_otable_db *db, int argc, t_atom *argv);
t_otable_oscbndl *otable_util_doStore(t_object *x, t_otable_db *db, t_symbol *key, long long id, long len, char *ptr);
void otable_util_remove(t_object *x, t_otable_db *db, int argc, t_atom *argv);
void otable_util_doRemove(t_object *x, t_otable_db *db, t_otable_oscbndl *bndl);
t_otable_oscbndl *otable_util_copybundle(t_object *x, t_otable_oscbndl *bndl);
t_otable_oscbndl *otable_util_deep_copybundle(t_object *x, t_otable_oscbndl *bndl);
t_otable_oscbndl *otable_util_makebundle(t_object *x, t_symbol *key, long long id, long len, char *ptr);
void otable_util_freebundle(t_object *x, t_otable_oscbndl *bndl);
void otable_util_getkeys(t_object *x, t_otable_db *db, long long *nkeys, t_symbol ***keys, int argc, t_atom *argv);
void otable_util_getindexes(t_object *x, t_otable_db *db, long long *nindexes, long long **indexes, int argc, t_atom *argv);
t_symbol *otable_util_mangle(char *datastructure, t_symbol *name);
t_otable_db *otable_util_refer(t_object *x, t_otable_db *db, t_symbol *name);
void otable_util_clear(t_object *x, t_otable_db *db);
void otable_util_read(t_object *x, t_otable_db *db, t_symbol *path);
void otable_util_write(t_object *x, t_otable_db *db, t_symbol *sym);
void otable_util_free(t_object *x, t_otable_db *db);
void otable_util_output(void *outlet, t_otable_oscbndl *bndl);
void otable_util_output_emptyBundle(void *outlet);
void otable_util_renumber(t_object *x, t_otable_db *db);
void otable_util_tag(t_object *x, t_otable_db *db, int argc, t_atom *argv);
int otable_util_comp_sym(void *udata, void *val1, void *val2);
int otable_util_comp(void *udata, void *value1, void *value2);
void otable_util_destroy_db(t_object *x, t_otable_db *db);
t_otable_db *otable_util_make_db(t_object *x, t_symbol *name);

#endif // __OTABLE_UTIL_H__
