

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


t_max_err o_gui_attach_notify(t_o_gui_attach *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
//    post("%s %s %p %p ", s->s_name, msg->s_name, sender, data);

    if( msg == gensym("snapshotlistchanged") ) // << there are a lot of these
    {
        return 0;
    }
    else
    {
        // post("%s %s %p %p ", s->s_name, msg->s_name, sender, data);

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
            o_gui_attach_output_bundle(x);

        }
        //else if( msg == gensym("aftersnapshotrestore"))
        else if( msg == gensym("loadbang_end"))
        {
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
    o_gui_attach_output_bundle(x);

}

void o_gui_attach_doc(t_o_gui_attach *x){}

void o_gui_attach_assist(t_o_gui_attach *x, void *b, long io, long num, char *buf){}

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
        
        x->qelem_output = qelem_new((t_object *)x, (method)o_gui_attach_iter_and_out);
        x->clock = clock_new((t_object *)x, (method)o_gui_attach_iter_and_out);

        // attach to this patcher and all other patchers
        t_patcher *patcher;
        t_max_err err = object_obex_lookup(x, gensym("#P"), &patcher);
        if( err )
        {
            object_error((t_object*)x, "error type %d", err );
            return 0;
        }
        
        x->bndl = osc_bundle_u_alloc();
        
        
       
/*         later add attr to attach to parent
        t_patcher *parent;
        parent = jpatcher_get_parentpatcher(patcher);
        if( parent )
            object_attach_byptr(x, parent);
*/
        
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

	//ODOT_PRINT_VERSION;

	srandomdev();
	return 0;
}
END_USING_C_LINKAGE

