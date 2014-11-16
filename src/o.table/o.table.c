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
#define OMAX_DOC_SHORT_DESC "Store OSC bundles in a table"
#define OMAX_DOC_LONG_DESC "o.table appends incoming bundles to the end of an array and optionally associates them with a key."
#define OMAX_DOC_SEEALSO (char *[]){"o.collect", "o.compose", "o.display", "o.var"}
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to store"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Recalled OSC packet(s)"}

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

#ifndef _osc_linkedlist_elem
struct _osc_linkedlist_elem{
	void *data;
	struct _osc_linkedlist_elem *next, *prev;
};

struct _osc_linkedlist{
	t_osc_linkedlist_elem *e;
	unsigned long count;
	t_osc_linkedlist_elem *head, *tail;
	void (*dtor)(void *data);
};
#endif

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

    t_symbol *selector;
    t_osc_linkedlist *llookup;
    t_osc_linkedlist_elem *curr;
    char *typetags;
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
void otable_clear(t_otable *x);


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
    
    //possibly do check for @key value here, if no key present allow for other commands, i.e. /lookup value
    
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
void otable_peek(t_otable *x, float f)
{
    int n = (int)f;
#else
void otable_peek(t_otable *x, t_osc_linkedlist *ll, int n)
{
#endif
	critical_enter(x->lock);
	t_osc_bndl_s *bndl = (t_osc_bndl_s *)osc_linkedlist_peekNth(ll, n);
	critical_exit(x->lock);
	if(bndl){
		long len = osc_bundle_s_getLen(bndl);
		char *ptr = osc_bundle_s_getPtr(bndl);
		omax_util_outletOSC(x->outlet, len, ptr);
	}else{
		omax_util_outletOSC(x->outlet, OSC_HEADER_SIZE, OSC_EMPTY_HEADER);
	}
}

void otable_peeknth(t_otable *x, t_symbol *msg, short ac, t_atom *av)
{
    if(ac == 1 && atom_gettype(av) == A_LONG)
    {
        otable_peek(x, x->db->ll, atom_getlong(av));
    }
    else if(ac == 2 && atom_gettype(av) == A_SYM && atom_getsym(av) == x->selector && atom_gettype(av+1) == A_LONG)
    {
        otable_peek(x, x->llookup, atom_getlong(av));
    }
}
    
void otable_peekfirst(t_otable *x, t_symbol *msg, short ac, t_atom *av)
{
    if(ac == 0)
    {
        otable_peek(x, x->db->ll, 0);
    }
    else if(atom_gettype(av) == A_SYM && atom_getsym(av) == x->selector)
    {
        otable_peek(x, x->llookup, 0);
    }
}

void otable_peeklast(t_otable *x, t_symbol *msg, short ac, t_atom *av)
{
    if(ac == 0)
    {
        otable_peek(x, x->db->ll, -1);
    }
    else if(atom_gettype(av) == A_SYM && atom_getsym(av) == x->selector)
    {
        otable_peek(x, x->llookup, -1);
    }
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
    
    
void otable_linkedlist_printElem(t_otable *x)
{
    if(!x->selector)
        return;
    
    critical_enter(x->lock);
    const char *lookupaddr = x->selector->s_name; //<< pretty sure this is safe
    t_osc_linkedlist *ll = x->db->ll;
    critical_exit(x->lock);
    
    if(ll)
    {
        t_osc_linkedlist_elem *e = ll->head;
        t_osc_linkedlist_elem *next = NULL;
        post("list has %d elements", ll->count);
        
        while(e)
        {
            next = e->next;
            t_osc_bndl_s *bndl = (t_osc_bndl_s *)e->data;
            //            long len = osc_bundle_s_getLen(bndl);
            
            
            //probably separate this part to a different function, and return just the requested value
            //also do a check to amke sure the type is the same for all lookup arguments, otherwise fail
            
            t_osc_msg_ar_s *ar = NULL;
            osc_bundle_s_lookupAddress_b(bndl, lookupaddr, &ar, 1);
            
            if(ar)
            {
                t_osc_msg_s *m = osc_message_array_s_get(ar, 0);
                if(osc_message_s_getArgCount(m) > 0)
                {
                    t_osc_atom_s *a = NULL;
                    osc_message_s_getArg(osc_message_array_s_get(ar, 0), 0, &a);
                    char type = osc_atom_s_getTypetag(a);
                    if(type)
                    {
                        switch (osc_message_s_getTypetag(m, 0))
                        {
                            case 'd':
                                post("double %f", osc_atom_s_getDouble(a));
                                break;
                            case 'f':
                                post("float %f", osc_atom_s_getFloat(a));
                                break;
                            case 'i':
                                post("int %d", osc_atom_s_getInt(a));
                                break;
                            case 't':
                            {
                                t_osc_timetag tt = osc_atom_s_getTimetag(a);
                                post("timetag %d %d %f", tt.sec, tt.frac_sec, osc_timetag_timetagToFloat(tt));
                                break;
                            }
                            case 's':
                            {
                                char *str = NULL;
                                int slen = osc_atom_s_getStringLen(a);
                                osc_atom_s_getString(a, slen, &str);
                                post("%s", str);
                                break;
                            }
                            default:
                                post("no sort implemented for type %c", type);
                                break;
                        }
                        
                        osc_atom_s_free(a);
                        
                    }
                }
            }
            
            osc_message_array_s_free(ar);
            
            e = next;
        }
    }
    
}


int otable_compare_value(   t_osc_linkedlist_elem *a,
                            t_osc_atom_s *b_at,
                            const char *lookupaddr)
{
    t_osc_bndl_s *a_bndl = (t_osc_bndl_s *)a->data;
    t_osc_msg_ar_s *a_ar = NULL;
    
    osc_bundle_s_lookupAddress_b(a_bndl, lookupaddr, &a_ar, 1);
    
    int ret = -2; //-2 means error (probably type tags don't match)
    if(a_ar)
    {
        t_osc_msg_s *a_m = osc_message_array_s_get(a_ar, 0);
        
        int a_m_count = osc_message_s_getArgCount(a_m);
        if( a_m_count > 0)
        {
            t_osc_atom_s *a_at = NULL;
            
            osc_message_s_getArg(osc_message_array_s_get(a_ar, 0), 0, &a_at);
            
            char type = osc_atom_s_getTypetag(a_at);
            if(type == osc_atom_s_getTypetag(b_at)) //<< probably the whole sort should fail if these don't match
            {
                switch (type)
                {
                    case 'd':
                    {
                        double a_val = osc_atom_s_getDouble(a_at);
                        double b_val = osc_atom_s_getDouble(b_at);
                        ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                        break;
                    }
                    case 'f':
                    {
                        float a_val = osc_atom_s_getFloat(a_at);
                        float b_val = osc_atom_s_getFloat(b_at);
                        ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                        break;
                    }
                    case 'i':
                    {
                        float a_val = osc_atom_s_getInt(a_at);
                        float b_val = osc_atom_s_getInt(b_at);
                        ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                        break;
                    }
                    case 't':
                    {
                        t_osc_timetag a_tt = osc_atom_s_getTimetag(a_at);
                        t_osc_timetag b_tt = osc_atom_s_getTimetag(b_at);
                        ret = osc_timetag_compare(a_tt, b_tt);
                        break;
                    }
                    default:
                        post("no sort implemented for type %c", type);
                        break;
                }
                
                osc_atom_s_free(a_at);
                a_at = NULL;
            }
            else
            {
                error("typetag mismatch %c %c", type, osc_atom_s_getTypetag(b_at));
            }
        }
    }
    
    osc_message_array_s_free(a_ar);
    a_ar = NULL;
    
    return ret;
}
 
    
int otable_compare_oscatoms(t_osc_atom_s *a, t_osc_atom_s *b, double *distance)
{
    // no mem alloc here
    int ret = -2;
    char type = osc_atom_s_getTypetag(a);
    if(type == osc_atom_s_getTypetag(b)) //<< probably the whole sort should fail if these don't match
    {
        switch (type)
        {
            case 'd':
            {
                double a_val = osc_atom_s_getDouble(a);
                double b_val = osc_atom_s_getDouble(b);
                ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                *distance = a_val - b_val;
                break;
            }
            case 'f':
            {
                float a_val = osc_atom_s_getFloat(a);
                float b_val = osc_atom_s_getFloat(b);
                ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                *distance = a_val - b_val;
                break;
            }
            case 'l':
            {
                long a_val = osc_atom_s_getInt64(a);
                long b_val = osc_atom_s_getInt64(b);
                ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                *distance = a_val - b_val;
                break;
            }
            case 'i':
            {
                int a_val = osc_atom_s_getInt(a);
                int b_val = osc_atom_s_getInt(b);
                ret = (a_val > b_val) ? 1 : ((a_val < b_val) ? -1 : 0);
                *distance = a_val - b_val;
//                post("a %d ~ %d %d", a_val, b_val, ret);
                break;
            }
            case 't':
            {
                t_osc_timetag a_tt = osc_atom_s_getTimetag(a);
                t_osc_timetag b_tt = osc_atom_s_getTimetag(b);
                ret = osc_timetag_compare(a_tt, b_tt);
                *distance = osc_timetag_timetagToFloat( osc_timetag_subtract(a_tt, b_tt) );
                break;
            }
            default:
                post("no sort implemented for type %c", type);
                break;
        }
    }
    else
    {
        error("type tag mismatch %c b %c", type, osc_atom_s_getTypetag(b));
    }
    return ret;
}
    //to do: make o.expr style expressions for making comparisons
    // and allow for comparing element-wise on lists

void otable_get_atom(t_osc_bndl_s *bndl, char *lookupaddr, long nth, t_osc_msg_ar_s **arPtr, t_osc_atom_s **atPtr)
{
    if(bndl && lookupaddr)
    {
//        printf("%s %d %p 1\n", __func__, __LINE__, bndl);
        if(osc_bundle_s_getPtr(bndl))
            osc_bundle_s_lookupAddress_b(bndl, (const char *)lookupaddr, arPtr, 1);
        else
            *arPtr = NULL;
        
//        printf("%s %d %p 2\n", __func__, __LINE__, bndl);

        t_osc_msg_s *m = NULL;

        if(*arPtr) {
            m = osc_message_array_s_get(*arPtr, 0);
            if( osc_message_s_getArgCount(m) > 0 )
            {
                osc_message_s_getArg(osc_message_array_s_get(*arPtr, 0), nth, atPtr);
            }
        }
    }
}
    
    
void otable_do_lookup(t_otable *x, t_osc_atom_s *target_at, long *len, char **ptr)
{
    //x-selector and x->llookup prechecked
    
//    critical_enter(x->lock); //<< now locked before call
    t_osc_linkedlist_elem *cur = NULL;
    
    char *lookupaddr = x->selector->s_name;
    
    if(x->curr)
        cur = x->curr;
    else
        cur = x->llookup->head;
    
    if(cur == NULL)
    {
        return;
    }
    
    t_osc_msg_ar_s *ar = NULL;
    t_osc_atom_s *at = NULL;
    t_osc_bndl_s *bndl = NULL;
    t_osc_message_u *msg = NULL;
    
    int res;
    double distance = 0;
    
//    t_osc_msg_s *m = NULL;
 //   int m_count = 0;

    int dir = 0;
    
    while(cur)
    {
        bndl = (t_osc_bndl_s *)cur->data;
        
        if(!bndl)
        {
            post("bundle pointer error");
            otable_clear(x);
            if(at)
                osc_atom_s_free(at);
            if(ar)
                osc_message_array_s_free(ar);
            return;
        }
        otable_get_atom(bndl, lookupaddr, 0, &ar, &at);
        res = otable_compare_oscatoms(target_at, at, &distance);
        
        if(res == 0) // match
        {
            *len = osc_bundle_s_getLen(bndl);
            *ptr = osc_mem_alloc(*len);
            memcpy(*ptr, osc_bundle_s_getPtr(bndl), *len);
            break;
        }
        else if(res == 1) // target is greater
        {
            
            if(dir < 0) // if we're moving backwards, then the last attempt may have been greater than tagarget
            {
                
                if(cur->next)
                {
                    t_osc_bndl_u *two_bndls = osc_bundle_u_alloc();
                    msg = osc_message_u_allocWithAddress("/lower");
                    
                    osc_message_u_appendBndl_s(msg,  osc_bundle_s_getLen(bndl), osc_bundle_s_getPtr(bndl));
                    osc_bundle_u_addMsg(two_bndls, msg);
                
                    msg = osc_message_u_allocWithAddress("/upper");
                    t_osc_bndl_s *next_bndl = (t_osc_bndl_s *)cur->next->data;
                    osc_message_u_appendBndl_s(msg,  osc_bundle_s_getLen(next_bndl), osc_bundle_s_getPtr(next_bndl));
                    osc_bundle_u_addMsg(two_bndls, msg);
                    
                    msg = osc_message_u_allocWithAddress("/delta");
                    osc_message_u_appendDouble(msg, distance);
                    osc_bundle_u_addMsg(two_bndls, msg);
                
                    osc_bundle_u_serialize(two_bndls, len, ptr);
                    osc_bundle_u_free(two_bndls);
                    two_bndls = NULL;
                }
                else
                {
                    *len = osc_bundle_s_getLen(bndl);
                    *ptr = osc_mem_alloc(*len);
                    memcpy(*ptr, osc_bundle_s_getPtr(bndl), *len);
                }
                
                break;
            }
            
            dir = 1;
            cur = cur->next;
        }
        else if(res == -1) // target is less, move backwards
        {
            if(dir > 0) // if we're currently moving forward, then this is an inbetween value
            {
                if(cur->prev)
                {
                    t_osc_bndl_u *two_bndls = osc_bundle_u_alloc();
               
                    msg = osc_message_u_allocWithAddress("/lower");
                    t_osc_bndl_s *next_bndl = (t_osc_bndl_s *)cur->prev->data;
                    osc_message_u_appendBndl_s(msg,  osc_bundle_s_getLen(next_bndl), osc_bundle_s_getPtr(next_bndl));
                    osc_bundle_u_addMsg(two_bndls, msg);
                    
                    msg = osc_message_u_allocWithAddress("/upper");
                    osc_message_u_appendBndl_s(msg,  osc_bundle_s_getLen(bndl), osc_bundle_s_getPtr(bndl));
                    osc_bundle_u_addMsg(two_bndls, msg);
                    
                    msg = osc_message_u_allocWithAddress("/delta");
                    osc_message_u_appendDouble(msg, 1 + distance);
                    osc_bundle_u_addMsg(two_bndls, msg);
                    
                    osc_bundle_u_serialize(two_bndls, len, ptr);
                    osc_bundle_u_free(two_bndls);
                    two_bndls = NULL;
                }
                else
                {
                    *len = osc_bundle_s_getLen(bndl);
                    *ptr = osc_mem_alloc(*len);
                    memcpy(*ptr, osc_bundle_s_getPtr(bndl), *len);
                }
                break;
            }
            
            dir = -1;
            cur = cur->prev;
        }
        else if(res == -2)
        {
            break;
        }
        
    }
    
    x->curr = cur;
    if(at)
        osc_atom_s_free(at);
    if(ar)
        osc_message_array_s_free(ar);
    ar = NULL;
    at = NULL;
    
    //critical_exit(x->lock);
    
}
 
    
    //make generic t_osc_s_atom comparison
    
void otable_lookup(t_otable *x, t_symbol *s, short argc, t_atom *argv)
{
/*      1) check that type tags match (do this eventually)
        2) check if x-llookup exsists (this function should not trigger sort)
        3) use precision setting to decide what range to output? maybe not, or yes, if a bunch of them match
 */
    critical_enter(x->lock);
    if(argc && x->selector && x->llookup->head && strlen(x->typetags) > 1)
    {
        t_osc_atom_s *target_at = NULL;
        
        switch (atom_gettype(argv)) {
            case A_LONG:
                target_at = osc_atom_s_alloc('i', NULL);
                osc_atom_s_setInt32(target_at, atom_getlong(argv));
                break;
            case A_FLOAT:
                target_at = osc_atom_s_alloc('d', NULL);
                osc_atom_s_setDouble(target_at, atom_getfloat(argv));
                break;
            case A_SYM:
                break;
            default:
                post("unsupported lookup type");
                break;
        }
        
        long len = 0;
        char *ptr = NULL;
        otable_do_lookup(x, target_at, &len, &ptr);
        
        if(ptr)
        {
            omax_util_outletOSC(x->outlet, len, ptr);
            osc_mem_free(ptr);
        }
        if(target_at)
            osc_atom_s_free(target_at);
        
        target_at = NULL;
        ptr = NULL;
    }
    critical_exit(x->lock);

}
    
int otable_compare_elements(t_osc_linkedlist_elem *a,
                            t_osc_linkedlist_elem *b,
                            const char *lookupaddr)
{
    // could move mem alloc and free to parent patcher
    t_osc_bndl_s *a_bndl = (t_osc_bndl_s *)a->data;
    t_osc_bndl_s *b_bndl = (t_osc_bndl_s *)b->data;
    t_osc_msg_ar_s *a_ar = NULL;
    t_osc_msg_ar_s *b_ar = NULL;
    
    osc_bundle_s_lookupAddress_b(a_bndl, lookupaddr, &a_ar, 1);
    osc_bundle_s_lookupAddress_b(b_bndl, lookupaddr, &b_ar, 1);

    int ret = -1;
    if(a_ar && b_ar)
    {
        t_osc_msg_s *a_m = osc_message_array_s_get(a_ar, 0);
        t_osc_msg_s *b_m = osc_message_array_s_get(b_ar, 0);

        int a_m_count = osc_message_s_getArgCount(a_m);
        if( a_m_count > 0 && a_m_count == osc_message_s_getArgCount(b_m))
        {
            t_osc_atom_s *a_at = NULL;
            t_osc_atom_s *b_at = NULL;
            osc_message_s_getArg(osc_message_array_s_get(a_ar, 0), 0, &a_at);//note: one value of array at at time, for now just index 0

            osc_message_s_getArg(osc_message_array_s_get(b_ar, 0), 0, &b_at);

            char type = osc_atom_s_getTypetag(a_at);
            if(type && type == osc_atom_s_getTypetag(b_at)) //<< probably the whole sort should fail if these don't match
            {
                switch (type)
                {
                    case 'd':
                    {
                        double a_val = osc_atom_s_getDouble(a_at);
                        double b_val = osc_atom_s_getDouble(b_at);
                        ret = (int)(a_val >= b_val);
                        break;
                    }
                    case 'f':
                    {
                        float a_val = osc_atom_s_getFloat(a_at);
                        float b_val = osc_atom_s_getFloat(b_at);
                        ret = (int)(a_val >= b_val);
                        break;
                    }
                    case 'i':
                    {
                        float a_val = osc_atom_s_getInt(a_at);
                        float b_val = osc_atom_s_getInt(b_at);
                        ret = (int)(a_val >= b_val);
                        break;
                    }
                    case 't':
                    {
                        t_osc_timetag a_tt = osc_atom_s_getTimetag(a_at);
                        t_osc_timetag b_tt = osc_atom_s_getTimetag(b_at);
                        ret = (int)(osc_timetag_compare(a_tt, b_tt) > 0);
                        break;
                    }
                    default:
                        post("no sort implemented for type %c", type);
                        break;
                }
                
                osc_atom_s_free(a_at);
                osc_atom_s_free(b_at);
                a_at = NULL;
                b_at = NULL;
            }
        }
    }
    
    osc_message_array_s_free(a_ar);
    osc_message_array_s_free(b_ar);
    a_ar = NULL;
    b_ar = NULL;
    return ret;
}

void temp_print_list(t_osc_linkedlist_elem *e)
{
    int count = 0;
    post("----------------------------");
    while (e) {
        post("%d %x",count++, e);
        e = e->next;
    }
}

    
void otable_move_node(t_osc_linkedlist_elem **dst, t_osc_linkedlist_elem **src)
{
    t_osc_linkedlist_elem *new = *src;
    if(new != NULL)
    {
        *src = new->next;
        new->next = *dst;
        *dst = new;
    }
}
    
t_osc_linkedlist_elem *otable_sortedMerge(t_osc_linkedlist_elem *a, t_osc_linkedlist_elem *b, const char *lookupaddr)
{
    t_osc_linkedlist_elem dummy; // a dummy first node to hang the result on
    t_osc_linkedlist_elem* tail = &dummy; // Points to the last result node --
    // so tail->next is the place to add
    // new nodes to the result.
    dummy.next = NULL;
    while (1) {
        if (a == NULL) { // if either list runs out, use the other list
            tail->next = b;
            break;
        }
        else if (b == NULL) {
            tail->next = a;
            break;
        }
        
        if (otable_compare_elements(a,b, lookupaddr)==0) {
            otable_move_node(&(tail->next), &a);
        }
        else {
            otable_move_node(&(tail->next), &b);
        }
        tail = tail->next;
    }
    return(dummy.next);
}
 
void FrontBackSplit(t_osc_linkedlist_elem* source,
                     t_osc_linkedlist_elem** frontRef, t_osc_linkedlist_elem** backRef) {
    t_osc_linkedlist_elem* fast;
    t_osc_linkedlist_elem* slow;
    if (source==NULL || source->next==NULL) { // length < 2 cases
        *frontRef = source;
        *backRef = NULL;
    }
    else {
        slow = source;
        fast = source->next;
        // Advance 'fast' two nodes, and advance 'slow' one node
        while (fast != NULL) {
            fast = fast->next;
            if (fast != NULL) {
                slow = slow->next;
                fast = fast->next;
            }
        }
        // 'slow' is before the midpoint in the list, so split it in two
        // at that point.
        *frontRef = source;
        *backRef = slow->next;
        slow->next = NULL;
    }
}
    
void otable_mergeSort(t_osc_linkedlist_elem **headRef, char *lookupaddr)
{
    t_osc_linkedlist_elem* head = *headRef;
    t_osc_linkedlist_elem* a;
    t_osc_linkedlist_elem* b;
    // Base case -- length 0 or 1
    if ((head == NULL) || (head->next == NULL)) {
        return;
    }
    FrontBackSplit(head, &a, &b); // Split head into 'a' and 'b' sublists
    // We could just as well use AlternatingSplit()
    otable_mergeSort(&a, lookupaddr); // Recursively sort the sublists
    otable_mergeSort(&b, lookupaddr);
    *headRef = otable_sortedMerge(a, b, lookupaddr); // answer = merge the two sorted lists together

}

void otable_sortlist_init(t_osc_linkedlist *ll)
{
	ll->e = NULL;
	ll->count = 0;
	ll->head = NULL;
	ll->tail = NULL;
	ll->dtor = NULL;

}
    
void otable_sortlist_free_elems(t_osc_linkedlist *ll)
{
    if(ll)
    {
        t_osc_linkedlist_elem *next, *e = ll->head;

            while(e != NULL)
            {
                next = e->next;
                osc_mem_free(e);
                e = NULL;
                e = next;
            }
        
        otable_sortlist_init(ll);
    }

}
    

    
void otable_sortlist_append(t_osc_linkedlist *ll, t_osc_linkedlist_elem *new)
{
    if(ll)
    {
		t_osc_linkedlist_elem *e = (t_osc_linkedlist_elem *)osc_mem_alloc(sizeof(t_osc_linkedlist_elem));
        e->data = new->data;
        e->next = NULL;
        e->prev = NULL;
        
		if(ll->tail)
        {
			ll->tail->next = e;
			e->next = NULL;
			e->prev = ll->tail;
			ll->tail = e;
		}
        else
        {
			ll->head = e;
			ll->tail = e;
		}
		ll->count++;
	}
}
    
void otable_sort(t_otable *x)
{
    
    if(!x->selector || !x->llookup || !x->db->ll->head)
        return;
    
    critical_enter(x->lock);
    
    char *lookupaddr = x->selector->s_name;
    
    x->curr = NULL;
    
    t_osc_linkedlist_elem *next, *e = x->db->ll->head;
    next = NULL;
    t_osc_msg_ar_s *ar = NULL;
    t_osc_atom_s *at = NULL;
    t_osc_bndl_s *bndl = NULL;
    
    while (e)
    {
        next = e->next;

        bndl = (t_osc_bndl_s *)e->data;
        
        otable_get_atom(bndl, lookupaddr, 0, &ar, &at);
        
        if(at)
            otable_sortlist_append(x->llookup, e);

        e = next;
    }
    
    if (x->llookup->count == 0)
    {
        critical_exit(x->lock);
        post("no data found for the address %s", lookupaddr);
        return;
    }
    
//    post("prevcount %d count %d head %x tail %x", x->db->ll->count, x->llookup->count, x->llookup->head, x->llookup->tail);

    otable_mergeSort(&x->llookup->head, lookupaddr);

//    post("postcount %d count %d head %x tail %x", x->db->ll->count, x->llookup->count, x->llookup->head, x->llookup->tail);
    
    //log typetags
    bndl =  (t_osc_bndl_s *)x->llookup->head->data;
    osc_bundle_s_lookupAddress_b(bndl, x->selector->s_name, &ar, 1);
    
    if(ar)
    {
        t_osc_msg_s *m = osc_message_array_s_get(ar, 0);
        char *ttags = osc_message_s_getTypetags(m);
        int taglen = strlen(ttags);
        
        if(x->typetags == NULL)
            x->typetags = osc_mem_alloc((taglen + 1) * sizeof(char));
        else
            x->typetags = osc_mem_resize(x->typetags, (taglen + 1) * sizeof(char));
        
        memcpy(x->typetags, ttags, sizeof(char) * strlen(ttags));
    }

    osc_atom_s_free(at);
    osc_message_array_s_free(ar);
    
    critical_exit(x->lock);

}
    
t_max_err otable_setLookup(t_otable *x, void *attr, long ac, t_atom *av)
{

    critical_enter(x->lock);
    x->selector = atom_getsym(av);
    
    // add possibility for list of lookups here
    x->llookup = (t_osc_linkedlist *)osc_mem_alloc(sizeof(t_osc_linkedlist));
    otable_sortlist_init(x->llookup);
    
    critical_exit(x->lock);

    return MAX_ERR_NONE;
}

#ifndef OMAX_PD_VERSION
t_max_err otable_getLookup(t_otable *x, void *attr, long *ac, t_atom **av)
{
    critical_enter(x->lock);
    t_symbol *s = x->selector;
    critical_exit(x->lock);

    if(ac && av){
        char alloc;
        if(atom_alloc(ac, av, &alloc)){
            return MAX_ERR_GENERIC;
        }
        if(s){
            atom_setsym(*av, s);
        }else{
            atom_setsym(*av, _sym_emptytext);
        }
    }
    return MAX_ERR_NONE;
}
#endif
    
    
#define OTABLE_COPY_BEFORE_DUMP
void otable_dump(t_otable *x, t_symbol *msg, short argc, t_atom *argv)
{
    if (argc == 0)
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
    else
    {
        if(atom_gettype(argv) == A_SYM && atom_getsym(argv) == x->selector)
        {
            t_osc_linkedlist *ll = x->llookup;
            osc_linkedlist_iterate(ll, otable_dumpCallback, (void *)x);
        }
            
    }
	
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
    
    otable_sortlist_free_elems(x->llookup);
    x->curr = NULL;
    
    if(x->typetags)
    {
        osc_mem_free(x->typetags);
        x->typetags = NULL;
    }
	
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
    otable_sortlist_free_elems(x->llookup); //saftey checks inside
    if(x->llookup)
        osc_mem_free(x->llookup);
    
	critical_free(x->lock);
    if(x->typetags)
        osc_mem_free(x->typetags);
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
			if(x->name){
				t_symbol *mangled_name = otable_mangle(x->name);
				mangled_name->s_thing = NULL;
			}
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
    
#ifndef OMAX_PD_VERSION
t_max_err otable_getKey(t_otable *x, void *attr, long *ac, t_atom **av)
{
    //for some reason this isn't working for me - Rama
    
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
        
        x->selector = NULL;
        x->llookup = NULL;
        x->typetags = NULL;
        x->curr = NULL;

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
	class_addmethod(c, (method)otable_dump, "dump", A_GIMME, 0);
	class_addmethod(c, (method)otable_read, "read", A_GIMME, 0);
	class_addmethod(c, (method)otable_write, "write", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	class_addmethod(c, (method)otable_prepend, "prepend", A_GIMME, 0);
	class_addmethod(c, (method)otable_append, "append", A_GIMME, 0);
	class_addmethod(c, (method)otable_popfirst, "popfirst", 0);
	class_addmethod(c, (method)otable_poplast, "poplast", 0);
	class_addmethod(c, (method)otable_popnth, "popnth", A_LONG, 0);
	class_addmethod(c, (method)otable_peekfirst, "peekfirst", A_GIMME, 0);
	class_addmethod(c, (method)otable_peeklast, "peeklast", A_GIMME, 0);
	class_addmethod(c, (method)otable_peeknth, "peeknth", A_GIMME, 0);
	class_addmethod(c, (method)otable_delfirst, "delfirst", 0);
	class_addmethod(c, (method)otable_dellast, "dellast", 0);
	class_addmethod(c, (method)otable_delnth, "delnth", A_LONG, 0);

	class_addmethod(c, (method)otable_outputinfo, "info", 0);

	class_addmethod(c, (method)otable_doc, "doc", 0);

    class_addmethod(c, (method)otable_linkedlist_printElem, "printElem", 0);
    class_addmethod(c, (method)otable_sort, "dosort", 0);
    class_addmethod(c, (method)otable_lookup, "lookup", A_GIMME, 0);
    
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}

	CLASS_ATTR_SYM(c, "name", 0, t_otable, name);
	CLASS_ATTR_ACCESSORS(c, "name", NULL, otable_setName);

	CLASS_ATTR_SYM(c, "key", 0, t_otable, name); // name is a dummy
	CLASS_ATTR_ACCESSORS(c, "key", otable_getKey, otable_setKey);

    CLASS_ATTR_SYM(c, "sort", 0, t_otable, selector); // name is a dummy
	CLASS_ATTR_ACCESSORS(c, "sort", otable_getLookup, otable_setLookup);
    
	class_register(CLASS_BOX, c);
	otable_class = c;

	common_symbols_init();

	ps_FullPacket = gensym("FullPacket");
	ODOT_PRINT_VERSION
	return 0;
}
#endif

