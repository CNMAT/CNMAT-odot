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
VERSION 0.1: porting to pd, note: the name and key attributes are only setable on load in pd -- rama
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

*/

#define OMAX_DOC_NAME "o.table"
#define OMAX_DOC_SHORT_DESC "Store OSC bundles in a table."
#define OMAX_DOC_LONG_DESC "o.table appends incoming bundles to the end of an array and optionally associates them with a key."
#define OMAX_DOC_SEEALSO (char *[]){"o.collect", "o.message", "o.var"}
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to store."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Recalled OSC packet(s)."}

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif

#include "osc.h"
#include "osc_mem.h"
#include "osc_hashtab.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"
#include "osc_atom_s.h"
#include "osc_linkedlist.h"
#include "omax_util.h"
#include "omax_dict.h"
#include "omax_doc.h"

#include "o.h"

#define OTABLE_MANGLE_PFX "__CNMAT_otable_name_"

typedef struct _otable_db{
	t_osc_hashtab *ht;
	t_osc_linkedlist *ll;
	char *keyaddress;
	int refcount;
	uint64_t bytecount;
} t_otable_db;

typedef struct _otable{
	t_object ob;
	void *outlet;
	t_otable_db *db;
	t_symbol *name;
	t_critical lock;
} t_otable;

void *otable_class;

t_otable_db *otable_makedb(void);
void otable_destroydb(t_otable *x, t_otable_db *db);
void otable_linkedlist_dtor(void *bndl);
void otable_hashtab_dtor(char *key, void *data);
void otable_free(t_otable *x);
void otable_assist(t_otable *x, void *b, long m, long a, char *s);
void *otable_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err otable_setName(t_otable *x, void *attr, long ac, t_atom *av);
t_max_err otable_getKey(t_otable *x, void *attr, long *ac, t_atom **av);
t_max_err otable_setKey(t_otable *x, void *attr, long ac, t_atom *av);


t_symbol *ps_FullPacket;

void otable_getKeyOutOfBundle(t_otable *x, t_osc_bndl_s *bndl, int *keylen, char **key)
{
	char *keyaddress = NULL;
	int _keylen = 0;
	char *_key = NULL;
	critical_enter(x->lock);
	keyaddress = x->db->keyaddress;
	critical_exit(x->lock);

	if(keyaddress){
		t_osc_msg_ar_s *ar = NULL;
		osc_bundle_s_lookupAddress_b(bndl, keyaddress, &ar, 1);
		if(ar){
			t_osc_msg_s *m = osc_message_array_s_get(ar, 0);
			if(osc_message_s_getArgCount(m) > 0){
				if(osc_message_s_getTypetag(m, 0) == 's'){
					t_osc_atom_s *a = NULL;
					osc_message_s_getArg(osc_message_array_s_get(ar, 0), 0, &a);
					if(a){
						_keylen = osc_atom_s_getStringLen(a);
						osc_atom_s_getString(a, _keylen, &_key);
						osc_atom_s_free(a);
					}
				}
			}
		}
		osc_message_array_s_free(ar);
	}
	*keylen = _keylen;
	*key = _key;
}

void otable_insert(t_otable *x, long len, char *ptr, void (*ll_fptr)(t_osc_linkedlist*, void*))
{
	char *copy = (char *)osc_mem_alloc(len);
	memcpy(copy, ptr, len);
	t_osc_bndl_s *bndl = osc_bundle_s_alloc(len, copy);

	int keylen = 0;
	char *key = NULL;
	otable_getKeyOutOfBundle(x, bndl, &keylen, &key);

	critical_enter(x->lock);
	if(key){
		osc_hashtab_store(x->db->ht, keylen, key, bndl);
	}
	ll_fptr(x->db->ll, bndl);
	x->db->bytecount += len;
	critical_exit(x->lock);
}

void otable_dopend(t_otable *x,
		   t_symbol *msg,
		   int argc,
		   t_atom *argv,
		   void (*ll_fptr)(t_osc_linkedlist*, void*))
{
	if(argc != 3){
		object_error((t_object *)x, "bad arguments--expected FullPacket <len> <ptr>");
		return;
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "bad arguments--expected FullPacket <len> <ptr>");
		return;
	}
	if(atom_getsym(argv) != ps_FullPacket){
		object_error((t_object *)x, "bad arguments--expected FullPacket <len> <ptr>");
		return;
	}
	argc--;
	argv++;
	OMAX_UTIL_GET_LEN_AND_PTR;
	otable_insert(x, len, ptr, ll_fptr);
}


void otable_prepend(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	otable_dopend(x, msg, argc, argv, osc_linkedlist_prepend);
}

void otable_append(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	otable_dopend(x, msg, argc, argv, osc_linkedlist_append);
}

void otable_processFullPacket(t_otable *x, long len, char *ptr)
{
	char *copy = NULL;
	long copylen = 0;
	char alloc = 0;
	if(strncmp(ptr, "#bundle\0", 8)){
		osc_bundle_s_wrapMessage(len, ptr, &copylen, &copy, &alloc);
		len = copylen;
		ptr = copy;
	}
	otable_insert(x, len, ptr, osc_linkedlist_append);
	if(alloc && copy){
		osc_mem_free(copy);
	}
}

void otable_fullPacket(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	otable_processFullPacket(x, len, ptr);
}

void otable_pop(t_otable *x, void *(*ll_pop)(t_osc_linkedlist*))
{
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = (t_osc_bndl_s *)ll_pop(x->db->ll);
	if(bndl){
		int len = 0;
		char *key = NULL;
		otable_getKeyOutOfBundle(x, bndl, &len, &key);
		if(key){
			osc_hashtab_remove(x->db->ht, len, key, otable_hashtab_dtor);
		}
	}
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
		osc_bundle_s_deepFree(bndl);
		x->db->bytecount -= len;
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}


#ifdef OMAX_PD_VERSION
void otable_popnth(t_otable *x, float f)
{
    int n = (int)f;
#else
void otable_popnth(t_otable *x, int n)
{
#endif
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = (t_osc_bndl_s *)osc_linkedlist_popNth(x->db->ll, n);
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
		osc_bundle_s_deepFree(bndl);
		x->db->bytecount -= len;
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}

void otable_popfirst(t_otable *x)
{
	otable_pop(x, osc_linkedlist_popHead);
}

void otable_poplast(t_otable *x)
{
	otable_pop(x, osc_linkedlist_popTail);
}

#ifdef OMAX_PD_VERSION
void otable_peeknth(t_otable *x, float f)
{
    int n = (int)f;
#else
void otable_peeknth(t_otable *x, int n)
{
#endif
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = (t_osc_bndl_s *)osc_linkedlist_peekNth(x->db->ll, n);
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}

void otable_peekfirst(t_otable *x)
{
	otable_peeknth(x, 0);
}

void otable_peeklast(t_otable *x)
{
	otable_peeknth(x, -1);
}

#ifdef OMAX_PD_VERSION
void otable_delnth(t_otable *x, float f)
{
    int n = (int)f;
#else
void otable_delnth(t_otable *x, int n)
{
#endif
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = (t_osc_bndl_s *)osc_linkedlist_popNth(x->db->ll, n);
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		//char *ptr = osc_bundle_s_getPtr(bndl);
		//omax_util_outletOSC(x->outlet, len, ptr);
		osc_bundle_s_deepFree(bndl);
		x->db->bytecount -= len;
	}else{
		//omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}

void otable_delfirst(t_otable *x)
{
	otable_delnth(x, 0);
}

void otable_dellast(t_otable *x)
{
	otable_delnth(x, -1);
}

void otable_dumpCallback(void *obj, int index, void *data)
{
	t_otable *x = (t_otable *)obj;
	if(index == -1 && data == NULL){
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}else{
		t_osc_bndl_s *bndl = (t_osc_bndl_s *)data;
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
	}
}

void otable_cloneCallback(void **dest, void *src)
{
	if(src){
		t_osc_bndl_s *bndl = (t_osc_bndl_s *)src;
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		char *ptrcpy = osc_mem_alloc(len);
		memcpy(ptrcpy, ptr, len);
		t_osc_bndl_s *copy = osc_bundle_s_alloc(len, ptrcpy);
		*dest = (void *)copy;
	}
}

#define OTABLE_COPY_BEFORE_DUMP
void otable_dump(t_otable *x)
{
	t_osc_linkedlist *ll = x->db->ll;
#ifdef OTABLE_COPY_BEFORE_DUMP
	critical_enter(x->lock);
	ll = osc_linkedlist_clone(x->db->ll, otable_cloneCallback);
	critical_exit(x->lock);
#endif
	osc_linkedlist_iterate(ll, otable_dumpCallback, (void *)x);
#ifdef OTABLE_COPY_BEFORE_DUMP
	osc_linkedlist_destroy(ll);
#endif
}

void otable_getkeys(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void otable_getindexes(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
}

void otable_clear(t_otable *x)
{
	// could be cheaper to just replace the ll and ht with new ones and 
	// free everything in another thread.
	critical_enter(x->lock);
	osc_hashtab_clear(x->db->ht);
	osc_linkedlist_clear(x->db->ll);
	critical_exit(x->lock);
	x->db->bytecount = 0;
}

t_symbol *otable_mangle(t_symbol *name)
{
	if(!name){
		return NULL;
	}
	long len = strlen(name->s_name) + strlen(OTABLE_MANGLE_PFX) + 1;
	char buf[len];
	snprintf(buf, len, "%s%s", OTABLE_MANGLE_PFX, name->s_name);
	return gensym(buf);
}

void otable_refer(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	critical_enter(x->lock);
	if(x->db){
		otable_destroydb(x, x->db);
		x->db = NULL;
	}
	t_symbol *name = atom_getsym(argv);
	t_symbol *mangled_name = otable_mangle(name);
	if(mangled_name && mangled_name->s_thing){
		t_otable_db *db = (t_otable_db *)mangled_name->s_thing;
		db->refcount++;
		x->db = db;
	}else{
		x->db = otable_makedb();
		mangled_name->s_thing = (void *)x->db;
	}
	x->name = name;
	critical_exit(x->lock);
}

void otable_anything(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	// assume for now that this is a key to look up in the hashtab
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = osc_hashtab_lookup(x->db->ht, strlen(msg->s_name), msg->s_name);
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}

void otable_doread(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(!argc){
		object_error((t_object *)x, "you need to supply a filepath");
		return;
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "%s: argument must be a symbol (path)", __func__);
		return;
	}
	char *path = atom_getsym(argv)->s_name;
	FILE *f = fopen(path, "r");
	if(f){
		object_post((t_object *)x, "opened %s for reading", path);
		critical_enter(x->lock);
		otable_clear(x);
		fseek(f, 0, SEEK_END);
		long n = ftell(f);
		fseek(f, 0, SEEK_SET);
		char *buf = (char *)malloc(n);
		if(buf){
			long nn = fread(buf, 1, n, f);
			if(nn != n){
				object_error((t_object *)x, "error reading file %s!  Expected %ld bytes, but got %ld\n", path, n, nn);
				free(buf);
				fclose(f);
				return;
			}
			char *ptr = buf;
			while(ptr - buf < n){
				int32_t len = ntoh32(*((long *)ptr));
				ptr += 4;
				otable_processFullPacket(x, len, ptr);
				ptr += len;
			}
			free(buf);
			fclose(f);
		}
		critical_exit(x->lock);
	}else{
		object_error((t_object *)x, "couldn't open %s!\n", path);
		return;
	}
}

void otable_read(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
#ifdef OMAX_PD_VERSION
	otable_doread(x, msg, argc, argv);
#else
	defer(x,(method)otable_doread, msg, argc, argv);
#endif
}

void otable_dowrite(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
    
	if(!argc){
		object_error((t_object *)x, "you need to supply a filepath");
		return;
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "%s: argument must be a symbol (path)", __func__);
		return;
	}
	char *path = atom_getsym(argv)->s_name;
    
	FILE *f = fopen(path, "w");
	if(f){
		object_post((t_object *)x, "opened %s for writing", path);
		critical_enter(x->lock);
		unsigned long n = osc_linkedlist_getCount(x->db->ll);
		size_t count = 0;
		for(int i = 0; i < n; i++){
			t_osc_bndl_s *bndl = (t_osc_bndl_s *)osc_linkedlist_peekNth(x->db->ll, i);
			int32_t len = osc_bundle_s_getLen(bndl);
			int32_t len_n = hton32(len);
			char *ptr = osc_bundle_s_getPtr(bndl);
			count += fwrite(&len_n, 4, 1, f);
			count += fwrite(ptr, 1, len, f);
		}
		critical_exit(x->lock);
		fclose(f);
		object_post((t_object *)x, "finished writing %d bundles (%d bytes total)", n, count);
	}else{
		object_error((t_object *)x, "couldn't open %s!\n", path);
		return;
	}
}

void otable_write(t_otable *x, t_symbol *msg, int argc, t_atom *argv)
{
#ifdef OMAX_PD_VERSION
	otable_dowrite(x, msg, argc, argv);
#else
	defer(x,(method)otable_dowrite, msg, argc, argv);
#endif
}

void otable_free(t_otable *x)
{
	otable_destroydb(x, x->db);
	critical_free(x->lock);
}

void otable_doc(t_otable *x)
{
	omax_doc_outletDoc(x->outlet);
}

#ifndef OMAX_PD_VERSION
void otable_assist(t_otable *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}
#endif

void otable_linkedlist_dtor(void *bndl)
{
	if(bndl){
		osc_bundle_s_deepFree((t_osc_bndl_s *)bndl);
	}
}

void otable_hashtab_dtor(char *key, void *data)
{
	// don't free the data--otable_linkedlist_dtor will do that
	if(key){
		osc_mem_free(key);
	}
}

t_otable_db *otable_makedb(void)
{
	t_otable_db *db = (t_otable_db *)osc_mem_alloc(sizeof(t_otable_db));
	if(db){
		db->ht = osc_hashtab_new(-1, otable_hashtab_dtor);
		db->ll = osc_linkedlist_new(otable_linkedlist_dtor);
		db->refcount = 1;
		db->keyaddress = NULL;
		db->bytecount = 0;
	}
	return db;
}

void otable_destroydb(t_otable *x, t_otable_db *db)
{
	critical_enter(x->lock);
	if(db){
		db->refcount--;
		if(db->refcount == 0){
			osc_hashtab_destroy(db->ht);
			osc_linkedlist_destroy(db->ll);
			t_symbol *mangled_name = otable_mangle(x->name);
			mangled_name->s_thing = NULL;
			osc_mem_free(db);
		}
	}
	critical_exit(x->lock);
}

t_max_err otable_setName(t_otable *x, void *attr, long ac, t_atom *av)
{
	//if(x->db){
	//critical_enter(x->lock);
		otable_refer(x, NULL, ac, av);
		//critical_exit(x->lock);
		//}
	return MAX_ERR_NONE;
}

#ifndef OMAX_PD_VERSION
t_max_err otable_getKey(t_otable *x, void *attr, long *ac, t_atom **av)
{
	t_symbol *key = NULL;
	if(x->db){
		critical_enter(x->lock);
		if(x->db->keyaddress){
			key = gensym(x->db->keyaddress);
		}
		critical_exit(x->lock);
	}
	if(ac && av){
		char alloc;
		if(atom_alloc(ac, av, &alloc)){
			return MAX_ERR_GENERIC;
		}
		if(key){
			atom_setsym(*av, key);
		}else{
			atom_setsym(*av, _sym_emptytext);
		}
	}
	return MAX_ERR_NONE;
}
#endif

#define OTABLE_INFO_PFX "/otable/info"
void otable_outputinfo(t_otable *x)
{
	critical_enter(x->lock);
	t_symbol *name = x->name;
	unsigned long n = osc_linkedlist_getCount(x->db->ll);
	uint64_t bytecount = x->db->bytecount;
	critical_exit(x->lock);
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *msgname = osc_message_u_alloc();
	osc_message_u_setAddress(msgname, OTABLE_INFO_PFX"/name");
	if(name){
		osc_message_u_appendString(msgname, name->s_name);
	}
	osc_bundle_u_addMsg(b, msgname);

	t_osc_msg_u *msgn = osc_message_u_alloc();
	osc_message_u_setAddress(msgn, OTABLE_INFO_PFX"/count");
	osc_message_u_appendUInt64(msgn, n);
	osc_bundle_u_addMsg(b, msgn);

	t_osc_msg_u *msgmem = osc_message_u_alloc();
	osc_message_u_setAddress(msgmem, OTABLE_INFO_PFX"/bytecount");
	osc_message_u_appendUInt64(msgmem, bytecount);
	osc_bundle_u_addMsg(b, msgmem);

	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf){
		omax_util_outletOSC(x->outlet, len, buf);
		osc_mem_free(buf);
	}
	osc_bundle_u_free(b);
}

t_max_err otable_setKey(t_otable *x, void *attr, long ac, t_atom *av)
{
	if(x->db){
		critical_enter(x->lock);
		x->db->keyaddress = atom_getsym(av)->s_name;
		// wtf are we supposed to do here?  go through every bundle already stored and
		// rehash the whole fucking thing using this new key??
		critical_exit(x->lock);
	}
	return MAX_ERR_NONE;
}


#ifdef OMAX_PD_VERSION
void *otable_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otable *x;
	if((x = (t_otable *)object_alloc(otable_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		critical_new(&x->lock);
		x->name = NULL;
		x->db = NULL;
        
        if(!x->name){
			x->db = otable_makedb();
			if(!x->db){
				return NULL;
			}
		}
        
        int i;
        for(i = 0; i < argc; i++)
        {
            if(atom_gettype(argv + i) == A_SYM)
            {
                t_symbol *attribute = atom_gensym(argv+i);

                if( attribute == gensym("@key") ){
                    if(atom_gettype(argv+(++i)) == A_SYMBOL)
                    {
                        t_symbol *key = atom_getsym(argv+i);
                        if(key->s_name[0] == '/'){
                            x->name = key;
                            otable_setKey(x, NULL, 1, argv+i);

                        } else {
                            post("key must begin with a /");
                        }
                        
                    } else {
                        post("@key value must be a osc address");
                        return 0;
                    }
                } else if(attribute->s_name[0] == '@') {
                    post("unknown attribute");
                }
                
            } else {
                post("o.table @key attribute sets an osc address to be used as the key identifier");
                return 0;
            }
            
            
        }
		
        
	}
    
	return x;
}


int setup_o0x2etable(void)
{
	t_class *c = class_new(gensym("o.table"), (t_newmethod)otable_new, (t_method)otable_free, sizeof(t_otable), 0L, A_GIMME, 0);
    
	class_addmethod(c, (t_method)otable_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_getkeys, gensym("getkeys"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_refer, gensym("refer"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_clear, gensym("clear"), 0);
	class_addmethod(c, (t_method)otable_dump, gensym("dump"), 0);
	class_addmethod(c, (t_method)otable_read, gensym("read"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_write, gensym("write"), A_GIMME, 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	class_addmethod(c, (t_method)otable_prepend, gensym("prepend"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_append, gensym("append"), A_GIMME, 0);
	class_addmethod(c, (t_method)otable_popfirst, gensym("popfirst"), 0);
	class_addmethod(c, (t_method)otable_poplast, gensym("poplast"), 0);
	class_addmethod(c, (t_method)otable_popnth, gensym("popnth"), A_DEFFLOAT, 0); //<< long
	class_addmethod(c, (t_method)otable_peekfirst, gensym("peekfirst"), 0);
	class_addmethod(c, (t_method)otable_peeklast, gensym("peeklast"), 0);
	class_addmethod(c, (t_method)otable_peeknth, gensym("peeknth"), A_DEFFLOAT, 0);//<<long
    
    class_addmethod(c, (t_method)otable_doc, gensym("doc"), 0);

    
//	CLASS_ATTR_SYM(c, "name", 0, t_otable, name);
//	CLASS_ATTR_ACCESSORS(c, "name", NULL, otable_setName);
    
//	CLASS_ATTR_SYM(c, "key", 0, t_otable, name); // name is a dummy
//	CLASS_ATTR_ACCESSORS(c, "key", otable_getKey, otable_setKey);
    
	otable_class = c;
        
	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION
	return 0;
}

#else
void *otable_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_otable *x;
	if((x = (t_otable *)object_alloc(otable_class))){
		x->outlet = outlet_new((t_object *)x, NULL);
		critical_new(&x->lock);
		x->name = NULL;
		x->db = NULL;

		attr_args_process(x, argc, argv);
		if(!x->name){
			x->db = otable_makedb();
			if(!x->db){
				return NULL;
			}
		}
	}
		   	
	return x;
}

OMAX_DICT_DICTIONARY(t_otable, x, otable_fullPacket);

int main(void)
{
	t_class *c = class_new("o.table", (method)otable_new, (method)otable_free, sizeof(t_otable), 0L, A_GIMME, 0);
    
	class_addmethod(c, (method)otable_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)otable_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)otable_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)otable_getkeys, "getkeys", A_GIMME, 0);
	class_addmethod(c, (method)otable_refer, "refer", A_GIMME, 0);
	class_addmethod(c, (method)otable_clear, "clear", 0);
	class_addmethod(c, (method)otable_dump, "dump", 0);
	class_addmethod(c, (method)otable_read, "read", A_GIMME, 0);
	class_addmethod(c, (method)otable_write, "write", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	class_addmethod(c, (method)otable_prepend, "prepend", A_GIMME, 0);
	class_addmethod(c, (method)otable_append, "append", A_GIMME, 0);
	class_addmethod(c, (method)otable_popfirst, "popfirst", 0);
	class_addmethod(c, (method)otable_poplast, "poplast", 0);
	class_addmethod(c, (method)otable_popnth, "popnth", A_LONG, 0);
	class_addmethod(c, (method)otable_peekfirst, "peekfirst", 0);
	class_addmethod(c, (method)otable_peeklast, "peeklast", 0);
	class_addmethod(c, (method)otable_peeknth, "peeknth", A_LONG, 0);
	class_addmethod(c, (method)otable_delfirst, "delfirst", 0);
	class_addmethod(c, (method)otable_dellast, "dellast", 0);
	class_addmethod(c, (method)otable_delnth, "delnth", A_LONG, 0);

	class_addmethod(c, (method)otable_outputinfo, "info", 0);

	class_addmethod(c, (method)otable_doc, "doc", 0);

	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	CLASS_ATTR_SYM(c, "name", 0, t_otable, name);
	CLASS_ATTR_ACCESSORS(c, "name", NULL, otable_setName);

	CLASS_ATTR_SYM(c, "key", 0, t_otable, name); // name is a dummy
	CLASS_ATTR_ACCESSORS(c, "key", otable_getKey, otable_setKey);

	class_register(CLASS_BOX, c);
	otable_class = c;

	common_symbols_init();

	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION
	return 0;
}
#endif

