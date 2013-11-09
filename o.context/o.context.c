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
#define OMAX_DOC_SHORT_DESC "Report the current context."
#define OMAX_DOC_LONG_DESC "o.context reports information about the current context including the patcher name and patcher hierarchy."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket or bang"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet containing context information"}
#define OMAX_DOC_SEEALSO (char *[]){""}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "ext_obex_util.h"
#include "jpatcher_api.h"
#include "osc.h"
#include "osc_serial.h"
#include "osc_mem.h"
#include "osc_bundle_iterator_s.h"
#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _ocontext{
	t_object ob;
	void *outlet;
	t_symbol *prefix;
} t_ocontext;

void *ocontext_class;


void ocontext_doFullPacket(t_ocontext *x, long len, char *ptr)
{
	t_object *parent = NULL, *patcher = NULL;
        object_obex_lookup(x, gensym("#P"), &patcher);

	t_jbox *box = NULL;
        object_obex_lookup(x, gensym("#B"), &box);
	parent = patcher;

	char prefix[64];
	if(x->prefix){
		if(x->prefix->s_name){
			//if(x->prefix->s_name[0] == '/'){
				sprintf(prefix, "%s/context/patcher", x->prefix->s_name);
				//}else{
				//sprintf(prefix, "/%s/context/patcher", x->prefix->s_name);
				//}
		}else{
			sprintf(prefix, "/context/patcher");
		}
	}else{
		sprintf(prefix, "/context/patcher");
	}
	char addressbuf[512];
	/*
	long lll = 0;
	t_symbol **sss = NULL;
	object_attr_getnames(parent, &lll, &sss);
	for(int i = 0; i < lll; i++){
		printf("%s\n", sss[i]->s_name);
	}
	*/

	t_symbol *patchername = object_attr_getsym(patcher, gensym("name"));
	t_symbol *filepath = object_attr_getsym(patcher, gensym("filepath"));

	char hierarchy[256];
	char hierarchy2[256];
	memset(hierarchy, '\0', sizeof(hierarchy));
	memset(hierarchy2, '\0', sizeof(hierarchy2));
	if(patchername){
		sprintf(hierarchy, "/%s", patchername->s_name);
	}
	do{
		parent = jpatcher_get_parentpatcher(parent);
		if(parent){
			t_symbol *name = object_attr_getsym(parent, gensym("name"));
			if(name){
				//hp += sprintf(hp, "/%s", name->s_name);
				memcpy(hierarchy2, hierarchy, sizeof(hierarchy2));
				sprintf(hierarchy, "/%s%s", name->s_name, hierarchy2);
			}
		}
        } while (parent != NULL);

	// get the parent patcher's arguments
	t_atom *av = NULL;
	long ac = 0;
	object_attr_getvalueof(patcher, gensym("arguments"), &ac, &av);

	// build the bundle
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	if(patchername){
		t_osc_msg_u *mpn = osc_message_u_alloc();
		snprintf(addressbuf, sizeof(addressbuf), "%s/name", prefix);
		osc_message_u_setAddress(mpn, addressbuf);
		osc_message_u_appendString(mpn, patchername->s_name);
		osc_bundle_u_addMsg(b, mpn);
	}
	if(filepath){
		t_osc_msg_u *mfp = osc_message_u_alloc();
		snprintf(addressbuf, sizeof(addressbuf), "%s/filepath", prefix);
		osc_message_u_setAddress(mfp, addressbuf);
		osc_message_u_appendString(mfp, filepath->s_name);
		osc_bundle_u_addMsg(b, mfp);
	}

	t_osc_msg_u *mh = osc_message_u_alloc();
	snprintf(addressbuf, sizeof(addressbuf), "%s/hierarchy", prefix);
	osc_message_u_setAddress(mh, addressbuf);
	osc_message_u_appendString(mh, hierarchy);
	osc_bundle_u_addMsg(b, mh);

	snprintf(addressbuf, sizeof(addressbuf), "%s/patcher/args", prefix);
	t_osc_msg_u *margs = osc_message_u_allocWithAddress(addressbuf);
	for(int i = 0; i < ac - 1; i++){
		t_osc_atom_u *a = osc_atom_u_alloc();
		omax_util_maxAtomToOSCAtom_u(&a, av + i + 1);
		osc_message_u_appendAtom(margs, a);
	}
	osc_bundle_u_addMsg(b, margs);

	snprintf(addressbuf, sizeof(addressbuf), "%s/patcher/uuid", prefix);
	t_osc_msg_u *muuid = osc_message_u_allocWithAddress(addressbuf);
	t_osc_atom_u *a = osc_atom_u_alloc();
	omax_util_maxAtomToOSCAtom_u(&a, av);
	osc_message_u_appendAtom(muuid, a);
	osc_bundle_u_addMsg(b, muuid);

	long l = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &l, &buf);
	if(buf){
		if(ptr){
			char out[l + len - OSC_HEADER_SIZE];
			long ll = osc_bundle_s_concat(len, ptr, l, buf, out);
			omax_util_outletOSC(x->outlet, ll, out);
		}else{
			omax_util_outletOSC(x->outlet, l, buf);
		}
		osc_mem_free(buf);
	}
	osc_bundle_u_free(b);
}

void ocontext_fullPacket(t_ocontext *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	ocontext_doFullPacket(x, len, ptr);
}

void ocontext_bang(t_ocontext *x)
{
	ocontext_doFullPacket(x, 0, NULL);
}

OMAX_DICT_DICTIONARY(t_ocontext, x, ocontext_fullPacket);

void ocontext_doc(t_ocontext *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ocontext_assist(t_ocontext *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void ocontext_free(t_ocontext *x)
{
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
