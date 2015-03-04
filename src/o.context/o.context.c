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


#define OMAX_DOC_NAME "o.context"
#define OMAX_DOC_SHORT_DESC "Report the current context"
#define OMAX_DOC_LONG_DESC "o.context reports information about the current context including the patcher name and patcher hierarchy."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket or bang"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing context information"}
#define OMAX_DOC_SEEALSO (char *[]){""}

#include "odot_version.h"

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "g_canvas.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "jpatcher_api.h"
#endif
#include "osc.h"
#include "osc_mem.h"
#include "osc_serial.h"
#include "osc_bundle_iterator_s.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#ifdef OMAX_PD_VERSION
struct _canvasenvironment
{
    t_symbol *ce_dir;      /* directory patch lives in */
    int ce_argc;           /* number of "$" arguments */
    t_atom *ce_argv;       /* array of "$" arguments */
    int ce_dollarzero;     /* value of "$0" */
};
#endif

typedef struct _ocontext{
	t_object ob;
	void *outlet;
	t_symbol *prefix;
    
#ifdef OMAX_PD_VERSION
    t_canvas *canvas;
    t_glist *glist;
#endif
    
} t_ocontext;

void *ocontext_class;

#ifdef OMAX_PD_VERSION
t_osc_bndl_u *ocontext_processCanvas(t_canvas *canvas)
{
	t_osc_bndl_u *canvas_bndl = osc_bundle_u_alloc();
	if(canvas == NULL){
		// return empty bundle---this is intentional
		return canvas_bndl;
	}

    t_osc_msg_u *msg = NULL;

    msg = osc_message_u_allocWithAddress("/name");
    osc_message_u_appendString(msg, canvas->gl_name->s_name);
    osc_bundle_u_addMsg(canvas_bndl, msg);

    t_canvasenvironment *c_env = canvas_getenv(canvas);
    
    msg = osc_message_u_allocWithAddress("/path");
    osc_message_u_appendString(msg, c_env->ce_dir->s_name);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/$0");
    osc_message_u_appendInt32(msg, c_env->ce_dollarzero);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/isabstraction");
    osc_message_u_appendBool(msg, !canvas_isabstraction(canvas));
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/editmode");
    osc_message_u_appendBool(msg, canvas->gl_edit);
    osc_bundle_u_addMsg(canvas_bndl, msg);

    msg = osc_message_u_allocWithAddress("/font");
    osc_message_u_appendString(msg, sys_font);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/fontsize");
    osc_message_u_appendInt32(msg, canvas->gl_font);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/dirty");
    osc_message_u_appendBool(msg, canvas->gl_dirty);
    osc_bundle_u_addMsg(canvas_bndl, msg);

    if(!canvas_isabstraction(canvas))
    {
        msg = osc_message_u_allocWithAddress("/abstraction/position/x1");
        osc_message_u_appendInt32(msg, canvas->gl_obj.te_xpix);
        osc_bundle_u_addMsg(canvas_bndl, msg);
        
        msg = osc_message_u_allocWithAddress("/abstraction/position/y1");
        osc_message_u_appendInt32(msg, canvas->gl_obj.te_ypix);
        osc_bundle_u_addMsg(canvas_bndl, msg);
    }
    
    msg = osc_message_u_allocWithAddress("/pixwidth");
    osc_message_u_appendInt32(msg, canvas->gl_pixwidth);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/pixheight");
    osc_message_u_appendInt32(msg, canvas->gl_pixheight);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/screen/x1");
    osc_message_u_appendInt32(msg, canvas->gl_screenx1);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/screen/y1");
    osc_message_u_appendInt32(msg, canvas->gl_screeny1);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/screen/x2");
    osc_message_u_appendInt32(msg, canvas->gl_screenx2);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    msg = osc_message_u_allocWithAddress("/screen/y2");
    osc_message_u_appendInt32(msg, canvas->gl_screeny2);
    osc_bundle_u_addMsg(canvas_bndl, msg);

    msg = osc_message_u_allocWithAddress("/xmargin");
    osc_message_u_appendInt32(msg, canvas->gl_xmargin);
    osc_bundle_u_addMsg(canvas_bndl, msg);

    msg = osc_message_u_allocWithAddress("/ymargin");
    osc_message_u_appendInt32(msg, canvas->gl_ymargin);
    osc_bundle_u_addMsg(canvas_bndl, msg);
    
    if(canvas->gl_goprect && canvas->gl_owner)
    {
        int x1,y1,x2,y2;
        gobj_getrect(&canvas->gl_obj.te_g, canvas->gl_owner, &x1, &y1, &x2, &y2);

        msg = osc_message_u_allocWithAddress("/graphrect");
        osc_message_u_appendInt32(msg, x1);
        osc_message_u_appendInt32(msg, y1);
        osc_message_u_appendInt32(msg, x2);
        osc_message_u_appendInt32(msg, y2);
        osc_bundle_u_addMsg(canvas_bndl, msg);
    }
    
    t_binbuf *b = NULL;
    b = canvas->gl_obj.te_binbuf;
    
    if(b)
    {
        int argc = binbuf_getnatom(b);
        t_atom *argv = binbuf_getvec(b);

        if(argc)
        {
            t_osc_msg_u *msg_u = NULL;
            int abstr = !canvas_isabstraction(canvas);
            t_osc_err e = omax_util_maxAtomsToOSCMsg_u(&msg_u, gensym("/arguments"), argc-1-abstr, argv+1+abstr);
            if(e)
            {
                if(e){
                    object_error((t_object *)x, "%s", osc_error_string(e));
                    goto exit;
                }
            }
            osc_bundle_u_addMsg(canvas_bndl, msg_u);
        }
        else
        {
            msg = osc_message_u_allocWithAddress("/arguments");
            osc_message_u_appendString(msg, "");
            osc_bundle_u_addMsg(canvas_bndl, msg);
        }
    }
    else
    {
        msg = osc_message_u_allocWithAddress("/arguments");
        osc_message_u_appendString(msg, "");
        osc_bundle_u_addMsg(canvas_bndl, msg);
    }
    
exit:
    if(canvas->gl_owner)
    {
        t_osc_bndl_u *parent_bndl = ocontext_processCanvas(canvas->gl_owner);
		t_osc_msg_u *pmsg = osc_message_u_allocWithAddress("/parent");
		osc_message_u_appendBndl_u(pmsg, parent_bndl);
		osc_bundle_u_addMsg(canvas_bndl, pmsg);
    }
    
	return canvas_bndl;
}

void ocontext_doFullPacket(t_ocontext *x, long len, char *ptr)
{
	t_canvas *patcher = NULL;
    
    patcher = x->canvas;
    
	t_osc_bndl_u *mypatcher_bndl = ocontext_processCanvas(patcher);
	t_osc_msg_u *context_msg = osc_message_u_allocWithAddress("/context");
	osc_message_u_appendBndl_u(context_msg, mypatcher_bndl);
	t_osc_bndl_u *bu = osc_bundle_s_deserialize(len, ptr);
	if(bu){
		osc_bundle_u_addMsgWithoutDups(bu, context_msg);
		t_osc_bndl_s *bs = osc_bundle_u_serialize(bu);
		if(bs){
			omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
			osc_bundle_s_deepFree(bs);
		}
	}
	osc_bundle_u_free(mypatcher_bndl);
}

#else
t_osc_bndl_u *ocontext_processPatcher(t_object *patcher)
{
	t_osc_bndl_u *patcher_bndl = osc_bundle_u_alloc();
	if(patcher == NULL){
		// return empty bundle---this is intentional
		return patcher_bndl;
	}
	long nattrs = 0;
	t_symbol **attrs = NULL;
	object_attr_getnames(patcher, &nattrs, &attrs);
	for(int i = 0; i < nattrs; i++){
		t_atom *av = NULL;
		long ac = 0;
		object_attr_getvalueof(patcher, attrs[i], &ac, &av);
		if(av && ac){
			long addresslen = strlen(attrs[i]->s_name) + 2;
			char address[addresslen];
			snprintf(address, addresslen, "/%s", attrs[i]->s_name);
			t_osc_msg_u *msg = NULL;
			if(ac == 1 && atom_gettype(av) == A_OBJ){
				//printf("%s has object: %p %p\n", address, patcher, atom_getobj(av));
				continue;
				t_osc_bndl_u *b = ocontext_processPatcher(atom_getobj(av));
				if(b){
					msg = osc_message_u_allocWithAddress(address);
					osc_message_u_appendBndl_u(msg, b);
					osc_bundle_u_addMsg(patcher_bndl, msg);
				}
			}else{
				omax_util_maxAtomsToOSCMsg_u(&msg, gensym(address), ac, av);
				if(msg){
					osc_bundle_u_addMsg(patcher_bndl, msg);
				}
			}
		}
	}
	sysmem_freeptr(attrs);

	t_symbol *maxclass = object_attr_getsym(patcher, gensym("maxclass"));
	if(maxclass && maxclass == gensym("jpatcher")){
		patcher = jpatcher_get_parentpatcher(patcher);
		t_osc_bndl_u *parent_bndl = ocontext_processPatcher(patcher);

		t_osc_msg_u *msg = osc_message_u_allocWithAddress("/parent");
		osc_message_u_appendBndl_u(msg, parent_bndl);
		osc_bundle_u_addMsg(patcher_bndl, msg);
	}

	return patcher_bndl;
}

void ocontext_doFullPacket(t_ocontext *x, long len, char *ptr)
{
	t_object *parent = NULL, *patcher = NULL;
        object_obex_lookup(x, gensym("#P"), &patcher);

	//t_jbox *box = NULL;
        //object_obex_lookup(x, gensym("#B"), &box);

	t_osc_bndl_u *mypatcher_bndl = ocontext_processPatcher(patcher);
	t_osc_msg_u *context_msg = osc_message_u_allocWithAddress("/context");
	osc_message_u_appendBndl_u(context_msg, mypatcher_bndl);
	t_osc_bndl_u *bu = osc_bundle_s_deserialize(len, ptr);
	if(bu){
		osc_bundle_u_addMsgWithoutDups(bu, context_msg);
		t_osc_bndl_s *bs = osc_bundle_u_serialize(bu);
		if(bs){
			omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
			osc_bundle_s_deepFree(bs);
		}
		osc_bundle_u_free(bu);
	}
}
#endif

void ocontext_fullPacket(t_ocontext *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	ocontext_doFullPacket(x, len, ptr);
}

void ocontext_bang(t_ocontext *x)
{
	ocontext_doFullPacket(x, 0, NULL);
}


void ocontext_doc(t_ocontext *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ocontext_free(t_ocontext *x)
{
}


#ifdef OMAX_PD_VERSION
void *ocontext_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ocontext *x = NULL;
	if((x = (t_ocontext *)object_alloc(ocontext_class))){
		x->outlet = outlet_new(&x->ob, gensym("FullPacket"));
		x->prefix = gensym("");

        x->glist = (t_glist *)canvas_getcurrent();
        x->canvas = (t_canvas *)glist_getcanvas(x->glist);
        
        // DO PSEUDO ATTRS PROCESSING
        /*
         CLASS_ATTR_ATOM(c, "prefix", 0, t_ocontext, prefix);
         CLASS_ATTR_LABEL(c, "prefix", 0, "OSC Address Prefix");
         CLASS_ATTR_ACCESSORS(c, "prefix", ocontext_attr_prefix_get, ocontext_attr_prefix_set);
         
         class_register(CLASS_BOX, c);
         */
        
        
	}
	return x;
}

int setup_o0x2econtext(void)
{
	t_class *c = class_new(gensym("o.context"), (t_newmethod)ocontext_new, (t_method)ocontext_free, sizeof(t_ocontext), 0L, A_GIMME, 0);
	class_addmethod(c, (t_method)ocontext_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)ocontext_doc, gensym("doc"), 0);
	class_addbang(c, ocontext_bang);
    class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    /*
	CLASS_ATTR_ATOM(c, "prefix", 0, t_ocontext, prefix);
	CLASS_ATTR_LABEL(c, "prefix", 0, "OSC Address Prefix");
	CLASS_ATTR_ACCESSORS(c, "prefix", ocontext_attr_prefix_get, ocontext_attr_prefix_set);
	
	class_register(CLASS_BOX, c);
     */
	ocontext_class = c;
    
    
	ODOT_PRINT_VERSION;
	return 0;
}

#else

OMAX_DICT_DICTIONARY(t_ocontext, x, ocontext_fullPacket);

void ocontext_assist(t_ocontext *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

t_max_err ocontext_attr_prefix_get(t_ocontext *x, t_object *attr, long *argc, t_atom **argv)
{
	char alloc;
    atom_alloc(argc, argv, &alloc);
    
    if(x->prefix){
		atom_setsym(*argv, x->prefix);
	}else{
		atom_setsym(*argv, gensym(""));
	}
    
    return 0;
}

t_max_err ocontext_attr_prefix_set(t_ocontext *x, t_object *attr, long argc, t_atom *argv)
{
	switch(atom_gettype(argv)){
        case A_SYM:
		{
			t_symbol *s = atom_getsym(argv);
			if(s->s_name[0] != '/'){
				char buf[sizeof(s->s_name) + 2];
				sprintf(buf, "/%s", s->s_name);
				x->prefix = gensym(buf);
			}else{
				x->prefix = atom_getsym(argv);
			}
		}
            break;
        case A_LONG:
		{
			long l = atom_getlong(argv);
			char buf[128];
			sprintf(buf, "/%ld", l);
			x->prefix = gensym(buf);
		}
            break;
        default:
            object_error((t_object *)x, "prefix value must be an integer or a string");
            return MAX_ERR_GENERIC;
	}
	return MAX_ERR_NONE;
}


void *ocontext_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ocontext *x = NULL;
	if((x = (t_ocontext *)object_alloc(ocontext_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->prefix = gensym("");
		attr_args_process(x, argc, argv);
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.context", (method)ocontext_new, (method)ocontext_free, sizeof(t_ocontext), 0L, A_GIMME, 0);
	class_addmethod(c, (method)ocontext_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ocontext_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ocontext_doc, "doc", 0);
	class_addmethod(c, (method)ocontext_bang, "bang", 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);

	CLASS_ATTR_ATOM(c, "prefix", 0, t_ocontext, prefix);
	CLASS_ATTR_LABEL(c, "prefix", 0, "OSC Address Prefix");
	CLASS_ATTR_ACCESSORS(c, "prefix", ocontext_attr_prefix_get, ocontext_attr_prefix_set);
	
	class_register(CLASS_BOX, c);
	ocontext_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
#endif
