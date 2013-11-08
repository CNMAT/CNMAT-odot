/*
  Written by John MacCallum, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2013, The Regents of
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


#define OMAX_DOC_NAME "o.downcast"
#define OMAX_DOC_SHORT_DESC "Returns a bundle that conforms to OSC 1.0"
#define OMAX_DOC_LONG_DESC "Downcasts optional types supported by the odot objects to the required types of OSC 1.0."
#define OMAX_DOC_INLETS_DESC (char *[]){"FullPacket"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Downcasted bundle (FullPacket)"}
#define OMAX_DOC_SEEALSO  (char *[]){}

#include "o.h"
#include "odot_version.h"
#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#endif
#include "osc.h"
#include "osc_mem.h"
#include "osc_bundle_u.h"
#include "osc_message_u.h"
#include "osc_atom_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_iterator_u.h"
#include "osc_bundle_s.h"
#include "osc_message_s.h"
#include "osc_bundle_iterator_s.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"

typedef struct _odowncast{
	t_object ob;
	void *outlet;
	t_symbol *timetag_address;
	long doubles, ints, bundles, timetags;
} t_odowncast;

void *odowncast_class;


//void odowncast_fullPacket(t_odowncast *x, long len, long ptr)
void odowncast_fullPacket(t_odowncast *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	t_osc_bndl_u *b = NULL;
	t_osc_err e = osc_bundle_s_deserialize(len, ptr, &b);
	if(e){
		object_error((t_object *)x, "%s", osc_error_string(e));
		return;
	}
	/*
	if(x->flatten_nested_bundles){
		t_osc_bndl_u *bf = NULL;
		e = osc_bundle_u_flatten(&bf, b
	}
	*/
	t_osc_bndl_u **nestedbundles = NULL;
	int nnestedbundles = 0, nestedbundles_buflen = 0;
	t_osc_bndl_it_u *bit = osc_bndl_it_u_get(b);
	t_osc_timetag timetag = OSC_TIMETAG_NULL;
	while(osc_bndl_it_u_hasNext(bit)){
		t_osc_msg_u *m = osc_bndl_it_u_next(bit);
		t_osc_msg_it_u *mit = osc_msg_it_u_get(m);
		while(osc_msg_it_u_hasNext(mit)){
			t_osc_atom_u *a = osc_msg_it_u_next(mit);
			int i = 0;
			switch(osc_atom_u_getTypetag(a)){
			case 'c':
			case 'C':
			case 'I':
			case 'h':
			case 'H':
			case 'u':
			case 'U':
			case 'N':
			case 'T':
			case 'F':
				if(x->ints){
					osc_atom_u_setInt32(a, osc_atom_u_getInt32(a));
				}
				break;
			case 'd':
				if(x->doubles){
					osc_atom_u_setFloat(a, osc_atom_u_getFloat(a));
				}
				break;
			case OSC_BUNDLE_TYPETAG:
				if(x->bundles){
					if(!nestedbundles || nnestedbundles == nestedbundles_buflen){
						nestedbundles = (t_osc_bndl_u **)osc_mem_resize(nestedbundles, (nestedbundles_buflen + 16) * sizeof(char *));
					}
					nestedbundles[nnestedbundles++] = osc_atom_u_getBndl(a);
					osc_message_u_removeAtom(m, a);
				}
				break;
			case OSC_TIMETAG_TYPETAG:
#if OSC_TIMETAG_FORMAT == OSC_TIMETAG_NTP
				if(x->timetags){
					t_osc_timetag tt = osc_atom_u_getTimetag(a);
					if(x->timetag_address){
						char *address = osc_message_u_getAddress(m);
						if(!strcmp(address, x->timetag_address->s_name)){
							timetag = tt;
						}
					}
					t_osc_atom_u *aa = osc_atom_u_alloc();
					int32_t tt1, tt2;
					//tt1 = (tt & 0xffffffff00000000) >> 32;
					//tt2 = tt & 0xffffffff;
					tt1 = osc_timetag_ntp_getSeconds(tt);
					tt2 = osc_timetag_ntp_getFraction(tt);
					osc_atom_u_setInt32(aa, ntoh32(tt1));
					osc_atom_u_setInt32(a, ntoh32(tt2));
					osc_message_u_insertAtom(m, aa, ++i);
				}
#else
				object_error((t_object *)x, "o.downcast only supports NTP timetags");
#endif
				break;
			}
			i++;
		}
		osc_msg_it_u_destroy(mit);
	}
	osc_bndl_it_u_destroy(bit);
	long l = 0;
	char *p = NULL;
	osc_bundle_u_serialize(b, &l, &p);
	if(l && p){
		memcpy(p + OSC_ID_SIZE, &timetag, sizeof(t_osc_timetag));
		for(int i = 0; i < nnestedbundles; i++){
			long ll = 0;
			char *pp = NULL;
			osc_bundle_u_serialize(nestedbundles[i], &ll, &pp);
			if(pp){
				p = osc_mem_resize(p, l + ll);
				memcpy(p + l, pp, ll);
				l += ll;
				osc_mem_free(pp);
			}
		}
		//if(x->bundle){
		omax_util_outletOSC(x->outlet, l, p);
			/*
		}else{
			t_osc_bndl_it_s *bit = osc_bndl_it_s_get(l, p);
			while(osc_bndl_it_s_hasNext(bit)){
				t_osc_msg_s *m = osc_bndl_it_s_next(bit);
				long ml = osc_message_s_getSize(m);
				char *mp = osc_message_s_getAddress(m);
				omax_util_outletOSC(x->outlet, ml, mp);
			}
			osc_bndl_it_s_destroy(bit);
		}
			*/
		osc_mem_free(p);
	}
	osc_bundle_u_free(b);
}

OMAX_DICT_DICTIONARY(t_odowncast, x, odowncast_fullPacket);

void odowncast_doc(t_odowncast *x)
{
	omax_doc_outletDoc(x->outlet);
}

void odowncast_assist(t_odowncast *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void odowncast_free(t_odowncast *x)
{
}

void *odowncast_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_odowncast *x;
	if((x = (t_odowncast *)object_alloc(odowncast_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
		x->timetag_address = NULL;
		x->doubles = x->ints = x->bundles = x->timetags = 1;
		attr_args_process(x, argc, argv);
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.downcast", (method)odowncast_new, (method)odowncast_free, sizeof(t_odowncast), 0L, A_GIMME, 0);
	class_addmethod(c, (method)odowncast_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)odowncast_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)odowncast_doc, "doc", 0);
	// remove this if statement when we stop supporting Max 5
	if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	}
	class_addmethod(c, (method)odot_version, "version", 0);

	CLASS_ATTR_SYM(c, "headertimetag", 0, t_odowncast, timetag_address);
	CLASS_ATTR_LONG(c, "doubles", 0, t_odowncast, doubles);
	CLASS_ATTR_LONG(c, "ints", 0, t_odowncast, ints);
	CLASS_ATTR_LONG(c, "bundles", 0, t_odowncast, bundles);
	CLASS_ATTR_LONG(c, "timetags", 0, t_odowncast, timetags);
	
	class_register(CLASS_BOX, c);
	odowncast_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
/*
t_max_err odowncast_notify(t_odowncast *x, t_symbol *s, t_symbol *msg, void *sender, void *data){
	t_symbol *attrname;

        if(msg == gensym("attr_modified")){
		attrname = (t_symbol *)object_method((t_object *)data, gensym("getname"));
	}
	return MAX_ERR_NONE;
}
*/
