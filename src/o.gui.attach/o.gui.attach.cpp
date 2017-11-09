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
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet to set values (or pass through), bang outputs current state of attached objects"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing state of attached GUI objects"}
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

#include <unordered_map>

using namespace std;

typedef unordered_map<t_object*, t_symbol*> ObjMap;

typedef struct _o_gui_attach
{
	t_object        ob;
	void            *outlet;
    ObjMap          obj_map;
    t_patcher       *base_patch;
    
    t_osc_bndl_u    *bndl;
    
    void            *qelem_output;
    void            *clock;
	t_critical      lock;
} t_o_gui_attach;

t_class *o_gui_attach_class;

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
    omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(s_bnd), osc_bundle_s_getPtr(s_bnd));
    if( s_bnd )
        osc_bundle_s_deepFree(s_bnd);
}

int o_gui_attach_checkNameAndType(t_o_gui_attach *x, t_object *b, t_symbol *name)
{
    if( !name )
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
            object_warn((t_object* )b, "varname uses characters ( %s ), o.gui.attach could not attach", buf );
            return 0;
        }
        
        t_atom *at = NULL;
        long ac;
        object_getvalueof(b, &ac, &at);
        
        if( ac == 1 && atom_gettype(at) == A_SYM )
        {
            if( !strncmp(atom_getsym(at)->s_name, "object", 6) )
            {
                object_warn((t_object* )b, "varname (%s) looks like an OSC address but o.gui.attach cannot link to non-GUI objects", str );
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
    if( b && name )
    {

        if( !o_gui_attach_checkNameAndType(x, b, name) )
            return;
            
        if( !x->obj_map.count(b) )
        {
//            object_post((t_object* )x, "%p attaching %p", x, b );
            
            /*
             // Subscribe could be useful in case of specifying a namespace before creating the objects...
             // but in the iterator, we are only looking at objects that already exist
            t_symbol *name_space, *s, *classname;
            object_findregisteredbyptr(&name_space, &s, b);
            object_subscribe(name_space, s, object_classname(b), s);
            */
            
            object_attach_byptr(x, b);
        }
        
        x->obj_map.insert( pair<t_object*, t_symbol*>(b, name));
        o_gui_attach_getValue( x, b );
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
    object_method(x->base_patch, gensym("iterate"), o_gui_attach_attach_iterator, (void *)x, PI_WANTBOX, &result); // | PI_DEEP
}

void o_gui_attach_iter_and_out(t_o_gui_attach *x)
{
    // post("o_gui_attach_iter_and_out");
    o_gui_attach_do_iter(x);
    o_gui_attach_output_bundle(x);
}

void o_gui_attach_unattach(t_o_gui_attach *x, t_object *b)
{
    // post("o_gui_attach_unattach %p", b);
    
    if( !x->obj_map.count(b) )
        return;
    
    // post("removing %p %s", b, x->obj_map.at(b)->s_name );
    
    object_detach_byptr(x, b);
    
    const char *address = x->obj_map.at(b)->s_name;
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
    
    x->obj_map.erase(b);
}

void o_gui_attach_unattach_all(t_o_gui_attach *x)
{
    for(auto it = x->obj_map.begin(); it != x->obj_map.end(); it++ )
    {
        object_detach_byptr(x, it->first);
    }
    x->obj_map.clear();
}


void o_gui_attach_fullPacket(t_o_gui_attach *x, t_symbol *msg, int argc, t_atom *argv)
{
    
    // post("o_gui_attach_fullPacket");

    OMAX_UTIL_GET_LEN_AND_PTR
    t_osc_bndl_u *in_bnd = osc_bundle_s_deserialize(len, ptr);
    
    if( in_bnd )
    {
        t_osc_bndl_u *bnd_match = NULL;
        osc_bundle_u_intersection(in_bnd, x->bndl, &bnd_match);
        
        t_osc_bndl_u *new_internal_bndl = NULL;
        osc_bundle_u_union(bnd_match, x->bndl, &new_internal_bndl );
        osc_bundle_u_free(x->bndl);
        x->bndl = new_internal_bndl;
        
        if( bnd_match )
        {
            t_osc_bndl_it_u *it = osc_bndl_it_u_get(bnd_match);
            
            while(osc_bndl_it_u_hasNext(it))
            {
                t_osc_msg_u *msg = osc_bndl_it_u_next(it);
                
                t_symbol *addr  = gensym(osc_message_u_getAddress(msg));
                
                for( auto it = x->obj_map.begin(); it != x->obj_map.end(); it++ )
                {
                    if( it->second == addr )
                    {
                        // post("matched %s", addr->s_name);
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
                                    object_error((t_object*)x, "unsupported type %c", osc_atom_u_getTypetag(a) );
                                    break;
                            }
                        }
                        
                        // post("setting %d args", nargs);
                        t_max_err err = object_setvalueof(it->first, nargs, at);
                        if( err )
                        {
                            object_error((t_object*)x, "unable to set values");
                        }
                    }
                }
            }
            
            osc_bndl_it_u_destroy(it);

            t_osc_bndl_u *union_bndl = NULL;
            osc_bundle_u_union(in_bnd, x->bndl, &union_bndl );
            
            t_osc_bndl_s *outbndl = osc_bundle_u_serialize(union_bndl);
            
            omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(outbndl), osc_bundle_s_getPtr(outbndl) );
            
            osc_bundle_s_deepFree(outbndl);
            
            osc_bundle_u_free(union_bndl);
            osc_bundle_u_free(bnd_match);
        }
        osc_bundle_u_free(in_bnd);
    }
    
}

OMAX_DICT_DICTIONARY(t_o_gui_attach, x, o_gui_attach_fullPacket);


void o_gui_attach_bang(t_o_gui_attach *x)
{
    o_gui_attach_do_iter(x);
    o_gui_attach_output_bundle(x);
}

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
        t_object	*anItem;
        
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
       // post("%s %s %p %p -- patcher: %p", s->s_name, msg->s_name, sender, data, x->base_patch);

        if( msg == gensym("modified"))
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
	critical_free(x->lock);
    
    //object_free(x->clock);
    qelem_free(x->qelem_output);
    
    o_gui_attach_unattach_all(x);
    
    if( x->bndl )
        osc_bundle_u_free(x->bndl);
    
}

BEGIN_USING_C_LINKAGE
void *o_gui_attach_new(t_symbol *msg, short argc, t_atom *argv)
{
    t_o_gui_attach *x = NULL;
    x = (t_o_gui_attach *)object_alloc(o_gui_attach_class);
	if(x)
    {
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
        
        x->qelem_output = qelem_new((t_object *)x, (method)o_gui_attach_do_iter);
        x->clock = clock_new((t_object *)x, (method)o_gui_attach_do_iter);

        x->bndl = osc_bundle_u_alloc();

        
        // attach to this patcher and all other patchers
        t_patcher *patcher;
        t_max_err err = object_obex_lookup(x, gensym("#P"), &patcher);
        if( err )
        {
            object_error((t_object*)x, "error type %d", err );
            return 0;
        }
    
       
       //  later add attr to attach to parent
        //t_patcher *parent;
        //parent = jpatcher_get_parentpatcher(patcher);
       // if( parent )
        
        
        
        x->base_patch = patcher;
        object_attach_byptr(x, x->base_patch);
        x->obj_map.insert( pair<t_object*, t_symbol*>(patcher, gensym("#P")));
        
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

	srandomdev();
	return 0;
}
END_USING_C_LINKAGE

