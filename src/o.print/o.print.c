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
NAME: o.print
DESCRIPTION: Print the contents of an OSC bundle to the Max window
AUTHORS: John MacCallum
COPYRIGHT_YEARS: 2011
SVN_REVISION: $LastChangedRevision: 587 $
VERSION 0.0: First try
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/

#define OMAX_DOC_NAME "o.print"
#define OMAX_DOC_SHORT_DESC "Print an OSC packet to the Max window"
#define OMAX_DOC_LONG_DESC "o.print prints the contents of an OSC packet to the Max window and passes the packet through its outlet unaltered."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet or Max message"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet or Max message (same as input)"}
#define OMAX_DOC_SEEALSO (char *[]){"o.printbytes", "print"}

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
#include "osc_bundle_s.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _oprint{
	t_object ob;
	void *outlet;
	int print_msgsize;
	int print_typetags;
	t_symbol *myname;
} t_oprint;

void *oprint_class;

void oprint_int(t_oprint *x, long l);
void oprint_float(t_oprint *x, double f);
void oprint_anything(t_oprint *x, t_symbol *msg, int argc, t_atom *argv);
void oprint_list(t_oprint *x, t_symbol *msg, int argc, t_atom *argv);
void oprint_free(t_oprint *x);
void *oprint_new(t_symbol *msg, short argc, t_atom *argv);
t_max_err oprint_notify(t_oprint *x, t_symbol *s, t_symbol *msg, void *sender, void *data);
void oprint_doc(t_oprint *x);


t_symbol *ps_FullPacket;

//void oprint_fullPacket(t_oprint *x, long len, long ptr)
void oprint_fullPacket(t_oprint *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	osc_bundle_s_wrap_naked_message(len, ptr);
	//long buflen = 0;
	//char *buf = NULL;
	//osc_bundle_s_format(len, (char *)ptr, &buflen, &buf);
	long buflen = osc_bundle_s_nformat(NULL, 0, len, (char *)ptr, 0);
	char *buf = osc_mem_alloc(buflen + 1);
	osc_bundle_s_nformat(buf, buflen + 1, len, (char *)ptr, 0);
	object_post((t_object *)x, "{");
	if(buflen == 0){
		object_post((t_object *)x, "<empty bundle>");
	}else{
		// the Max window doesn't respect newlines, so we have to do them manually
		char *start = buf;
		for(int i = 0; i < buflen; i++){
			if(buf[i] == '\n'){
				long n = ((buf + i) - start);
				char line[n + 1];
				memcpy(line, start, n);
				line[n] = '\0';
				object_post((t_object *)x, "%s\n", line);
				start = buf + i + 1;
			}
		}
		if(start - buf < buflen){
			long n = ((buf + buflen) - start);
			char line[n + 1];
			memcpy(line, start, n);
			line[n] = '\0';
			object_post((t_object *)x, "%s", line);
		}
	}
	object_post((t_object *)x, "}");
	if(buf){
		osc_mem_free(buf);
	}
	omax_util_outletOSC(x->outlet, len, (char *)ptr);
}

void oprint_anything(t_oprint *x, t_symbol *msg, int argc, t_atom *argv)
{
#ifdef OMAX_PD_VERSION
    if(msg == gensym("doc"))
    {
        oprint_doc(x);
    }
    else
        post("currently only printing FullPackets in PD");
#else
	char *buf = NULL;
	long len = 0;
	atom_gettext(argc, argv, &len, &buf, 0);
	if(msg){
		post("%s: %s %s", x->myname->s_name, msg->s_name, buf);
	}else{
		post("%s: %s", x->myname->s_name, buf);
	}
	if(buf){
		sysmem_freeptr(buf);
	}
	outlet_anything(x->outlet, msg, argc, argv);
#endif
}

void oprint_list(t_oprint *x, t_symbol *msg, int argc, t_atom *argv)
{
#ifdef OMAX_PD_VERSION
    post("currently only printing FullPackets in PD");
#else
	char *buf = NULL;
	long len = 0;
	atom_gettext(argc, argv, &len, &buf, 0);
	post("%s: %s", x->myname->s_name, buf);
	if(buf){
		sysmem_freeptr(buf);
	}
	outlet_list(x->outlet, NULL, argc, argv);
#endif
}

void oprint_int(t_oprint *x, long l)
{
#ifdef OMAX_PD_VERSION
    post("currently only printing FullPackets in PD");
#else
	post("%s: %ld", x->myname->s_name, l);
	outlet_int(x->outlet, l);
#endif
}

void oprint_float(t_oprint *x, double f)
{
#ifdef OMAX_PD_VERSION
    post("currently only printing FullPackets in PD");
#else
	post("%s: %f", x->myname->s_name, f);
	outlet_float(x->outlet, f);
#endif
}

#ifndef OMAX_PD_VERSION
OMAX_DICT_DICTIONARY(t_oprint, x, oprint_fullPacket);

void oprint_assist(t_oprint *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}
#endif

void oprint_doc(t_oprint *x)
{
	omax_doc_outletDoc(x->outlet);
}

void oprint_free(t_oprint *x){
}

#ifdef OMAX_PD_VERSION

void *oprint_new(t_symbol *msg, short argc, t_atom *argv){
	t_oprint *x;
	if((x = (t_oprint *)object_alloc(oprint_class))){
		x->myname = gensym("o_print");
		x->outlet = outlet_new(&x->ob, NULL);
		if(argc > 0){
			char buf[128];
			switch(atom_gettype(argv)){
                case A_FLOAT:
                    sprintf(buf, "%f", atom_getfloat(argv));
                    x->myname = gensym(buf);
                    break;
                case A_LONG:
                    sprintf(buf, "%ld", atom_getlong(argv));
                    x->myname = gensym(buf);
                    break;
                case A_SYM:
                    x->myname = atom_getsym(argv);
                    break;
			}
		}
	}
    
	return(x);
}

int setup_o0x2eprint(void){
	t_class *c = class_new(gensym("o.print"), (t_newmethod)oprint_new, (t_method)oprint_free, sizeof(t_oprint), 0L, A_GIMME, 0);

	//class_addmethod(c, (method)oprint_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (t_method)oprint_fullPacket, gensym("FullPacket"), A_GIMME, 0);
    
//	class_addmethod(c, (method)oprint_assist, "assist", A_CANT, 0);
	class_addmethod(c, (t_method)oprint_doc, gensym("doc"), 0);
	class_addmethod(c, (t_method)oprint_anything, gensym("anything"), A_GIMME, 0);
	class_addmethod(c, (t_method)oprint_list, gensym("list"), A_GIMME, 0);
	class_addmethod(c, (t_method)oprint_int, gensym("int"), A_DEFFLOAT, 0);
	class_addmethod(c, (t_method)oprint_float, gensym("float"), A_FLOAT, 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	oprint_class = c;
    
	ps_FullPacket = gensym("FullPacket");
    
//	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}

#else
void *oprint_new(t_symbol *msg, short argc, t_atom *argv){
	t_oprint *x;
	if((x = (t_oprint *)object_alloc(oprint_class))){
		x->myname = gensym("o.print");
		x->outlet = outlet_new(x, NULL);
		if(attr_args_offset(argc, argv) > 0 && argc > 0){
			char buf[128];
			switch(atom_gettype(argv)){
			case A_FLOAT:
				sprintf(buf, "%f", atom_getfloat(argv));
				x->myname = gensym(buf);
				break;
			case A_LONG:
				sprintf(buf, "%lld", (long long)atom_getlong(argv));
				x->myname = gensym(buf);
				break;
			case A_SYM:
				x->myname = atom_getsym(argv);
				break;
			}
		}
		attr_args_process(x, argc, argv);
	}
		   	
	return(x);
}

int main(void){
	t_class *c = class_new("o.print", (method)oprint_new, (method)oprint_free, sizeof(t_oprint), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oprint_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oprint_fullPacket, "FullPacket", A_GIMME, 0);
	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}

	class_addmethod(c, (method)oprint_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oprint_doc, "doc", 0);
	class_addmethod(c, (method)oprint_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)oprint_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)oprint_int, "int", A_LONG, 0);
	class_addmethod(c, (method)oprint_float, "float", A_FLOAT, 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	CLASS_ATTR_LONG(c, "printtypetags", 0, t_oprint, print_typetags);
	CLASS_ATTR_LONG(c, "printsize", 0, t_oprint, print_msgsize);

	class_register(CLASS_BOX, c);
	oprint_class = c;

	ps_FullPacket = gensym("FullPacket");

	common_symbols_init();
	ODOT_PRINT_VERSION;
	return 0;
}
#endif
