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

#ifdef PAK

#define OMAX_DOC_NAME "o.pak"
#define OMAX_DOC_SHORT_DESC "Bind data to addresses."
#define OMAX_DOC_LONG_DESC "o.pak takes a OSC addresses as arguments and creates an inlet for each one.  Anything sent into an inlet is bound to the corresponding address and the OSC packet is output with all other addresses bound to their most recent values."
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"o.pack", "pack", "pak"}

#else

#define OMAX_DOC_NAME "o.pack"
#define OMAX_DOC_SHORT_DESC "Bind data to addresses."
#define OMAX_DOC_LONG_DESC "o.pack takes a OSC addresses as arguments and creates an inlet for each one.  Anything sent into an inlet is bound to the corresponding address. Output is triggered when data is recieved in the leftmost inlet."
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC FullPacket"}
#define OMAX_DOC_SEEALSO (char *[]){"o.pak", "pack", "pak"}

#endif

#include "../odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "omax_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"
#include "omax_doc.h"

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

void *opack_class;

void opack_outputBundle(t_opack *x);
int opack_checkPosAndResize(char *buf, int len, char *pos);
void opack_anything(t_opack *x, t_symbol *msg, short argc, t_atom *argv);

void opack_fullPacket(t_opack *x, long len, long ptr)
{
	critical_enter(x->lock);
	osc_bundle_s_wrap_naked_message(len, ptr);
	int inlet = proxy_getinlet((t_object *)x);
	osc_message_u_clearArgs(x->messages[inlet]);
	osc_message_u_appendBndl(x->messages[inlet], len, (char *)ptr);
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
	char *bndl = NULL;
	long len = 0;
	critical_enter(x->lock);
	osc_bundle_u_serialize(x->bndl, &len, &bndl);
	critical_exit(x->lock);
	omax_util_outletOSC(x->outlet, len, bndl);
	if(bndl){
		osc_mem_free(bndl);
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
	for(i = 0; i < argc; i++){
		switch(atom_gettype(argv + i)){
		case A_FLOAT:
			osc_message_u_appendDouble(x->messages[messagenum], atom_getfloat(argv + i));
			break;
		case A_LONG:
			osc_message_u_appendInt32(x->messages[messagenum], atom_getlong(argv + i));
			break;
		case A_SYM:
			osc_message_u_appendString(x->messages[messagenum], atom_getsym(argv + i)->s_name);
			break;
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
	atom_setfloat(&a, (float)f);
	opack_anything(x, NULL, 1, &a);
}

void opack_bang(t_opack *x)
{
	opack_outputBundle(x);
}

void opack_set(t_opack *x, t_symbol *address)
{
	critical_enter(x->lock);
	int inlet = proxy_getinlet((t_object *)x);
	t_osc_msg_u *m = x->messages[inlet];
	t_osc_err ret;
	if((ret = osc_message_u_setAddress(m, address->s_name))){
		object_error((t_object *)x, "%s", osc_error_string(ret));
	}
	critical_exit(x->lock);
}

OMAX_UTIL_DICTIONARY(t_opack, x, opack_fullPacket);

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
				sysmem_freeptr(x->proxy[i]);
			}
		}
		free(x->proxy);
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
	class_addmethod(c, (method)opack_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)omax_util_dictionary, "dictionary", A_SYM, 0);
	class_addmethod(c, (method)opack_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)opack_doc, "doc", 0);
	class_addmethod(c, (method)opack_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)opack_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)opack_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)opack_int, "int", A_LONG, 0);
	class_addmethod(c, (method)opack_bang, "bang", 0);
	class_addmethod(c, (method)opack_set, "set", A_SYM, 0);

	class_register(CLASS_BOX, c);
	opack_class = c;


#ifdef PAK
	class_alias(c, gensym("o.bild"));
#else
	class_alias(c, gensym("o.build"));
#endif

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
