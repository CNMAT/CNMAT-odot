#include "otable_util.h"
#include "osc_mem.h"
#include "osc_bundle_s.h"

typedef struct _otable_range{
	t_atom min;
	t_atom max;
} t_otable_range;

typedef struct _otable_args{
	t_symbol *key;
	long long index;
	t_otable_range range;
	t_symbol *keyword;
	long len;
	char *ptr;
	uint64_t found;
} t_otable_args;

typedef struct _otable_args_offsets{
	char key;
	char index;
	char range;
	char keyword;
	char len;
	char ptr;
} t_otable_args_offsets;

#define OTABLE_UTIL_SET_ARG(args_struct, arg, val) {				\
		args_struct->arg = val;				\
		args_struct->found |= (1 << calcoffset(t_otable_args_offsets, arg)); \
	}
#define OTABLE_UTIL_HAVE_ARG(args_struct, arg) (args_struct.found & (1 << calcoffset(t_otable_args_offsets, arg)))

#define OTABLE_UTIL_ARGSTRUCT(name) \
	t_otable_args name;\
	memset(&name, '\0', sizeof(t_otable_args))

// private
void otable_util_doread(t_object *x, t_symbol *sym, int argc, t_atom *argv);
void otable_util_dowrite(t_object *x, t_symbol *sym, int argc, t_atom *argv);
void otable_util_postArgs(t_otable_args argstruct);
void otable_util_parseArgs(t_object *x, t_otable_args *argstruct, int argc, t_atom *argv);
int otable_util_getDirection(t_object *x, int argc, t_atom *argv);

static t_symbol *ps_FullPacket, 
	*ps_gt, 
	*ps_gte, 
	*ps_lt, 
	*ps_lte, 
	*ps_next, 
	*ps_prev, 
	*ps_firstkey, 
	*ps_firstindex, 
	*ps_lastkey, 
	*ps_lastindex, 
	*ps_range;

// implementation

void otable_util_init(void)
{
	ps_FullPacket = gensym("FullPacket");
	ps_gt = gensym(">");
	ps_gte = gensym(">=");
	ps_lt = gensym("<");
	ps_lte = gensym("<=");
	ps_next = gensym("next");
	ps_prev = gensym("prev");
	ps_firstkey = gensym("firstkey");
	ps_lastkey = gensym("lastkey");
	ps_firstindex = gensym("firstindex");
	ps_lastindex = gensym("lastindex");
	ps_range = gensym("range");
}

void otable_util_postArgs(t_otable_args argstruct)
{
	if(OTABLE_UTIL_HAVE_ARG(argstruct, key)){
		post("found key: %s", argstruct.key->s_name);
	}
	if(OTABLE_UTIL_HAVE_ARG(argstruct, index)){
		post("found index: %llu", argstruct.index);
	}
	if(OTABLE_UTIL_HAVE_ARG(argstruct, len)){
		post("found len: %ld", argstruct.len);
	}
	if(OTABLE_UTIL_HAVE_ARG(argstruct, ptr)){
		post("found ptr: %p", argstruct.ptr);
	}
	if(OTABLE_UTIL_HAVE_ARG(argstruct, keyword)){
		post("found keyword: %s", argstruct.keyword->s_name);
	}
	if(OTABLE_UTIL_HAVE_ARG(argstruct, range)){
		if(atom_gettype(&(argstruct.range.min)) == A_SYM){
			post("found range: %s %s", atom_getsym(&(argstruct.range.min))->s_name, atom_getsym(&(argstruct.range.max))->s_name);
		}else{
			post("found range: %f %f", atom_getfloat(&(argstruct.range.min)), atom_getfloat(&(argstruct.range.max)));
		}
	}
}

void otable_util_parseArgs(t_object *x, t_otable_args *argstruct, int argc, t_atom *argv)
{
	if(argc == 0){
		return;
	}
	long type = atom_gettype(argv);
	switch(type){
	case A_LONG:
		OTABLE_UTIL_SET_ARG(argstruct, index, atom_getlong(argv));
		otable_util_parseArgs(x, argstruct, argc - 1, argv + 1);
		break;
	case A_SYM:
		{
			t_symbol *sym = atom_getsym(argv);
			if(sym == ps_FullPacket){
				OTABLE_UTIL_SET_ARG(argstruct, len, atom_getlong(argv + 1));
				OTABLE_UTIL_SET_ARG(argstruct, ptr, (char *)atom_getlong(argv + 2));
				otable_util_parseArgs(x, argstruct, argc - 3, argv + 3);
			}else if(sym == gensym("index")){
				OTABLE_UTIL_SET_ARG(argstruct, index, atom_getlong(argv + 1));
				otable_util_parseArgs(x, argstruct, argc - 2, argv + 2);
			}else if(sym == gensym("key")){
				OTABLE_UTIL_SET_ARG(argstruct, key, atom_getsym(argv + 1));
				otable_util_parseArgs(x, argstruct, argc - 2, argv + 2);
			}else if(sym == ps_gt || sym == ps_gte ||
				 sym == ps_lt || sym == ps_lte ||
				 sym == ps_next || sym == ps_prev || // synonyms for gt and lt
				 sym == ps_firstkey || sym == ps_lastkey ||
				 sym == ps_firstindex || sym == ps_lastindex){
				OTABLE_UTIL_SET_ARG(argstruct, keyword, sym);
				otable_util_parseArgs(x, argstruct, argc - 1, argv + 1);
			}else if(sym == ps_range){
				if(atom_gettype(argv + 1) == atom_gettype(argv + 2)){
					OTABLE_UTIL_SET_ARG(argstruct, range, ((t_otable_range){argv[1], argv[2]}));
				}else{
					object_error(x, "bad arguments to lookup range <sym> <sym> or lookup range <int> <int>");
				}
				otable_util_parseArgs(x, argstruct, argc - 3, argv + 3); // range min max
			}else{
				OTABLE_UTIL_SET_ARG(argstruct, key, atom_getsym(argv));
				otable_util_parseArgs(x, argstruct, argc - 1, argv + 1);
			}
		}
		break;
	default:
		object_error(x, "unrecognized argument");
		return;
	}
}

t_otable_oscbndl *otable_util_lookup(t_object *x, t_otable_db *db, int argc, t_atom *argv)
{
	maxdb_lock((t_maxdb *)db);
	OTABLE_UTIL_ARGSTRUCT(argstruct);

	otable_util_parseArgs(x, &argstruct, argc, argv);
	t_otable_oscbndl *bndl = NULL;
	if(OTABLE_UTIL_HAVE_ARG(argstruct, keyword)){
		if(argstruct.keyword == ps_firstkey){
			t_symbol *key = rumati_avl_get_smallest(db->key_tree);
			if(key){
				t_otable_oscbndl b = EMPTY_BUNDLE;
				b.key = key;
				bndl = rumati_avl_get(db->tree, &b);
			}
		}else if(argstruct.keyword == ps_lastkey){
			t_symbol *key = rumati_avl_get_greatest(db->key_tree);
			if(key){
				t_otable_oscbndl b = EMPTY_BUNDLE;
				b.key = key;
				bndl = rumati_avl_get(db->tree, &b);
			}
		}else if(argstruct.keyword == ps_firstindex){
			bndl = rumati_avl_get_smallest(db->tree);
		}else if(argstruct.keyword == ps_lastindex){
			bndl = rumati_avl_get_greatest(db->tree);
		}
		if(bndl){
			// copy
			bndl = otable_util_makebundle(x, bndl->key, bndl->id, bndl->len, bndl->ptr);
			maxdb_unlock((t_maxdb *)db);
			return bndl;
		}
	}
	if(!bndl){
		if(OTABLE_UTIL_HAVE_ARG(argstruct, key)){
			t_hashtab *ht = db->ht;
			t_symbol *key = argstruct.key;
			if(OTABLE_UTIL_HAVE_ARG(argstruct, keyword)){
				if(argstruct.keyword == ps_lt || argstruct.keyword == ps_prev){
					key = rumati_avl_get_less_than(db->key_tree, key);
				}else if(argstruct.keyword == ps_lte){
					key = rumati_avl_get_less_than_or_equal(db->key_tree, key);
				}else if(argstruct.keyword == ps_gt || argstruct.keyword == ps_next){
					key = rumati_avl_get_greater_than(db->key_tree, key);
				}else if(argstruct.keyword == ps_gte){
					key = rumati_avl_get_greater_than_or_equal(db->key_tree, key);
				}else{
					object_error(x, "unrecognized keyword %s", argstruct.keyword->s_name);
				}
			}
			if(key){
				hashtab_lookup(ht, key, (t_object **)(&bndl));
			}
			if(bndl){
				// copy
				bndl = otable_util_makebundle(x, bndl->key, bndl->id, bndl->len, bndl->ptr);
				maxdb_unlock((t_maxdb *)db);
				return bndl;
			}
		}else if(OTABLE_UTIL_HAVE_ARG(argstruct, index)){
			long long index = argstruct.index;
			if(OTABLE_UTIL_HAVE_ARG(argstruct, keyword)){
				if(argstruct.keyword == ps_lt || argstruct.keyword == ps_prev){
					t_otable_oscbndl b = EMPTY_BUNDLE;
					b.id = index;
					bndl = rumati_avl_get_less_than(db->tree, &b);
				}else if(argstruct.keyword == ps_lte){
					t_otable_oscbndl b = EMPTY_BUNDLE;
					b.id = index;
					bndl = rumati_avl_get_less_than_or_equal(db->tree, &b);
				}else if(argstruct.keyword == ps_gt || argstruct.keyword == ps_next){
					t_otable_oscbndl b = EMPTY_BUNDLE;
					b.id = index;
					bndl = rumati_avl_get_greater_than(db->tree, &b);
				}else if(argstruct.keyword == ps_gte){
					t_otable_oscbndl b = EMPTY_BUNDLE;
					b.id = index;
					bndl = rumati_avl_get_greater_than_or_equal(db->tree, &b);
				}else{
					object_error(x, "unrecognized keyword %s", argstruct.keyword->s_name);
				}
			}else{
				t_otable_oscbndl b = EMPTY_BUNDLE;
				b.id = index;
				bndl = rumati_avl_get(db->tree, &b);
			}
			if(bndl){
				// copy
				bndl = otable_util_makebundle(x, bndl->key, bndl->id, bndl->len, bndl->ptr);
				maxdb_unlock((t_maxdb *)db);
				return bndl;
			}
		}else if(OTABLE_UTIL_HAVE_ARG(argstruct, range)){
			t_otable_range range = argstruct.range;
			t_symbol *min = atom_getsym(&(argstruct.range.min)),
				*max = atom_getsym(&(argstruct.range.max));
			t_otable_oscbndl *head = NULL, *tail = NULL;
			if(atom_gettype(&(range.min)) == A_SYM){
				t_symbol *key = NULL;
				key = rumati_avl_get_greater_than_or_equal(db->key_tree, min);
				while(key){
					if(strcmp(key->s_name, max->s_name) > 0){
						break;
					}
					t_otable_oscbndl *bndl = NULL;
					hashtab_lookup(db->ht, key, (t_object **)(&bndl));
					if(bndl){
						t_otable_oscbndl *copy = otable_util_makebundle(x, bndl->key, bndl->id, bndl->len, bndl->ptr);
						if(!head){
							head = copy;
						}
						if(tail){
							tail->next = copy;
						}
						tail = copy;
					}
					key = rumati_avl_get_greater_than(db->key_tree, key);
				}
				maxdb_unlock((t_maxdb *)db);
				return head;
			}else{
			}
		}
	}
	// copy bundle here before leaving the critical region.
	maxdb_unlock((t_maxdb *)db);
	return NULL;
}

void otable_util_store(t_object *x, t_otable_db *db, int argc, t_atom *argv)
{
	OTABLE_UTIL_ARGSTRUCT(argstruct);
	otable_util_parseArgs(x, &argstruct, argc, argv);

	if(!OTABLE_UTIL_HAVE_ARG(argstruct, index)){
		argstruct.index = db->monotonic_counter++;
	}else if(argstruct.index >= db->monotonic_counter){
		maxdb_lock((t_maxdb *)db);
		db->monotonic_counter = argstruct.index + 1;
		maxdb_unlock((t_maxdb *)db);
	}
	otable_util_doStore(x, db, argstruct.key, argstruct.index, argstruct.len, argstruct.ptr);
}

t_otable_oscbndl *otable_util_doStore(t_object *x, t_otable_db *db, t_symbol *key, long long id, long len, char *ptr)
{
	t_otable_oscbndl *bndl = otable_util_makebundle(x, key, id, len, ptr);
	t_otable_oscbndl *old = NULL;
	maxdb_lock((t_maxdb *)db);
	if(key){
		t_hashtab *ht = db->ht;
		hashtab_lookup(ht, key, (t_object **)(&old));
		if(old){
			otable_util_doRemove(x, db, old);
		}
		hashtab_store(ht, key, (t_object *)bndl);
	}
	RUMATI_AVL_TREE *tree = db->tree;
	old = NULL;
	rumati_avl_put(tree, (void *)bndl, (void **)(&old));
	if(key){
		rumati_avl_put(db->key_tree, key, NULL);
	}
	db->count++;
	maxdb_unlock((t_maxdb *)db);
	maxdb_notify(x, (t_maxdb *)db, gensym("maxdb_insert"), bndl);
	return bndl;
}

void otable_util_store_bundle(t_object *x, t_otable_db *db, t_otable_oscbndl *bndl)
{

}

void otable_util_remove(t_object *x, t_otable_db *db, int argc, t_atom *argv)
{
	OTABLE_UTIL_ARGSTRUCT(argstruct);
	otable_util_parseArgs(x, &argstruct, argc, argv);
	t_otable_oscbndl *bndl = NULL;
	maxdb_lock((t_maxdb *)db);
	if(OTABLE_UTIL_HAVE_ARG(argstruct, key)){
		hashtab_lookup(db->ht, argstruct.key, (t_object **)(&bndl));
	}else if(OTABLE_UTIL_HAVE_ARG(argstruct, index)){
		t_otable_oscbndl b = EMPTY_BUNDLE;
		b.id = argstruct.index;
		bndl = rumati_avl_get(db->tree, &b);
	}else{
		object_error(x, "you must supply a key <symbol> or an index number <int>");
		return;
	}
	if(bndl){
		otable_util_doRemove(x, db, bndl);
	}else{
		if(OTABLE_UTIL_HAVE_ARG(argstruct, key)){
			object_error(x, "no bundle found with key %s", argstruct.key->s_name);
		}else if(OTABLE_UTIL_HAVE_ARG(argstruct, index)){
			object_error(x, "no bundle found with index %d", argstruct.index);
		}
	}
	maxdb_unlock((t_maxdb *)db);
}

void otable_util_doRemove(t_object *x, t_otable_db *db, t_otable_oscbndl *bndl)
{
	if(!bndl){
		return;
	}
	maxdb_lock((t_maxdb *)db);
	maxdb_notify(x, (t_maxdb *)db, gensym("maxdb_remove"), bndl);
	if(bndl->key){
		hashtab_delete(db->ht, bndl->key);
	}
	rumati_avl_delete(db->tree, bndl, NULL);
	otable_util_freebundle(x, bndl);
	db->count--;
	maxdb_unlock((t_maxdb *)db);
}

t_otable_oscbndl *otable_util_copybundle(t_object *x, t_otable_oscbndl *bndl)
{
	t_otable_oscbndl *copy = (t_otable_oscbndl *)osc_mem_alloc(sizeof(t_otable_oscbndl));
	*copy = *bndl;
	return copy;
}

t_otable_oscbndl *otable_util_deep_copybundle(t_object *x, t_otable_oscbndl *bndl)
{
	t_otable_oscbndl *copy = (t_otable_oscbndl *)osc_mem_alloc(sizeof(t_otable_oscbndl));
	*copy = *bndl;
	copy->self = copy;
	copy->ptr = (char *)osc_mem_alloc(copy->len);
	memcpy(copy->ptr, bndl->ptr, copy->len);
	copy->next = NULL;
	copy->prev = NULL;
	return copy;
}

t_otable_oscbndl *otable_util_makebundle(t_object *x, t_symbol *key, long long id, long len, char *ptr)
{
	t_otable_oscbndl *bndl = (t_otable_oscbndl *)osc_mem_alloc(sizeof(t_otable_oscbndl));
	bndl->self = bndl;
	bndl->len = len;
	bndl->ptr = NULL;
	if(len > 0 && ptr){
		bndl->ptr = (char *)osc_mem_alloc(len);
		memcpy(bndl->ptr, (char *)ptr, len);
	}
	bndl->key = key;
	bndl->id = id;
	bndl->next = bndl->prev = NULL;
	return bndl;
}

void otable_util_freebundle(t_object *x, t_otable_oscbndl *bndl)
{
	if(bndl->ptr){
		osc_mem_free(bndl->ptr);
	}
	osc_mem_free(bndl);
}

void otable_util_output(void *outlet, t_otable_oscbndl *bndl)
{
	t_atom out[2];
	atom_setlong(out, bndl->len);
	atom_setlong(out + 1, (long)(bndl->ptr));
	outlet_anything(outlet, ps_FullPacket, 2, out);
}

void otable_util_output_emptyBundle(void *outlet)
{
	char bndl[OSC_HEADER_SIZE];
	memset(bndl, '\0', OSC_HEADER_SIZE);
	osc_bundle_s_setBundleID(bndl);
	t_atom out[2];
	atom_setlong(out, OSC_HEADER_SIZE);
	atom_setlong(out + 1, (long)bndl);
	outlet_anything(outlet, ps_FullPacket, 2, out);
}

int otable_util_getDirection(t_object *x, int argc, t_atom *argv)
{
	int dir = 0;
	if(argc){
		switch(atom_gettype(argv)){
		case A_LONG:
			{
				long l = atom_getlong(argv);
				if(l == -1 || l == 0 || l == 1){
					dir = l;
				}else{
					object_error(x, "unrecognized argument %d", l);
				}
				break;
			}
		case A_SYM:
			{
				t_symbol *sym = atom_getsym(argv);
				if(sym == gensym("ascending")){
					dir = 1;
				}else if(sym == gensym("descending")){
					dir = -1;
				}else{
					object_error(x, "unrecognized keyword %s", sym->s_name);
				}
				break;
			}
		default:
			object_error(x, "unrecognized argument (not int or symbol):");
		}
	}
	return dir;
}

void otable_util_getkeys(t_object *x, t_otable_db *db, long long *nkeys, t_symbol ***keys, int argc, t_atom *argv)
{
	maxdb_lock((t_maxdb *)db);
	long long n = 0;
	long count = hashtab_getsize(db->ht);
	t_symbol **ks = (t_symbol **)osc_mem_alloc(count * sizeof(t_symbol *));
	int dir = otable_util_getDirection(x, argc, argv);
	switch(dir){
	case 0:
		{
			t_otable_oscbndl *e = (t_otable_oscbndl *)rumati_avl_get_smallest(db->tree);
			while(e){
				if(e->key){
					ks[n++] = e->key;
				}
				e = (t_otable_oscbndl *)rumati_avl_get_greater_than(db->tree, (void *)e);
			}
		}
		break;
	case 1:
		{
			t_symbol *k = (t_symbol *)rumati_avl_get_smallest(db->key_tree);
			while(k){
				ks[n++] = k;
				k = (t_symbol *)rumati_avl_get_greater_than(db->key_tree, (void *)k);
			}
		}
		break;
	case -1:
		{
			t_symbol *k = (t_symbol *)rumati_avl_get_greatest(db->key_tree);
			while(k){
				ks[n++] = k;
				k = (t_symbol *)rumati_avl_get_less_than(db->key_tree, (void *)k);
			}
		}
		break;
	}
	*nkeys = n;
	*keys = ks;
	maxdb_unlock((t_maxdb *)db);
}

void otable_util_getindexes(t_object *x, t_otable_db *db, long long *nindexes, long long **indexes, int argc, t_atom *argv)
{
	int dir = otable_util_getDirection(x, argc, argv);
	maxdb_lock((t_maxdb *)db);
	long long *idx = (long long *)osc_mem_alloc(db->count * sizeof(long long));
	long long n = 0;
	switch(dir){
	case 0:
	case 1:
		{
			t_otable_oscbndl *e = (t_otable_oscbndl *)rumati_avl_get_smallest(db->tree);
			while(e){
				idx[n++] = e->id;
				e = (t_otable_oscbndl *)rumati_avl_get_greater_than(db->tree, (void *)e);
			}
		}
		break;
	case -1:
		{
			t_otable_oscbndl *e = (t_otable_oscbndl *)rumati_avl_get_greatest(db->tree);
			while(e){
				idx[n++] = e->id;
				e = (t_otable_oscbndl *)rumati_avl_get_less_than(db->tree, (void *)e);
			}
		}
		break;
	}
	maxdb_unlock((t_maxdb *)db);
}

/*
t_symbol *otable_util_mangle(char *datastructure, t_symbol *name){
	char buf[128];
	sprintf(buf, "otable_util_%s_%s", datastructure, name->s_name);
	return gensym(buf);
}
*/
/*
t_otable_db *otable_util_refer(t_object *x, t_otable_db *old_db, t_symbol *new_name){
	if(old_db){
		old_db->refcount--;
		if(old_db->refcount <= 0){
			t_symbol *old_db_name = otable_util_mangle("db", old_db->name);
			old_db_name->s_thing = NULL;
			otable_util_clear((t_object *)x, old_db);
			otable_util_destroy_db(old_db);
		}
	}
	
	t_symbol *db_name = otable_util_mangle("db", new_name);
	if(db_name->s_thing){
		t_otable_db *db = (t_otable_db *)(db_name->s_thing);
		db->refcount++;
		return db;
	}else{
		//t_otable_db *db = otable_util_make_db((t_object *)x, new_name);
		//db_name->s_thing = (void *)(db);
		//return db;
		return NULL;
	}
}
*/
void otable_util_clear(t_object *x, t_otable_db *db)
{
	maxdb_lock((t_maxdb *)db);
	hashtab_clear(db->ht);
	rumati_avl_clear(db->tree, (void *)otable_util_freebundle);
	db->monotonic_counter = 0;
	db->count = 0;
	maxdb_unlock((t_maxdb *)db);
}

#define END             192    // end of packet
#define ESC             219    // byte stuffing
#define ESC_END         220    // ESC ESC_END means END data byte
#define ESC_ESC         221    // ESC ESC_ESC means ESC data byte

void otable_util_read(t_object *x, t_otable_db *db, t_symbol *sym)
{
	otable_util_clear(x, db);
	t_atom a;
	atom_setlong(&a, (long)db);
	defer(x, (method)otable_util_doread, sym, 1, &a);
}

void otable_util_doread(t_object *x, t_symbol *sym, int argc, t_atom *argv)
{
	return;
	long filetype = 0, outtype;
	char filename[512];
	short path;
	if(sym == gensym("")){
		if(open_dialog(filename, &path, &outtype, &filetype, 0)){
			return;
		}
	}else{
		strcpy(filename, sym->s_name);
		if(locatefile_extended(filename, &path, &outtype, &filetype, 0)){
			object_error(x, "%s: not found", sym->s_name);
			return;
		}
	}
	t_filehandle fh;
	char *buf = NULL;
	long size = 0;
	if(path_opensysfile(filename, path, &fh, READ_PERM)){
		object_error(x, "error opening file %s", filename);
		return;
	}
	sysfile_geteof(fh, &size);
	if(size <= 0){
		object_error(x, "error reading file %s", filename);
		return;
	}
	buf = osc_mem_alloc(size);
	sysfile_read(fh, &size, buf);
	sysfile_close(fh);
	char *r = buf, *w = buf;
	while((r - buf) < size){
		switch(*((unsigned char *)r)){
		case END:
			r++;
			break;
		case ESC:
			r++;
			switch(*((unsigned char *)r)){
			case ESC_END:
				*w++ = END;
				break;
			case ESC_ESC:
				*w++ = ESC;
				break;
			}
			r++;
			break;
		default:
			*w++ = *r++;
		}
	}

	size = w - buf;
	t_otable_db *db = (t_otable_db *)atom_getlong(argv);
	/*
	char *ptr = buf;
	int kk = 0;
	while((ptr - buf) < size && kk++ < 2){
		uint32_t private_len, len;
		char *private, *bundle;
		private_len = ntoh32(*((uint32_t *)ptr));
		private = ptr + 4;
		len = ntoh32(*((uint32_t *)(private + private_len)));
		bundle = private + private_len + 4;
		t_osc_msg *m = NULL;
		osc_bundle_lookupAddress_s(private_len, private, "/private/o.table/md5", &m, 1);
		if(m){
			MD_CTX context;
			unsigned char d[16];
			MDInit(&context);
			MDUpdate(&context, bundle, len);
			MDFinal(d, &context);
			unsigned char dd[16];
			*((uint128_t *)dd) = ntoh128(*((uint128_t *)(m->argv)));
			if(!memcmp(d, dd, 16)){
				t_osc_msg *msg_idx = NULL, *msg_key = NULL;
				osc_bundle_lookupAddress_s(private_len, private, "/private/o.table/index", &msg_idx, 1);
				osc_bundle_lookupAddress_s(private_len, private, "/private/o.table/key", &msg_key, 1);
				long long index = 0;
				t_symbol *key = NULL;
				if(msg_idx){
					index = (long long)ntoh64(*((uint64_t *)msg_idx->argv));
				}
				if(msg_key){
					key = gensym(msg_key->argv);
				}
				// this should be elsewhere
				if(index >- db->monotonic_counter){
					db->monotonic_counter = index + 1;
				}
				otable_util_doStore(x, db, key, index, len, bundle);
			}
		}else{
			// throw an error for now, but really, we should look through 
			// all the bundles for a matching md5 hash
		}
		//long long id = ntoh64(*((uint64_t *)ptr));
		//ptr += 8;
		//t_symbol *key = NULL;
		//int keylen = 0;
		//if(*ptr){
		//key = gensym(ptr);
		//keylen = strlen(ptr);
		//ptr += keylen;
		//}
		//ptr++;
		//while((ptr - buf) % 4){
		//ptr++;
		//}
		//uint32_t len = ntoh32(*((uint32_t *)ptr));
		//ptr += 4;
		//if(id >= db->monotonic_counter){
		//db->monotonic_counter = id + 1;
		//}
		//otable_util_doStore(x, db, key, id, len, ptr);
		ptr += len + private_len + 8;
	}
	*/
	osc_mem_free(buf);
}

void otable_util_write(t_object *x, t_otable_db *db, t_symbol *sym)
{
	t_atom a;
	atom_setlong(&a, (long)db);
	defer(x, (method)otable_util_dowrite, sym, 1, &a);
}

int otable_util_SLIP_encode(char *dest, char *src, int len)
{
	int i;
	char *p = dest;
	for(i = 0; i < len; i++){
		switch(((unsigned char *)src)[i]){
		case END:
			*p++ = ESC;
			*p++ = ESC_END;
			break;
		case ESC:
			*p++ = ESC;
			*p++ = ESC_ESC;
			break;
		default:
			*p++ = src[i];
		}
	}
	return p - dest;
}

int otable_util_get_SLIP_encoded_nbytes(int len, char *buf)
{
	int nbytes = 0;
	int i;
	for(i = 0; i < len; i++){
		switch(((unsigned char *)buf)[i]){
		case END:
		case ESC:
			nbytes++;
			break;
		}
		nbytes++;
	}
	return nbytes;
}

void otable_util_dowrite(t_object *x, t_symbol *sym, int argc, t_atom *argv)
{
	return;
	long outtype;
	char filename[512];
	short path;
	if(sym == gensym("") || sym == NULL){
		if(saveasdialog_extended(filename, &path, &outtype, NULL, 0)){
			return;
		}
	}else{
		strcpy(filename, sym->s_name);
		path = path_getdefault();
	}
	t_filehandle fh;
	if(path_createsysfile(filename, path, 'TEXT', &fh)){
		object_error(x, "couldn't create file %s", filename);
		return;
	}

	t_otable_db *db = (t_otable_db *)atom_getlong(argv);
	
	maxdb_lock((t_maxdb *)db);
	t_otable_oscbndl *e = NULL;
	e = rumati_avl_get_smallest(db->tree);
	if(!e){
		maxdb_unlock((t_maxdb *)db);
		return;
	}
	t_otable_oscbndl *head = otable_util_makebundle(x, e->key, e->id, e->len, e->ptr);
	t_otable_oscbndl *tail = head;
	e = rumati_avl_get_greater_than(db->tree, e);
	while(e){
		tail->next = otable_util_makebundle(x, e->key, e->id, e->len, e->ptr);
		tail = tail->next;
		e = (t_otable_oscbndl *)rumati_avl_get_greater_than(db->tree, (void *)e);
	}
	maxdb_unlock((t_maxdb *)db);
	e = head;
	t_otable_oscbndl *next = NULL;
	/*
	while(e){
		char lenbuf[4];
		*((uint32_t *)lenbuf) = hton32(e->len);
		long nbytes = 1; // initial SLIP END
		nbytes += otable_util_get_SLIP_encoded_nbytes(4, lenbuf);
		nbytes += otable_util_get_SLIP_encoded_nbytes(e->len, e->ptr);
		nbytes++; // SLIP END

		char copy[nbytes];
		memset(copy, '\0', nbytes);
		char *p = copy;
		*p++ = END;
		p += otable_util_SLIP_encode(p, lenbuf, 4); // bundle
		p += otable_util_SLIP_encode(p, e->ptr, e->len); // bundle
		*p++ = END;

		MD_CTX context;
		unsigned char d[16];
		MDInit(&context);
		MDUpdate(&context, e->ptr, e->len);
		MDFinal(d, &context);

		t_osc_msg msg_index, msg_md5;
		osc_message_clear(&msg_index);
		osc_message_clear(&msg_md5);
		t_osc_bundle table_info;
		table_info.messages = NULL;
		osc_message_setAddress(&msg_index, "/private/o.table/index");
		osc_message_addData(&msg_index, 1, "h", 8, (char *)(&(e->id)));
		osc_bundle_addMessage(&table_info, &msg_index);

		osc_message_setAddress(&msg_md5, "/private/o.table/md5");
		osc_message_addData(&msg_md5, 1, "J", 16, (char *)d);
		osc_bundle_addMessage(&table_info, &msg_md5);

		if(e->key){
			t_osc_msg msg_key;
			osc_message_clear(&msg_key);
			osc_message_setAddress(&msg_key, "/private/o.table/key");
			osc_message_addData(&msg_key, 1, "s", strlen(e->key->s_name), e->key->s_name);
			osc_bundle_addMessage(&table_info, &msg_key);
		}

		long slen = 0;
		osc_bundle_getLen_s(&table_info, &slen);

		char sbundle[slen];
		memset(sbundle, '\0', slen);
		osc_bundle_serializeWithBuffer(&table_info, sbundle);

		char table_info_lenbuf[4];
		*((uint32_t *)table_info_lenbuf) = hton32(slen);
		long table_info_nbytes = 1;// SLIP END
		table_info_nbytes += otable_util_get_SLIP_encoded_nbytes(4, table_info_lenbuf);
		table_info_nbytes += otable_util_get_SLIP_encoded_nbytes(slen, sbundle);
		table_info_nbytes++; // SLIP END

		char sbundle_slip[table_info_nbytes];
		p = sbundle_slip;
		*p++ = END;
		p += otable_util_SLIP_encode(p, table_info_lenbuf, 4);
		p += otable_util_SLIP_encode(p, sbundle, slen);
		*p++ = END;

		sysfile_write(fh, &table_info_nbytes, sbundle_slip);
		sysfile_write(fh, &nbytes, copy);
		next = e->next;
		otable_util_freebundle(x, e);
		e = next;
	}
	*/
	char end = END;
	long count = 1;
	sysfile_write(fh, &count, &end);
	sysfile_close(fh);
}

void otable_util_renumber(t_object *x, t_otable_db *db)
{
	maxdb_lock((t_maxdb *)db);
	db->monotonic_counter = 0;
	t_otable_oscbndl *e = (t_otable_oscbndl *)rumati_avl_get_smallest(db->tree);
	while(e){
		e->id = db->monotonic_counter++;
		e = (t_otable_oscbndl *)rumati_avl_get_greater_than(db->tree, (void *)e);
	}
	maxdb_unlock((t_maxdb *)db);
}

void otable_util_tag(t_object *x, t_otable_db *db, int argc, t_atom *argv)
{
	if(argc > 4){
		object_error(x, "bad argument count (%d).", argc);
		return;
	}
	OTABLE_UTIL_ARGSTRUCT(argstruct);
	otable_util_parseArgs(x, &argstruct, argc, argv);

	if(!OTABLE_UTIL_HAVE_ARG(argstruct, index)){
		object_error(x, "you must provide an integer for an index");
		return;
	}
	maxdb_lock((t_maxdb *)db);
	t_otable_oscbndl k = EMPTY_BUNDLE;
	k.key = argstruct.key, k.id = argstruct.index;
	t_otable_oscbndl *e = (t_otable_oscbndl *)rumati_avl_get(db->tree, (void *)(&k));
	if(e){
		if(e->key){
			hashtab_chuckkey(db->ht, e->key);
		}
		if(OTABLE_UTIL_HAVE_ARG(argstruct, key)){
			t_otable_oscbndl *old = NULL;
			hashtab_lookup(db->ht, argstruct.key, (t_object **)(&old));
			if(old){
				rumati_avl_delete(db->tree, old, NULL);
				otable_util_freebundle(x, old);
			}
		}
		e->key = argstruct.key;
	}else{
		object_error(x, "object with index %ld not found", argstruct.index);
	}
}

int otable_util_comp_sym(void *udata, void *val1, void *val2)
{
	return strcmp(((t_symbol *)val1)->s_name, ((t_symbol *)val2)->s_name);
}

int otable_util_comp(void *udata, void *value1, void *value2)
{
	long long id1, id2;
	id1 = ((t_otable_oscbndl *)value1)->id;
	id2 = ((t_otable_oscbndl *)value2)->id;
	if(id1 < id2){
		return -1;
	}else if(id1 == id2){
		return 0;
	}else{
		return 1;
	}
}

void otable_util_destroy_db(t_object *x, t_otable_db *db)
{
	hashtab_chuck(db->ht);
	rumati_avl_destroy(db->tree, (void *)otable_util_freebundle);
	rumati_avl_destroy(db->key_tree, NULL);
}

t_otable_db *otable_util_make_db(t_object *x, t_symbol *name)
{
	t_symbol *mangled_name = NULL;
	if(name){
		mangled_name = maxdb_mangle_name("otable", name);
	}
	t_otable_db *db = (t_otable_db *)maxdb_alloc(mangled_name,
						     sizeof(t_otable_db), 
						     (t_maxdb_dtor)otable_util_destroy_db,
						     x);
	if(!db){
		return NULL;
	}
	db->ht = hashtab_new(0);
	hashtab_flags(db->ht, OBJ_FLAG_DATA);
	db->monotonic_counter = 0;
	db->tree = NULL;
	db->key_tree = NULL;
	rumati_avl_new(&(db->tree), otable_util_comp, (void *)x);
	rumati_avl_new(&(db->key_tree), otable_util_comp_sym, (void *)x);
	db->count = 0;
	return db;
}

void otable_util_free(t_object *x, t_otable_db *db)
{
	maxdb_unrefer(x, (t_maxdb *)db);
}

