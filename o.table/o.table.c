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


@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
NAME: o.table
DESCRIPTION: Store OSC bundles in a table associated with a name or key
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2011
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

*/

#include "version.h"
#include "ext.h"
#include "version.c"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_hashtab.h"
#include "ext_critical.h"
#include "omax_util.h"
#include "osc.h"
#include "avl.h"
#include "maxdb.h"
#include "otable_util.h"

typedef struct _otable{
	t_object ob;
	void *outlets[2];
	t_otable_db *db;
	t_symbol *name;
} t_otable;

void *otable_class;


//void otable_ll_append(t_otable *x, t_otable_oscbndl *e);
//void otable_ll_remove(t_otable *x, t_otable_oscbndl *e);
//void otable_ll_replace(t_otable *x, t_otable_oscbndl *old, t_otable_oscbndl *new);

void otable_free(t_otable *x);
void otable_assist(t_otable *x, void *b, long m, long a, char *s);
void *otable_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err otable_notify(t_otable *x, t_symbol *s, t_symbol *msg, void *sender, void *data);

t_symbol *ps_FullPacket;

void otable_fullPacket(t_otable *x, long len, long ptr){
	otable_util_doStore((t_object *)x, x->db, NULL, x->db->monotonic_counter++, len, (char *)ptr);
}

void otable_lookup(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	t_otable_oscbndl *bndl = otable_util_lookup((t_object *)x, x->db, argc, argv);
	if(bndl){
		t_otable_oscbndl *next = NULL;
		while(bndl){
			otable_util_output(x->outlets[0], bndl);
			next = bndl->next;
			otable_util_freebundle((t_object *)x, bndl);
			bndl = next;
		}
	}else{
		otable_util_output_emptyBundle(x->outlets[0]);
	}
}

void otable_store(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	otable_util_store((t_object *)x, x->db, argc, argv);
}

void otable_remove(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	otable_util_remove((t_object *)x, x->db, argc, argv);
}

void otable_dump(t_otable *x){
	maxdb_lock((t_maxdb *)(x->db));
	t_otable_oscbndl *e = NULL;
	e = rumati_avl_get_smallest(x->db->tree);
	if(!e){
		maxdb_unlock((t_maxdb *)(x->db));
		return;
	}
	t_otable_oscbndl *head = otable_util_makebundle((t_object *)x, e->key, e->id, e->len, e->ptr);
	t_otable_oscbndl *tail = head;
	e = rumati_avl_get_greater_than(x->db->tree, e);
	while(e){
		tail->next = otable_util_makebundle((t_object *)x, e->key, e->id, e->len, e->ptr);
		tail = tail->next;
		e = rumati_avl_get_greater_than(x->db->tree, e);
	}
	maxdb_unlock((t_maxdb *)(x->db));
	e = head;
	t_otable_oscbndl *next = NULL;
	while(e){
		next = e->next;
		t_atom out[2];
		t_atom *outptr = out;
		atom_setlong(outptr++, e->len);
		atom_setlong(outptr++, (long)(e->ptr));
		outlet_anything(x->outlets[0], ps_FullPacket, outptr - out, out);
		otable_util_freebundle((t_object *)x, e);
		e = next;
	}
}

void otable_getkeys(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	long long nkeys;
	t_symbol **keys = NULL;
	otable_util_getkeys((t_object *)x, x->db, &nkeys, &keys, argc, argv);
	int i;
	for(i = 0; i < nkeys; i++){
		outlet_anything(x->outlets[1], keys[i], 0, NULL);
	}
	if(keys){
		osc_mem_free(keys);
	}
}

void otable_getindexes(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	long long nkeys;
	long long *indexes = NULL;
	otable_util_getindexes((t_object *)x, x->db, &nkeys, &indexes, argc, argv);
	int i;
	for(i = 0; i < nkeys; i++){
		outlet_int(x->outlets[1], indexes[i]);
	}
	if(indexes){
		osc_mem_free(indexes);
	}
}

void otable_clear(t_otable *x){
	otable_util_clear((t_object *)x, x->db);
}

void otable_refer(t_otable *x, t_symbol *name){
	x->db = (t_otable_db *)maxdb_refer((t_maxdb *)(x->db), maxdb_mangle_name("otable", name));
	if(!x->db){
		x->db = otable_util_make_db((t_object *)x, name);
	}
	x->name = name;
}

void otable_renumber(t_otable *x){
	otable_util_renumber((t_object *)x, x->db);
}

void otable_tag(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	otable_util_tag((t_object *)x, x->db, argc, argv);
}

void otable_anything(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	switch(argc){
	case 0:
		{
			t_atom av[argc + 1];
			atom_setsym(av, msg);
			memcpy(av + 1, argv, argc * sizeof(t_atom));
			otable_util_lookup((t_object *)x, x->db, argc + 1, av);
		}
		break;
	default:
		object_error((t_object *)x, "bad argument count");
	}
}
/*
void otable_list(t_otable *x, t_symbol *msg, int argc, t_atom *argv){
	if(argc < 4){
		object_error((t_object *)x, "bad argument count");
		return;
	}
	otable_store(x, msg, argc, argv);
}
*/
void otable_int(t_otable *x, long l){
	RUMATI_AVL_TREE *tree = x->db->tree;
	t_otable_oscbndl *bndl = NULL;
	t_otable_oscbndl test = EMPTY_BUNDLE;
	test.id = l;
	bndl = rumati_avl_get(tree, &test);
	if(bndl){
		otable_util_output(x->outlets[0], bndl);
 	}else{
		otable_util_output_emptyBundle(x->outlets[0]);
	}
}

void otable_read(t_otable *x, t_symbol *path){
	otable_util_read((t_object *)x, x->db, path);
}

void otable_write(t_otable *x, t_symbol *path){
	otable_util_write((t_object *)x, x->db, path);
}

void otable_tellmeeverything(t_otable *x){
	post("name = %s", x->name ? x->name->s_name : "<none>");
	post("refcount = %d", maxdb_get_refcount((t_maxdb *)(x->db)));
	post("hashtab:");
	hashtab_print(x->db->ht);
	post("tree:");
	post("%d entries", x->db->count);
	/*
	t_otable_oscbndl *bndl = rumati_avl_get_smallest(db->tree);
	while(bndl){
		post("KEY = %s, INDEX = %lld", bndl->key ? bndl->key->s_name : "<null>", bndl->id);
		osc_bundle_printBundle(bndl->len, bndl->ptr, (void *)post);
		bndl = rumati_avl_get_greater_than(db->tree, bndl);
	}
	*/
}

void otable_free(t_otable *x){
	otable_util_free((t_object *)x, x->db);
}

void otable_assist(t_otable *x, void *b, long m, long a, char *s){
	if (m == ASSIST_OUTLET)
		sprintf(s,"Probability distribution and arguments");
	else {
		switch (a) {	
		case 0:
			sprintf(s,"Random variate");
			break;
		}
	}
}


void *otable_new(t_symbol *msg, short argc, t_atom *argv){
	t_otable *x;
	if(x = (t_otable *)object_alloc(otable_class)){
		x->outlets[1] = outlet_new((t_object *)x, NULL);
		x->outlets[0] = outlet_new((t_object *)x, NULL);
		x->name = NULL;
		x->db = NULL;
		if(argc){
			otable_refer(x, atom_getsym(argv));
		}else{
			x->db = otable_util_make_db((t_object *)x, NULL);
		}

		//attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.table", (method)otable_new, (method)otable_free, sizeof(t_otable), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)otable_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)otable_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otable_anything, "anything", A_GIMME, 0);
	//class_addmethod(c, (method)otable_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)otable_int, "int", A_LONG, 0);
	class_addmethod(c, (method)otable_getkeys, "getkeys", A_GIMME, 0);
	class_addmethod(c, (method)otable_getindexes, "getindexes", A_GIMME, 0);
	class_addmethod(c, (method)otable_refer, "refer", A_SYM, 0);
	class_addmethod(c, (method)otable_clear, "clear", 0);
	class_addmethod(c, (method)otable_dump, "dump", 0);
	class_addmethod(c, (method)otable_read, "read", A_DEFSYM, 0);
	class_addmethod(c, (method)otable_write, "write", A_DEFSYM, 0);
	class_addmethod(c, (method)otable_store, "store", A_GIMME, 0);
	class_addmethod(c, (method)otable_lookup, "lookup", A_GIMME, 0);
	class_addmethod(c, (method)otable_tellmeeverything, "tellmeeverything", 0);
	class_addmethod(c, (method)otable_renumber, "renumber", 0);
	class_addmethod(c, (method)otable_remove, "remove", A_GIMME, 0);
	class_addmethod(c, (method)otable_tag, "tag", A_GIMME, 0);
	//class_addmethod(c, (method)otable_notify, "notify", A_CANT, 0);

	class_register(CLASS_BOX, c);
	otable_class = c;

	common_symbols_init();
	otable_util_init();

	ps_FullPacket = gensym("FullPacket");
	return 0;
}

t_max_err otable_notify(t_otable *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
