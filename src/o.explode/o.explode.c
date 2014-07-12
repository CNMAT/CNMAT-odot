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
  NAME: o.flatten
  DESCRIPTION: Explode address hierarchies into nested bundles (opposite of o.flatten)
  AUTHORS: John MacCallum
  COPYRIGHT_YEARS: 2012
  SVN_REVISION: $LastChangedRevision: 587 $
  VERSION 0.0: First try
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
*/


#define OMAX_DOC_NAME "o.explode"
#define OMAX_DOC_SHORT_DESC "Explode address hierarchies into nested bundles (opposite of o.flatten)."
#define OMAX_DOC_LONG_DESC "o.explode breaks address hierarchies into nested bundles, e.g., /foo/bar 10 becomes /foo [ /bar 10 ].  It is the opposite of o.flatten."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"The exploded OSC packet."}
#define OMAX_DOC_SEEALSO (char *[]){"o.flatten"}

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
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

#include "o.h"

typedef struct _oexplode{
	t_object ob;
	void *outlet;
	int level;
	t_symbol *sep;
} t_oexplode;

void *oexplode_class;

//void oexplode_fullPacket(t_oexplode *x, long len, long ptr)
void oexplode_fullPacket(t_oexplode *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR
	char srcc[osc_bundle_s_getStructSize()];
	t_osc_bndl_s *src = (t_osc_bndl_s *)srcc;
	osc_bundle_s_setLen(src, len);
	osc_bundle_s_setPtr(src, ptr);
	t_osc_bndl_s *dest2 = NULL;
	osc_bundle_s_explode(&dest2, src, x->level, x->sep->s_name);
	omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(dest2), osc_bundle_s_getPtr(dest2));
	osc_bundle_s_deepFree(dest2);
}

#ifndef OMAX_PD_VERSION
OMAX_DICT_DICTIONARY(t_oexplode, x, oexplode_fullPacket);

void oexplode_assist(t_oexplode *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}
#endif

void oexplode_doc(t_oexplode *x)
{
	omax_doc_outletDoc(x->outlet);
}


#ifdef OMAX_PD_VERSION
void *oexplode_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oexplode *x;
	if((x = (t_oexplode *)object_alloc(oexplode_class))){
		x->outlet = outlet_new((t_object *)x, gensym("FullPacket"));
		x->level = -1;
		x->sep = gensym("");
        
        int i;
        for(i = 0; i < argc; i++)
        {
            if(atom_gettype(argv + i) == A_SYM)
            {
                t_symbol *attribute = atom_gensym(argv+i);
                if(attribute == gensym("@level")){
                    if(atom_gettype(argv+(++i)) == A_FLOAT)
                    {
                        x->level = atom_getfloat(argv+i);
                    } else {
                        post("@level value must be a number");
                        return 0;
                    }
                } else if(attribute == gensym("@sep")){
                    if(atom_gettype(argv+(++i)) == A_SYMBOL)
                    {
                        x->sep = atom_getsym(argv+i);
                    } else {
                        post("@sep value must be a symbol");
                        return 0;
                    }
                } else if(attribute->s_name[0] == '@') {
                    post("unknown attribute");
                }  else {
                    post("o.explode optional attributes are @level <value> and @sep <value>");
            }
            
            } else {
                post("o.explode optional attributes are @level <value> and @sep <value>");
                return 0;
            }
            
        
        }
    }
    
	return x;
}

int setup_o0x2eexplode(void)
{
	t_class *c = class_new(gensym("o.explode"), (t_newmethod)oexplode_new, NULL, sizeof(t_oexplode), 0L, A_GIMME, 0);

	class_addmethod(c, (t_method)oexplode_fullPacket, gensym("FullPacket"), A_GIMME, 0);
	class_addmethod(c, (t_method)oexplode_doc, gensym("doc"), 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);
    
	oexplode_class = c;
    
	ODOT_PRINT_VERSION;
	return 0;
}
#else
void *oexplode_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_oexplode *x;
	if((x = (t_oexplode *)object_alloc(oexplode_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->level = -1;
		x->sep = gensym("");
		attr_args_process(x, argc, argv);
	}
		   	
	return x;
}

int main(void)
{
	t_class *c = class_new("o.explode", (method)oexplode_new, NULL, sizeof(t_oexplode), 0L, A_GIMME, 0);
	//class_addmethod(c, (method)oexplode_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)oexplode_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)oexplode_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)oexplode_doc, "doc", 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);
	/*
	CLASS_ATTR_LONG(c, "level", 0, t_oexplode, level);
	CLASS_ATTR_SYM(c, "sep", 0, t_oexplode, sep);
	*/
	class_register(CLASS_BOX, c);
	oexplode_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
#endif
