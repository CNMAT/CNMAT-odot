/*
Written by John MacCallum, The Center for New Music and Audio Technologies,
University of California, Berkeley.  Copyright (c) 2009-11, The Regents of
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
NAME: o.pack
DESCRIPTION: Pack messages together into an OSC bundle
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2009-11
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
VERSION 1.0: One inlet per address
VERSION 1.1: renamed o.pack (from o.build) 
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#ifndef PAK

#define OMAX_DOC_NAME "o.pack"
#define OMAX_DOC_SHORT_DESC "Bind data to addresses"
#define OMAX_DOC_LONG_DESC "o.pack takes a OSC addresses as arguments and creates an inlet for each one.  Anything sent into an inlet is bound to the corresponding address. Output is triggered when data is recieved in the leftmost inlet."
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"pack", "pak"}

#endif

#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#include "omax_pd_proxy.h"
#define proxy_getinlet(x) (((t_opack *)(x))->inlet)
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#endif

#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

/* 
   Workaround for duplicate symbol problem on Linux. 
   I regret what I've done...
*/
#ifdef PAK
#define opack_anything opak_anything
#define opack_fullPacket opak_fullPacket
#define opack_assist opak_assist
#define opack_int opak_int
#define opack_bang opak_bang
#define opack_list opak_list
#define opack_doAnything opak_doAnything
#define opack_new opak_new
#define opack_doc opak_doc
#define opack_outputBundle opak_outputBundle
#define opack_float opak_float
#define opack_set opak_set
#define opack_free opak_free
#define opack_symbol opak_symbol
#define opack_class opak_class
#define opack_proxy_class opak_proxy_class
#endif

//#define MAX_NUM_ARGS 64

typedef struct _opack{
	t_object ob;
	void *outlet;
	t_osc_msg_u **messages;
	t_osc_bndl_u *bndl;
	int num_messages;
	t_critical lock;
	long inlet;
	void **proxy;
	char **inlet_assist_strings;
} t_opack;

#ifdef OMAX_PD_VERSION
t_omax_pd_proxy_class *opack_class;
t_omax_pd_proxy_class *opack_proxy_class;
#else
void *opack_class;
#endif

t_symbol *_ps_deprecated_set;

void opack_outputBundle(t_opack *x);
int opack_checkPosAndResize(char *buf, int len, char *pos);
void opack_anything(t_opack *x, t_symbol *msg, short argc, t_atom *argv);

void opack_fullPacket(t_opack *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	critical_enter(x->lock);
	osc_bundle_s_wrap_naked_message(len, ptr);
	int inlet = proxy_getinlet((t_object *)x);
	osc_message_u_clearArgs(x->messages[inlet]);
	osc_message_u_appendBndl(x->messages[inlet], len, ptr);
	critical_exit(x->lock);
	int shouldoutput = (inlet == 0);
#ifdef PAK
	shouldoutput = 1;
#endif
	if(shouldoutput){
		opack_outputBundle(x);
	}
}

void opack_outputBundle(t_opack *x)
{
	critical_enter(x->lock);
	t_osc_bndl_s *bs = osc_bundle_u_serialize(x->bndl);
	critical_exit(x->lock);
	omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(bs), osc_bundle_s_getPtr(bs));
	if(bs){
		osc_bundle_s_deepFree(bs);
	}
}

void opack_list(t_opack *x, t_symbol *msg, short argc, t_atom *argv)
{
	opack_anything(x, NULL, argc, argv);
}

void opack_doAnything(t_opack *x, t_symbol *msg, short argc, t_atom *argv, int shouldOutput, int messagenum)
{
	critical_enter(x->lock);
	osc_message_u_clearArgs(x->messages[messagenum]);
	if(msg){
		osc_message_u_appendString(x->messages[messagenum], msg->s_name);
	}
	int i;
#ifdef OMAX_PD_VERSION
    t_symbol *sym;
#endif
	for(i = 0; i < argc; i++){
		t_osc_atom_u *a = NULL;
		omax_util_maxAtomToOSCAtom_u(&a, argv + i);
		if(a){
			osc_message_u_appendAtom(x->messages[messagenum], a);
		}else{
			object_error((t_object *)x, "error converting max atom of type %d to string! skipping...\n", atom_gettype(argv + i));
		}
	}
	critical_exit(x->lock);
	if(shouldOutput){
		opack_outputBundle(x);
	}
}

void opack_anything(t_opack *x, t_symbol *msg, short argc, t_atom *argv)
{

	critical_enter(x->lock);
	int inlet  = proxy_getinlet((t_object *)x);
	critical_exit(x->lock);
	int shouldoutput = inlet == 0;
#ifdef PAK
	shouldoutput = 1;
#endif
	opack_doAnything(x, msg, argc, argv, shouldoutput, inlet);
}

void opack_int(t_opack *x, long l)
{
	t_atom a;
	atom_setlong(&a, l);
	opack_anything(x, NULL, 1, &a);
}

void opack_float(t_opack *x, double f)
{
	t_atom a;
	atom_setfloat(&a, f);
	opack_anything(x, NULL, 1, &a);
}

void opack_bang(t_opack *x)
{
	opack_outputBundle(x);
}

#ifdef OMAX_PD_VERSION
void opack_symbol(t_opack *x, t_symbol *msg)
{
    t_atom a;
    atom_setsym(&a, msg);
	opack_anything(x, NULL, 1, &a);
}
#endif

void opack_set(t_opack *x, t_symbol *msg, int argc, t_atom *argv)
{
	if(!_ps_deprecated_set->s_thing){
		//object_error((t_object *)x, "The set message to %s has been deprecated and will be removed in the future", OMAX_DOC_NAME);
		_ps_deprecated_set->s_thing = (void *)1;
	}
	if(argc < 1){
		object_error((t_object *)x, "expected an argument to message set");
		return;
	}
	if(argc > 1){
		object_error((t_object *)x, "extra arguments to message set");
	}
	if(atom_gettype(argv) != A_SYM){
		object_error((t_object *)x, "the argument to the message set should be an OSC address");
		return;
	}
	t_symbol *address = atom_getsym(argv);
	critical_enter(x->lock);
	int inlet = proxy_getinlet((t_object *)x);
	t_osc_msg_u *m = x->messages[inlet];
	t_osc_err ret;
	if((ret = osc_message_u_setAddress(m, address->s_name))){
		object_error((t_object *)x, "%s", osc_error_string(ret));
	}
	critical_exit(x->lock);
}

#ifndef OMAX_PD_VERSION

OMAX_DICT_DICTIONARY(t_opack, x, opack_fullPacket);

void opack_assist(t_opack *x, void *b, long io, long num, char *buf)
{
	_omax_doc_assist(io, 
			 num,
			 buf,
			 x->num_messages,
			 x->inlet_assist_strings,
			 OMAX_DOC_NOUTLETS,
			 OMAX_DOC_OUTLETS_DESC);
}
#ifdef PAK
void opak_inletinfo(t_opack *x, void *b, long index, char *t){}
#endif
#endif

void opack_doc(t_opack *x)
{

	_omax_doc_outletDoc(x->outlet,
                        OMAX_DOC_NAME,
                        OMAX_DOC_SHORT_DESC,
                        OMAX_DOC_LONG_DESC,
                        x->num_messages,
                        x->inlet_assist_strings,
                        OMAX_DOC_NOUTLETS,
                        OMAX_DOC_OUTLETS_DESC,	
                        OMAX_DOC_NUM_SEE_ALSO_REFS,	
                        OMAX_DOC_SEEALSO);

}

void opack_free(t_opack *x)
{
	// this will free all the message pointers
	if(x->bndl){
		osc_bundle_u_free(x->bndl);
	}
	if(x->messages){
		osc_mem_free(x->messages);
	}
	if(x->proxy){
		int i;
		for(i = 1; i < x->num_messages; i++){
			if(x->proxy[i]){
#ifdef OMAX_PD_VERSION
                pd_free(x->proxy[i]);  //<< I think this is not required for the pd version since they are all new classes?
#else
				object_free(x->proxy[i]);
#endif
			}
		}
#ifdef OMAX_PD_VERSION
        free(x->proxy);
#else
        free(x->proxy);
#endif

	}

	int i;
	for(i = 0; i < x->num_messages; i++){
		if(x->inlet_assist_strings[i]){
			osc_mem_free(x->inlet_assist_strings[i]);
		}
	}
	osc_mem_free(x->inlet_assist_strings);

	critical_free(x->lock);
}

#ifdef OMAX_PD_VERSION

void *opack_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_opack *x;
	if((x = (t_opack *)object_alloc(opack_class->class))){
		if(argc == 0){
			object_error((t_object *)x, "you must supply at least 1 argument");
			return NULL;
		}
        
		if(atom_gettype(argv) == A_LONG){
			object_error((t_object *)x, "o.pack no longer takes an integer argument to specify the list length of each inlet.");
			object_error((t_object *)x, "The internal buffers will expand as necessary.");
			argv++;
			argc--;
            
		}
		if(atom_gettype(argv) != A_SYM){
			object_error((t_object *)x, "the first argument must be an OSC address");
			return NULL;
		}
		if(atom_getsym(argv)->s_name[0] != '/' && atom_getsym(argv)->s_name[0] != '$'){
			object_error((t_object *)x, "the first argument must be an OSC string that begins with a slash (/)");
			return NULL;
		}

		t_atom *addresses[argc];
        t_atom subcurlies[argc];

        char buf[4098];
        int numargs[argc];
		int count = 0;
		int i;
		for(i = 0; i < argc; i++){
			numargs[i] = 0;
			if(atom_gettype(argv + i) == A_SYM){
				if(atom_getsym(argv + i)->s_name[0] == '/' || atom_getsym(argv + i)->s_name[0] == '$'){
					int j;
					for(j = 0; j < count; j++){
						if(atom_getsym(addresses[j]) == atom_getsym(argv + i)){
							object_error((t_object *)x, "duplicate addresses (%s) are not allowed", atom_getsym(addresses[j])->s_name);
							return NULL;
						}
					}
                    memset(buf, '\0', 4098);
                    strcpy(buf, atom_getsymbol(argv + i)->s_name);
                    omax_util_hashBrackets2Curlies(buf);
                    atom_setsym(&subcurlies[i], gensym(buf));
                    addresses[count++] = &subcurlies[i];
				}else{
					numargs[count - 1]++;
				}
			}else{
				numargs[count - 1]++;
			}
		}
		x->bndl = osc_bundle_u_alloc();
		x->num_messages = count;
		//x->messages = osc_message_array_u_alloc(count);
		x->messages = (t_osc_msg_u **)osc_mem_alloc(count * sizeof(t_osc_msg_u *));
		//osc_message_array_u_clear(x->messages);
		x->inlet_assist_strings = (char **)osc_mem_alloc(count * sizeof(char *));

		int pos = 0;
		for(i = 0; i < count; i++){
			x->messages[i] = osc_message_u_alloc();
			osc_message_u_setAddress(x->messages[i], atom_getsym(addresses[i])->s_name);
			pos++;
			if(numargs[i]){
				opack_doAnything(x, NULL, numargs[i], argv + pos, 0, i);
			}
			pos += numargs[i];
			osc_bundle_u_addMsg(x->bndl, x->messages[i]);
            x->inlet_assist_strings[i] = (char *)osc_mem_alloc(128);
			sprintf(x->inlet_assist_strings[i], "Arguments for address %s (%d)", atom_getsym(addresses[i])->s_name, i + 1);
		}
        
		x->proxy = (void **)malloc(count * sizeof(t_omax_pd_proxy *));
        for(i = 0; i < count; i++){
			x->proxy[i] = proxy_new((t_object *)x, i, &(x->inlet), opack_proxy_class);
		}

		x->outlet = outlet_new(&x->ob, gensym("FullPacket"));
		critical_new(&(x->lock));
	}
    
	return(x);
}


#ifdef PAK
int setup_o0x2epak(void)
{
	t_symbol *name = gensym("o.pak");
#else
int setup_o0x2epack(void)
{
	t_symbol *name = gensym("o.pack");
#endif
	omax_pd_class_new(opack_class, name, (t_newmethod)opack_new, (t_method)opack_free, sizeof(t_opack),  CLASS_NOINLET, A_GIMME, 0);

    t_omax_pd_proxy_class *c = NULL;
	omax_pd_class_new(c, NULL, NULL, NULL, sizeof(t_omax_pd_proxy), CLASS_PD | CLASS_NOINLET, 0);
    
    omax_pd_class_addmethod(c, (t_method)odot_version, gensym("version"));
	omax_pd_class_addmethod(c, (t_method)opack_list, gensym("list"));
	omax_pd_class_addmethod(c, (t_method)opack_set, gensym("set"));
	omax_pd_class_addmethod(c, (t_method)opack_fullPacket, gensym("FullPacket"));
	omax_pd_class_addanything(c, (t_method)opack_anything);
	omax_pd_class_addfloat(c, (t_method)opack_float);
	omax_pd_class_addbang(c, (t_method)opack_bang);
    omax_pd_class_addsymbol(c, (t_method)opack_symbol);
	omax_pd_class_addmethod(c, (t_method)opack_doc, gensym("doc"));

	opack_proxy_class = c;

	_ps_deprecated_set = gensym(OMAX_DOC_NAME"_deprecated_set");
    
	ODOT_PRINT_VERSION;
	return 0;
}


#else //max version

void *opack_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_opack *x;
	if((x = (t_opack *)object_alloc(opack_class))){
		if(argc == 0){
			object_error((t_object *)x, "you must supply at least 1 argument");
			return NULL;
		}

		if(atom_gettype(argv) == A_LONG){
			object_error((t_object *)x, "o.pack no longer takes an integer argument to specify the list length of each inlet.");
			object_error((t_object *)x, "The internal buffers will expand as necessary.");
			argv++;
			argc--;

		}
		if(atom_gettype(argv) != A_SYM){
			object_error((t_object *)x, "the first argument must be an OSC address");
			return NULL;
		}
		if(atom_getsym(argv)->s_name[0] != '/' && atom_getsym(argv)->s_name[0] != '#'){
			object_error((t_object *)x, "the first argument must be an OSC string that begins with a slash (/)");
			return NULL;
		}
	
		t_atom *addresses[argc];
		int numargs[argc];
		int count = 0;
		int i;
		for(i = 0; i < argc; i++){
			numargs[i] = 0;
			if(atom_gettype(argv + i) == A_SYM){
				if(atom_getsym(argv + i)->s_name[0] == '/' || atom_getsym(argv + i)->s_name[0] == '#'){
					int j;
					for(j = 0; j < count; j++){
						if(atom_getsym(addresses[j]) == atom_getsym(argv + i)){
							object_error((t_object *)x, "duplicate addresses (%s) are not allowed", atom_getsym(addresses[j])->s_name);
							return NULL;
						}
					}
					addresses[count++] = argv + i;
				}else{
					numargs[count - 1]++;
				}
			}else{
				numargs[count - 1]++;
			}
		}
		x->bndl = osc_bundle_u_alloc();
		x->num_messages = count;
		//x->messages = osc_message_array_u_alloc(count);
		x->messages = (t_osc_msg_u **)osc_mem_alloc(count * sizeof(t_osc_msg_u *));
		//osc_message_array_u_clear(x->messages);
		x->inlet_assist_strings = (char **)osc_mem_alloc(count * sizeof(char *));
		int pos = 0;
		for(i = 0; i < count; i++){
			x->messages[i] = osc_message_u_alloc();
			osc_message_u_setAddress(x->messages[i], atom_getsym(addresses[i])->s_name);
			pos++;
			if(numargs[i]){
				opack_doAnything(x, NULL, numargs[i], argv + pos, 0, i);
			}
			pos += numargs[i];
			osc_bundle_u_addMsg(x->bndl, x->messages[i]);
			x->inlet_assist_strings[i] = (char *)osc_mem_alloc(128);
			sprintf(x->inlet_assist_strings[i], "Arguments for address %s (%d)", atom_getsym(addresses[i])->s_name, i + 1);
		}

		x->proxy = (void **)malloc(count * sizeof(void *));
		for(i = 1; i < count; i++){
			x->proxy[i] = proxy_new((t_object *)x, count - i, &(x->inlet));
		}
		x->outlet = outlet_new(x, "FullPacket");
		critical_new(&(x->lock));
	}
		   	
	return(x);
}

int main(void)
{
	char *name;
#ifdef PAK
	name = "o.pak";
#else
	name = "o.pack";
#endif
	t_class *c = class_new(name, (method)opack_new, (method)opack_free, sizeof(t_opack), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)opack_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)opack_fullPacket, "FullPacket", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}

	class_addmethod(c, (method)opack_assist, "assist", A_CANT, 0);
#ifdef PAK
	class_addmethod(c, (method)opak_inletinfo, "inletinfo", A_CANT, 0);
#else
	class_addmethod(c, (method)stdinletinfo, "inletinfo", A_CANT, 0);
#endif
	class_addmethod(c, (method)opack_doc, "doc", 0);
	class_addmethod(c, (method)opack_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)opack_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)opack_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)opack_int, "int", A_LONG, 0);
	class_addmethod(c, (method)opack_bang, "bang", 0);
	class_addmethod(c, (method)opack_set, "set", A_GIMME, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	class_register(CLASS_BOX, c);
	opack_class = c;

	_ps_deprecated_set = gensym(OMAX_DOC_NAME"_deprecated_set");

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
#endif
