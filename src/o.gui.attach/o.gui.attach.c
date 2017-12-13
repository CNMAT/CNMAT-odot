/*
 Written by Rama Gottfried, The Center for New Music and Audio Technologies,
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
 NAME: o.gui.attach
 DESCRIPTION: Attaches to GUI objects with OSC varnames
 AUTHORS: Rama Gottfried
 COPYRIGHT_YEARS: 2017
 SVN_REVISION: $LastChangedRevision: 587 $
 VERSION 0.0: First try
 @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
 */


#define OMAX_DOC_NAME "o.gui.attach"
#define OMAX_DOC_SHORT_DESC "Attaches to GUI objects with OSC varnames"
#define OMAX_DOC_LONG_DESC "o.gui.attach attaches to GUI objects in it finds in the patch with OSC scripting names (aka varname). Anytime a value changes, the value is updated and sent out in bundle form. Note that o.gui.attach does not search subpatches."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to set values, bang or empty bundle causes output of current state of attached objects"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing state of attached GUI objects", "OSC error message outlet.", "OSC messages not matching attached GUI objects."}
#define OMAX_DOC_SEEALSO (char *[]){"cnmat.o.gui.function", "cnmat.o.gui.table", "pattrstorage"}


#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"

#include "osc.h"
#include "osc_bundle_iterator_u.h"

#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "odot_version.h"


typedef enum o_gui_attach_err {
    O_ATTACH_NOERROR = 0,
    O_ATTACH_NOPARENT,
    O_ATTACH_DUPLICATE
} t_o_attach_err;

typedef struct _objmap
{
    t_object *ob;
    t_symbol *name;
    struct _objmap *next, *prev;
} t_objmap;

typedef struct _o_gui_attach
{
    t_object        ob;
    void            *outlet;
    void            *error_outlet;
    void            *unmatched_outlet;
    
    t_patcher       *base_patch;

    t_osc_bndl_u    *bndl;
    t_osc_bndl_u    *error_bndl;
    
    void            *qelem_output;
    void            *clock;
	t_critical      lock;

    int             attach_err;
    
    t_objmap        *head, *tail;
} t_o_gui_attach;

t_class *o_gui_attach_class;


t_objmap *o_gui_attach_new_objnode(t_object *o, t_symbol *s)
{
    t_objmap *node = (t_objmap*)malloc(sizeof(t_objmap));
    if( node )
    {
        node->ob = o;
        node->name = s;
        node->next = NULL;
        node->prev = NULL;
        return node;
    }
    return NULL;
}

void o_gui_attach_insert_objmap(t_o_gui_attach *x, t_object *o, t_symbol *s)
{
    critical_enter(x->lock);
    t_objmap *newobj = o_gui_attach_new_objnode(o, s);
    if( newobj )
    {
        t_objmap *tail = x->tail;

        if( !tail )
        {
            x->head = newobj;
            x->tail = newobj;
        }
        else
        {
            // for now just adding to end of list
            x->tail->next = newobj;
            newobj->prev = x->tail;
            x->tail = newobj;
        }
    }
    critical_exit(x->lock);
}

void o_gui_attach_remove_objmap(t_o_gui_attach *x, t_object *o)
{
    critical_enter(x->lock);
    t_objmap *node = x->head;
    while( node )
    {
        if( node->ob == o )
        {
            if( node == x->head )
                x->head = node->next;
            if( node == x->tail )
                x->tail = node->prev;

            if( node->prev )
                node->prev->next = node->next;
            if( node->next )
                node->next->prev = node->prev;

            free(node);
            node = NULL;
            critical_exit(x->lock);
            return;
        }
        node = node->next;
    }
    critical_exit(x->lock);
}

t_symbol *o_gui_attach_get_obj_name(t_o_gui_attach *x, t_object *o)
{
    critical_enter(x->lock);
    t_objmap *node = x->head;
    while( node )
    {
        if( node->ob == o )
        {
            critical_exit(x->lock);
            return node->name;
        }
        node = node->next;
    }
    critical_exit(x->lock);
    return NULL;
}

bool o_gui_attach_objmap_exists(t_o_gui_attach *x, t_object *o)
{
    critical_enter(x->lock);
    t_objmap *node = x->head;
    while( node )
    {
        if( node->ob == o )
        {
            critical_exit(x->lock);
            return true;
        }
        node = node->next;
    }
    critical_exit(x->lock);
    return false;
}

void o_gui_attach_clear_objmap(t_o_gui_attach *x)
{
    critical_enter(x->lock);
    t_objmap *tmp = NULL;
    t_objmap *node = x->head;
    while( node )
    {
        object_detach_byptr(x, node->ob);
        tmp = node;
        node = node->next;
        free(tmp);
        tmp = NULL;
    }
    critical_exit(x->lock);
}

void o_gui_attach_setValue(t_o_gui_attach *x, t_object *ob, long argc, t_atom *argv)
{
    object_setvalueof(ob, argc, argv);
}

void o_gui_attach_getValue(t_o_gui_attach *x, t_object *ob)
{
    t_atom *at = NULL;
    long ac;
    object_getvalueof(ob, &ac, &at);

    t_symbol *name = object_attr_getsym(ob, gensym("varname"));

    if( ac && at && name )
    {
        t_osc_message_u *msg = osc_message_u_allocWithAddress(name->s_name);

        for(int i = 0; i < ac; i++)
        {
            t_osc_atom_u *a = osc_atom_u_alloc();
            omax_util_maxAtomToOSCAtom_u(&a, at+i);
            osc_message_u_appendAtom(msg, a);
        }
        osc_bundle_u_addMsgWithoutDups(x->bndl, msg);
    }
}

void o_gui_attach_output_bundle(t_o_gui_attach *x)
{
    t_osc_bndl_s *s_bnd = osc_bundle_u_serialize(x->bndl);
    t_osc_bndl_s *s_err_bnd = osc_bundle_u_serialize(x->error_bndl);
    
    if( s_err_bnd && osc_bundle_s_getLen(s_err_bnd) > OSC_HEADER_SIZE )
    {
        omax_util_outletOSC(x->error_outlet, osc_bundle_s_getLen(s_err_bnd), osc_bundle_s_getPtr(s_err_bnd));
    }

    // outputs empty bundle when nothing is attached
    omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(s_bnd), osc_bundle_s_getPtr(s_bnd));
    
    osc_bundle_u_clear(x->error_bndl);
    
    if( s_bnd )
        osc_bundle_s_deepFree(s_bnd);
    
    if( s_err_bnd )
        osc_bundle_s_deepFree(s_err_bnd);
}

void o_gui_attach_addErr(t_o_gui_attach *x, char *err_buf, char *name, char *varname)
{
    char addr_buf[256];
    snprintf(addr_buf, 256, "/status/%d", osc_bundle_u_getMsgCount(x->error_bndl) );
    
    t_osc_bndl_u *sub = osc_bundle_u_alloc();
    
    if( err_buf )
        osc_bundle_u_addMsg(sub, osc_message_u_allocWithString("/message", err_buf ));
    
    if( name )
        osc_bundle_u_addMsg(sub, osc_message_u_allocWithString("/object", name ) );
    
    if( varname )
        osc_bundle_u_addMsg(sub, osc_message_u_allocWithString("/varname", varname ));
    
    t_osc_msg_u *error_sub_msg = osc_message_u_allocWithAddress(addr_buf);
    osc_message_u_appendBndl_u(error_sub_msg, sub);
    osc_bundle_u_addMsg(x->error_bndl, error_sub_msg);
}

int o_gui_attach_checkNameAndType(t_o_gui_attach *x, t_object *b, t_symbol *name)
{
    if( !name || !b)
        return 0;

    char *str = name->s_name;

    if( str[0] == '/' )
    {

        long len = strlen(str);
        char buf[len];
        buf[0] = '\0';

        for(int i = 0; i < len; i++)
        {
            char c = str[i];
            if( (c == '-' || c == '.' || !isalnum( c )) && c != '/' && c != '_' )
            {
                sprintf(buf, "%s %c ", buf, c);
            }
        }

        if( buf[0] != '\0' )
        {
            // 256 should hopfully be enough
            char err_buf[256];
            snprintf(err_buf, 256, "varname uses characters ( %s ), o.gui.attach could not attach", buf );

            o_gui_attach_addErr(x, err_buf, object_classname(b)->s_name, str);
            
            object_warn((t_object* )b, "%s", err_buf );
            return 0;
        }

        t_atom *at = NULL;
        long ac;
        object_getvalueof(b, &ac, &at);

        if( ac == 1 && atom_gettype(at) == A_SYM )
        {
            if( !strncmp(atom_getsym(at)->s_name, "object", 6) )
            {
                char err_buf[256];
                snprintf(err_buf, 256, "varname (%s) looks like an OSC address but o.gui.attach cannot link to non-GUI objects", str );

                o_gui_attach_addErr(x, err_buf, object_classname(b)->s_name, str);
                
                object_warn((t_object* )b, "%s", err_buf );
                return 0;
            }
        }


        return 1;
    }
    else
    {
        // fail quietly since most object don't have OSC var names
        //object_error((t_object* )b, "varname does not start with a / -- o.gui.attach could not attach" );
        return 0;
    }
}

void o_gui_attach_attach(t_o_gui_attach *x, t_object *b, t_symbol *name)
{
    if( o_gui_attach_checkNameAndType(x, b, name) && !o_gui_attach_objmap_exists(x, b) )
    {
        object_attach_byptr(x, b);
        o_gui_attach_insert_objmap(x, b, name);
        o_gui_attach_getValue( x, b );

        /*
         // Subscribe could be useful in case of specifying a namespace before creating the objects...
         // but in the iterator, we are only looking at objects that already exist
         t_symbol *name_space, *s, *classname;
         object_findregisteredbyptr(&name_space, &s, b);
         object_subscribe(name_space, s, object_classname(b), s);
         */
    }
}

long o_gui_attach_attach_iterator(t_o_gui_attach *x, t_object *b)
{

    if( b == (t_object *)x )
        return 0;

    t_symbol *name = object_attr_getsym(b, gensym("varname"));
    o_gui_attach_attach(x, b, name);

    return 0;
}

void o_gui_attach_do_iter(t_o_gui_attach *x)
{
    long result = 0;
    if( x->base_patch )
        object_method(x->base_patch, gensym("iterate"), o_gui_attach_attach_iterator, (void *)x, PI_WANTBOX, &result); // | PI_DEEP
    else
    {
        
        switch( x->attach_err )
        {
            case O_ATTACH_DUPLICATE:
                o_gui_attach_addErr(x, "only one active o.gui.attach is allowed per patcher, this instance will be disabled", NULL, NULL );
                object_error((t_object*)x, "only one active o.gui.attach is allowed per patcher, this instance will be disabled" );
                break;
            case O_ATTACH_NOPARENT:
                o_gui_attach_addErr(x, "could not attach to parent patcher", NULL, NULL );
                object_error((t_object*)x, "could not attach to parent patcher" );
                break;
            
        }
        
        t_osc_bndl_s *s_err_bnd = osc_bundle_u_serialize(x->error_bndl);
        omax_util_outletOSC(x->error_outlet, osc_bundle_s_getLen(s_err_bnd), osc_bundle_s_getPtr(s_err_bnd));
        osc_bundle_u_clear(x->error_bndl);
        
        if( s_err_bnd )
            osc_bundle_s_deepFree(s_err_bnd);

    }
}

void o_gui_attach_iter_and_out(t_o_gui_attach *x)
{
    // post("o_gui_attach_iter_and_out");
    
    if( x->base_patch )
    o_gui_attach_do_iter(x);
    o_gui_attach_output_bundle(x);
}

void o_gui_attach_unattach(t_o_gui_attach *x, t_object *b)
{
    // post("o_gui_attach_unattach %p", b);
    t_symbol *name = o_gui_attach_get_obj_name(x, b);
    if( !name )
        return;

    // post("removing %p %s", b, x->obj_map.at(b)->s_name );

    object_detach_byptr(x, b);

    const char *address = name->s_name;
    t_osc_bndl_it_u *it = osc_bndl_it_u_get(x->bndl);
    while(osc_bndl_it_u_hasNext(it))
    {
        t_osc_msg_u *current_message = osc_bndl_it_u_next(it);

        if( strcmp(osc_message_u_getAddress(current_message), address) )
            continue;

        osc_bundle_u_removeMsg(x->bndl, current_message);
        osc_message_u_free(current_message);
    }
    osc_bndl_it_u_destroy(it);

    o_gui_attach_remove_objmap(x, b);

}

void o_gui_attach_bang(t_o_gui_attach *x)
{
    o_gui_attach_do_iter(x);
    o_gui_attach_output_bundle(x);
}

void o_gui_attach_checkSet(t_o_gui_attach *x, t_object *b, char *addr, long argc, t_atom *argv )
{
    long test_argc = 0;
    t_atom *test_argv = NULL;
    object_getvalueof(b, &test_argc, &test_argv );
    
    if( argc != test_argc )
    {
        o_gui_attach_addErr(x, "failed to set values",  object_classname(b)->s_name, addr );
        object_error((t_object*)x, "failed to set values for %s %s", object_classname(b)->s_name, addr );
        return;
    }
    
    int i ;
    for( i = 0; i < argc; i++ )
    {
        int set_a_type = atom_gettype(argv + i);
        int test_b_type = atom_gettype(test_argv + i);
        
        if( test_b_type != set_a_type )
        {
            if( test_b_type == A_LONG && set_a_type == A_FLOAT ) // truncation case
            {
                double test_int = (double)atom_getlong(test_argv + i);
                double set_double = atom_getfloat(argv + i);
                
                if( test_int != set_double )
                {
                    o_gui_attach_addErr(x, "failed to set value (truncation)",  object_classname(b)->s_name, addr );
                }
            }
            else if( (test_b_type == A_LONG || test_b_type == A_FLOAT) && set_a_type == A_SYM ) // setting float with symbol
            {
                o_gui_attach_addErr(x, "failed to set value (attempting to set number with symbol)",  object_classname(b)->s_name, addr );
            }
            else if( test_b_type == A_SYM && (set_a_type == A_FLOAT || set_a_type == A_LONG ) ) // setting symbol with number (probably ok?)
            {
                // I think this is never actaully called
                o_gui_attach_addErr(x, "warning: set symbol with number",  object_classname(b)->s_name, addr );
            }
            // (ok if long sets a float)
            
        }
        
    }
}

void o_gui_attach_fullPacket(t_o_gui_attach *x, t_symbol *msg, int argc, t_atom *argv)
{

    // post("o_gui_attach_fullPacket");

    OMAX_UTIL_GET_LEN_AND_PTR
    
    // printf("x %p len %ld ptr %p\n", x, len, ptr);
    
    t_osc_bndl_u *in_bnd = osc_bundle_s_deserialize(len, ptr);

    if( len == OSC_HEADER_SIZE )
    {
        o_gui_attach_bang(x);
    }
    else if( in_bnd )
    {

        t_osc_bndl_u *bnd_match = NULL;
        t_osc_bndl_u *new_internal_bndl = NULL;

        critical_enter(x->lock);

        osc_bundle_u_intersection(in_bnd, x->bndl, &bnd_match);
        osc_bundle_u_union(bnd_match, x->bndl, &new_internal_bndl );
        osc_bundle_u_free(x->bndl);
        x->bndl = new_internal_bndl;

        critical_exit(x->lock);

        if( bnd_match )
        {
            t_osc_bndl_it_u *it = osc_bndl_it_u_get(bnd_match);

            while(osc_bndl_it_u_hasNext(it))
            {
                t_osc_msg_u *msg = osc_bndl_it_u_next(it);
                t_symbol *addr  = gensym(osc_message_u_getAddress(msg));

                critical_enter(x->lock);
                t_objmap *node = x->head;
                while( node )
                {

                    if( node->name == addr )
                    {
                 //       post("matched %s", addr->s_name);
                        long nargs = osc_message_u_getArgCount(msg);
                        t_atom at[nargs];

                        for( int i = 0; i < nargs; i++)
                        {
                            t_osc_atom_u *a = osc_message_u_getArg(msg, i);
                            switch (osc_atom_u_getTypetag(a))
                            {
                                case 'd':
                                    atom_setfloat(&at[i], osc_atom_u_getDouble(a));
                                    break;
                                case 'f':
                                    atom_setfloat(&at[i], osc_atom_u_getFloat(a));
                                    break;
                                case 'l':
                                    atom_setlong(&at[i], osc_atom_u_getInt64(a));
                                    break;
                                case 'i':
                                    atom_setlong(&at[i], osc_atom_u_getInt32(a));
                                    break;
                                case 's':
                                    atom_setsym(&at[i], gensym(osc_atom_u_getStringPtr(a)));
                                    break;
                                default:
                                    o_gui_attach_addErr(x, "unsupported type", osc_atom_u_getTypetag(a), addr->s_name);
                                    object_error((t_object*)x, "unsupported type %c for %s %s", osc_atom_u_getTypetag(a), object_classname(node->ob)->s_name, addr->s_name );
                                    break;
                            }
                        }

                        // post("setting %d args", nargs);
                        t_max_err err = object_setvalueof(node->ob, nargs, at);
                        if( err )
                        {
                            o_gui_attach_addErr(x, "unable to set values", object_classname(node->ob)->s_name, addr->s_name);
                            object_error((t_object*)x, "unable to set values for %s %s", object_classname(node->ob)->s_name, addr->s_name );
                        }
                        else
                        {
                            o_gui_attach_checkSet(x, node->ob, addr->s_name, nargs, at );
                        }
                        
                    }
                    node = node->next;
                }
                critical_exit(x->lock);

            }

            osc_bndl_it_u_destroy(it);

            
            long del_len;
            char *del_ptr = NULL;
            t_osc_bndl_s *del_bndl = NULL;
            
            t_osc_bndl_s *s_internal_bndl = osc_bundle_u_serialize(new_internal_bndl);
            
            t_osc_bndl_s *s_match_bndl = osc_bundle_u_serialize(bnd_match);
            osc_bundle_s_difference( len, ptr,
                                    osc_bundle_s_getLen(s_match_bndl), osc_bundle_s_getPtr(s_match_bndl),
                                    &del_len, &del_ptr);

            
            del_bndl = osc_bundle_s_alloc(del_len, del_ptr);
            if( osc_bundle_s_getLen(del_bndl) > OSC_HEADER_SIZE )
            {
                omax_util_outletOSC(x->unmatched_outlet, osc_bundle_s_getLen(del_bndl), osc_bundle_s_getPtr(del_bndl) );
            }
            
            t_osc_bndl_s *s_err_bndl = osc_bundle_u_serialize(x->error_bndl);
            if( osc_bundle_s_getLen(s_err_bndl) > OSC_HEADER_SIZE )
            {
                omax_util_outletOSC(x->error_outlet, osc_bundle_s_getLen(s_err_bndl), osc_bundle_s_getPtr(s_err_bndl) );
            }
            
            omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(s_internal_bndl), osc_bundle_s_getPtr(s_internal_bndl) );

            if( s_internal_bndl )
                osc_bundle_s_deepFree(s_internal_bndl);
            
            if( del_bndl )
                osc_bundle_s_deepFree(del_bndl);
            
            if( s_err_bndl )
                osc_bundle_s_deepFree(s_err_bndl);
            
            if( s_match_bndl )
                osc_bundle_s_deepFree(s_match_bndl);
            
            osc_bundle_u_free(bnd_match);
        }
        osc_bundle_u_free(in_bnd);
    }

}

OMAX_DICT_DICTIONARY(t_o_gui_attach, x, o_gui_attach_fullPacket);

void o_gui_attach_patcher_test(t_o_gui_attach *x)
{

    t_object *jp;
    t_object *jbx;
    t_object *o;
    t_max_err err;

    err = object_obex_lookup(x, gensym("#P"), (t_object **)&jp);
    if (err != MAX_ERR_NONE)
        return;

    // some kind of patcher in a box
    if ((jbx = jpatcher_get_box(jp)))
    {
        t_object *textfield = jbox_get_textfield(jbx);

        char *text = NULL;
        long textlen;
        object_method(textfield, gensym("gettextptr"), &text, &textlen);

        long size;
        t_atom *pargv;
        atom_setparse(&size, &pargv, text);
        t_atom *argv = pargv;

        for(int i = 0; i < size; i++ )
        {
            int type = atom_gettype(argv+i);

            if( type == A_SYM )
            {
                t_symbol *sym = atom_getsym(argv+i);
                post("got a %s", sym );
                if( sym->s_name[0] == '@' )
                    break;
            }
            else if(type == A_LONG )
            {
                post("got a %ld", atom_getlong(argv+i) );
            }
            else if(type == A_FLOAT )
            {
                post("got a %f", atom_getfloat(argv+i) );
            }

        }

        t_dictionary *dict = dictionary_new();
        attr_args_dictionary(dict, size, pargv);

        t_symbol	**keys = NULL;
        long		numkeys = 0;
        long		i;
   //     t_object	*anItem;

        dictionary_getkeys(dict, &numkeys, &keys);
        for(i=0; i<numkeys; i++)
        {
            post("key %s", keys[i]->s_name);
        }
        if(keys)
            dictionary_freekeys(dict, numkeys, keys);


        object_free(dict);

        return;

        t_symbol *filepath = object_attr_getsym((t_object *)jp, gensym("filepath"));

        post("object_classname(jbx): %s, object_classname(o): %s, filepath: %s", object_classname(jbx)->s_name, object_classname(jbox_get_object(jbx))->s_name, filepath->s_name);
        if (object_classname(jbx) == gensym("bpatcher")) {
            post("bpatcher");
        } else {
            if (filepath && filepath != gensym("")) {
                post("abstraction");
            } else {
                post("subpatcher");
            }
        }
    }
    else
    {
        // might be in a poly~

        t_object *p2 = NULL;
        t_object *target = NULL;
        t_object *nextbox;
        method m;

        object_method(jp, gensym("getassoc"), &target);
        if (target) {
            if ((m = zgetfn(target, gensym("parentpatcher"))))
                (*m)(target, &p2);
            if (p2) {
                nextbox = jpatcher_get_firstobject(p2);
                while (nextbox) {
                    o = jbox_get_object(nextbox);
                    if (o == target) {
                        post("%s", object_classname(o)->s_name);
                        return;
                    }
                    nextbox = jbox_get_nextobject(nextbox);
                }
            }
        }
    }

    /*
    box = object_attr_getobj(x->parent, _sym_box); // x->parent is the parent patcher
    if (!box)
        object_method(x->parent, _sym_getassoc, &box);	// this how we get a poly~ (as opposed to bpatcher or patcher)
    box_classname = object_classname(box);

    if(box_classname == gensym("bpatcher") || box_classname == gensym("poly~")) {
        object_attr_getvalueof(box, gensym("args"), &size, &pargv);
        argv = pargv; // save real pointer since newobj case increments argv -jkc
    } else if(box_classname == gensym("newobj")){
        textfield = object_attr_getobj(box, gensym("textfield"));			// bpatcher -- textfield is null
        object_method(textfield, gensym("gettextptr"), &text, &textlen);
        atom_setparse(&size, &pargv, text);
        argv = pargv; // save real pointer since newobj case increments argv -jkc
        argv++;
        size--;
    }
    */
}

t_max_err o_gui_attach_notify(t_o_gui_attach *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
//    post("%s %s %p %p ", s->s_name, msg->s_name, sender, data);

    if( msg == gensym("snapshotlistchanged") ) // << there are a lot of these
    {
        return 0;
    }
    else
    {
       // printf("%s %s %p %p -- patcher: %p\n", s->s_name, msg->s_name, sender, data, x->base_patch);

        if( msg == gensym("modified") ||  msg == gensym("setvalueof"))
        {
            o_gui_attach_getValue(x, (t_object*)sender );
            o_gui_attach_output_bundle(x);

        }
        else if (msg == gensym("attr_modified") )
        {
            t_symbol *attrname = NULL;
            attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));

            if( attrname == gensym("varname") )
            {

                o_gui_attach_unattach(x, (t_object*)sender);
                t_symbol *name = object_attr_getsym((t_object *)sender, gensym("varname"));
                if( name )
                {
                    o_gui_attach_attach(x, (t_object*)sender, name);
                }

                o_gui_attach_output_bundle(x);
            }
        }
        else if (msg == gensym("varname_set") )
        {
            // called from the patcher when a new varname is assigned
            // there's no exposed way to find the object, so we have to iterate everything to find new items
            // post("varname_set %p %p", sender, data);

            o_gui_attach_do_iter(x);
            o_gui_attach_output_bundle(x);
        }
        else if( msg == gensym("varname_unset") )
        {
            // called from the patcher.. so sender is the patcher, do nothing
            //post("varname_unset %p %p", sender, data);
        }
        else if( msg == gensym("free") )
        {
            //post("free %p %p", sender, data);

            // called on delete from the object
            o_gui_attach_unattach(x, (t_object*)sender);

            if( sender != x->base_patch )
                o_gui_attach_output_bundle(x);

        }
        //else if( msg == gensym("aftersnapshotrestore"))
        else if( msg == gensym("loadbang_internal"))
        {
            //o_gui_attach_patcher_test(x);

//            qelem_set(x->qelem_output);
            //post("aftersnapshotrestore");
            //clock_delay(x->clock, 0);

//            o_gui_attach_output_bundle(x);
        }
    }
    return 0;
}

void o_gui_attach_loadbang(t_o_gui_attach *x)
{
    // post("loadbang");
    clock_unset(x->clock);
    o_gui_attach_do_iter(x);
    //o_gui_attach_output_bundle(x);

}

void o_gui_attach_doc(t_o_gui_attach *x)
{
    omax_doc_outletDoc(x->outlet);
}

void o_gui_attach_assist(t_o_gui_attach *x, void *b, long io, long num, char *buf)
{
    omax_doc_assist(io, num, buf);
}

void o_gui_attach_free(t_o_gui_attach *x)
{
    //object_free(x->clock);
    qelem_free(x->qelem_output);

    o_gui_attach_clear_objmap(x);
    
    object_detach_byptr(x, x->base_patch);

    if( x->bndl )
        osc_bundle_u_free(x->bndl);
    if( x->error_bndl )
        osc_bundle_u_free(x->error_bndl);

    
    critical_free(x->lock);
    
}

long o_gui_attach_check_sub_for_other(t_o_gui_attach *x, t_object *b)
{
    
    t_box *box = NULL;
    object_obex_lookup(x, gensym("#B"), (t_object **)&box);
    // ignore if it's our box
    if( b == box )
        return 0;
    
    t_object *obj = jbox_get_object(b);
    t_symbol *name = object_classname(obj);

//    post("in subpatch name %s", name->s_name);
    
    if( name == gensym("o.gui.attach") )
    {
        t_object *textfield = jbox_get_textfield(b);
        
        char *text = NULL;
        long textlen = 0;
        object_method(textfield, gensym("gettextptr"), &text, &textlen);
        // post("obj text %s", text);
        
        if( text && !strcmp(text, "o.gui.attach attachtoparent") )
        {
//            post("found o.gui.attach attachtoparent");
            x->attach_err = O_ATTACH_DUPLICATE;
            x->base_patch = NULL;
        }
    }
    return 0;
}

long o_gui_attach_check_for_other(t_o_gui_attach *x, t_object *b)
{
    t_box *box = NULL;
    object_obex_lookup(x, gensym("#B"), (t_object **)&box);
    // ignore if it's our box
    if( b == box )
        return 0;
 
    t_object *obj = jbox_get_object(b);
    t_symbol *name = object_classname(obj);
//    post("name %s", name->s_name );

    if( name == gensym("o.gui.attach") )
    {
        x->attach_err = O_ATTACH_DUPLICATE;
        x->base_patch = NULL;
    }
    else if( jpatcher_is_patcher(obj) )
    {
        long result = 0;
        object_method(obj, gensym("iterate"), o_gui_attach_check_sub_for_other, (void *)x, PI_WANTBOX, &result);
    }
    
    return 0;
}

void *o_gui_attach_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_o_gui_attach *x = NULL;
    x = (t_o_gui_attach *)object_alloc(o_gui_attach_class);
	if(x)
    {
        x->unmatched_outlet = outlet_new((t_object *)x, "FullPacket");;
        x->error_outlet = outlet_new((t_object *)x, "FullPacket");
        x->outlet = outlet_new((t_object *)x, "FullPacket");

		critical_new(&(x->lock));

        x->qelem_output = qelem_new((t_object *)x, (method)o_gui_attach_do_iter);
        x->clock = clock_new((t_object *)x, (method)o_gui_attach_do_iter);

        x->bndl = osc_bundle_u_alloc();
        x->error_bndl = osc_bundle_u_alloc();

        x->head = NULL;
        x->tail = NULL;

        // attach to this patcher and all other patchers
        t_patcher *patcher = NULL;
        t_max_err err = object_obex_lookup(x, gensym("#P"), &patcher);
        if( err )
        {
            object_error((t_object*)x, "error type %d", err );
            return 0;
        }

        x->attach_err = O_ATTACH_NOERROR;
        
        if( argc == 1 && argv && atom_gettype(argv) == A_SYM )
        {
            if( atom_getsym(argv) == gensym("attachtoparent") )
            {
                t_patcher *parent = jpatcher_get_parentpatcher(patcher);
                if( parent )
                    patcher = parent;
                else
                {
//                    object_error((t_object*)x, "could not attach to parent patcher" );
//                    return 0;
                    x->attach_err = O_ATTACH_NOPARENT;
                    // allowing object to exist but will be unattached in order to communicate error to server if used remotely
                    patcher = NULL;

                }
            }
        }
        
        x->base_patch = patcher;
        if( x->base_patch )
        {
            // check for other o.gui.attach and sets x->base_patch to null if we are a duplicate
            long result = 0;
            object_method(patcher, gensym("iterate"), o_gui_attach_check_for_other, (void *)x, PI_WANTBOX, &result);
        }
        
        if( x->base_patch )
        {
            object_attach_byptr(x, x->base_patch);
        }
        // >> probably don't need the patcher in the obj list
//        x->obj_map.insert( pair<t_object*, t_symbol*>(patcher, gensym("#P")));


        //qelem_set(x->qelem_output);
        clock_delay(x->clock, 1);

        // maybe someday if we wanted to get more notifications
        // jpatcher_get_dirty(patcher)


    }
	return x;
}

int main(void)
{
	t_class *c = class_new("o.gui.attach", (method)o_gui_attach_new, (method)o_gui_attach_free, sizeof(t_o_gui_attach), 0L, A_GIMME, 0);
	class_addmethod(c, (method)o_gui_attach_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)o_gui_attach_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)o_gui_attach_doc, "doc", 0);
	class_addmethod(c, (method)o_gui_attach_bang, "bang", 0);

    class_addmethod(c, (method)o_gui_attach_notify, "notify", A_CANT, 0);

    class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);

    class_addmethod(c, (method)o_gui_attach_loadbang, "loadbang", 0);


	class_register(CLASS_BOX, c);
	o_gui_attach_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;

	return 0;
}
