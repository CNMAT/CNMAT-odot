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
#define OMAX_DOC_SHORT_DESC "Produces a bundle that conforms to OSC 1.0"
#define OMAX_DOC_LONG_DESC "Downcasts optional types supported by the odot objects to the required types of OSC 1.0."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC bundle", "Inactive (reserved for future use)"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"Downcasted OSC bundle"}
#define OMAX_DOC_SEEALSO  (char *[]){}

// need htonl
#ifdef WIN_VERSION
#include <Winsock.h>
#endif

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
    void *proxy; // right inlet reserved for casting options
    long inlet;
} t_odowncast;

void *odowncast_class;


t_osc_bundle_u *odowncast_iterBundle(t_odowncast *x, t_osc_bundle_u *b, t_osc_timetag *timetag)
{
    t_osc_bndl_it_u *bit = osc_bndl_it_u_get(b);
    while(osc_bndl_it_u_hasNext(bit))
    {
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
                {
                    // get pointer to bundle (not a copy)
                    t_osc_bundle_u *sub_b_u = osc_atom_u_getBndl(a);

                    sub_b_u = odowncast_iterBundle(x, sub_b_u, timetag);

                    // after downcasting, and blobbing subbundles, serialize and convert to blob
                    t_osc_bundle_s *sub_b_s = osc_bundle_u_serialize(sub_b_u);
                    if( sub_b_s )
                    {
                        // temp atom for conversion
                        t_osc_atom_u *tmp_atom_s_bnd = osc_atom_u_alloc();
                        osc_atom_u_setBndl_s(tmp_atom_s_bnd, osc_bundle_s_getLen(sub_b_s), osc_bundle_s_getPtr(sub_b_s));

                        // make the blob
                        char *blob = NULL;
                        int32_t blob_l;
                        osc_atom_u_getBlobCopy(tmp_atom_s_bnd, &blob_l, &blob); //<< internally checks for and copies bundle into blob format

                        if( blob )
                        {
                            // transfer to the current atom (a)
                            // internally calls atom_u_clear/free which frees our sub_b_u pointer, so we don't have to do that
                            osc_atom_u_setBlob(a, blob);

                            // release the blob
                            osc_mem_free(blob);
                            blob = NULL;
                        }

                        // release temp bundle atom
                        osc_atom_u_free(tmp_atom_s_bnd);
                        osc_bundle_s_deepFree(sub_b_s);
                    }


                }
                    break;
                case OSC_TIMETAG_TYPETAG:
#if OSC_TIMETAG_FORMAT == OSC_TIMETAG_NTP
                    if(x->timetags){
                        t_osc_timetag tt = osc_atom_u_getTimetag(a);
                        if(x->timetag_address){
                            char *address = osc_message_u_getAddress(m);
                            if(!strcmp(address, x->timetag_address->s_name)){
                                *timetag = tt;
                            }
                        }
                        t_osc_atom_u *aa = osc_atom_u_alloc();
                        int32_t tt1, tt2;
                        //tt1 = (tt & 0xffffffff00000000) >> 32;
                        //tt2 = tt & 0xffffffff;
                        tt1 = osc_timetag_ntp_getSeconds(tt);
                        tt2 = osc_timetag_ntp_getFraction(tt);
                        osc_atom_u_setInt32(a, (int32_t)tt1);
                        osc_atom_u_setInt32(aa, (int32_t)tt2);
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
    return b;
}


void odowncast_fullPacket(t_odowncast *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
    t_osc_bndl_u *b = osc_bundle_s_deserialize(len, ptr);
	if(!b){
		object_error((t_object *)x, "invalid OSC packet");
		return;
	}

    t_osc_timetag timetag = OSC_TIMETAG_NULL;

    t_osc_bundle_u *blobbed_b = odowncast_iterBundle(x, b, &timetag);
    if( !blobbed_b )
    {
        object_error((t_object *)x, "invalid OSC packet");
        osc_bundle_u_free(b);
        return;
    }

    t_osc_bndl_s *bs1 = osc_bundle_u_serialize(blobbed_b);

	if(bs1){

		long l = osc_bundle_s_getLen(bs1);
		char *p = osc_bundle_s_getPtr(bs1);

        t_osc_timetag tt_n;
        tt_n.sec = htonl(timetag.sec);
        tt_n.frac_sec = htonl(timetag.frac_sec);

		memcpy(p + OSC_ID_SIZE, &tt_n, sizeof(t_osc_timetag)); // add timetag to header if found @headertimetag address

		omax_util_outletOSC(x->outlet, l, p);

		osc_bundle_s_deepFree(bs1);
	}
	osc_bundle_u_free(b);

}


void odowncast_doc(t_odowncast *x)
{
	omax_doc_outletDoc(x->outlet);
}

void odowncast_free(t_odowncast *x)
{
}


#ifdef OMAX_PD_VERSION

void *odowncast_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_odowncast *x;
	if((x = (t_odowncast *)object_alloc(odowncast_class))){
		x->outlet = outlet_new((t_object *)x, gensym("FullPacket"));
		x->timetag_address = NULL;
		x->doubles = x->ints = x->bundles = x->timetags = 1;


        /*
         CLASS_ATTR_SYM(c, "headertimetag", 0, t_odowncast, timetag_address);
         CLASS_ATTR_LONG(c, "doubles", 0, t_odowncast, doubles);
         CLASS_ATTR_LONG(c, "ints", 0, t_odowncast, ints);
         CLASS_ATTR_LONG(c, "bundles", 0, t_odowncast, bundles);
         CLASS_ATTR_LONG(c, "timetags", 0, t_odowncast, timetags);
         */


        int i;
        for(i = 0; i < argc; i++)
        {
            if(atom_gettype(argv + i) == A_SYM)
            {
                t_symbol *attribute = atom_gensym(argv+i);
                if(attribute == gensym("@headertimetag")){
                    if(atom_gettype(argv+(++i)) == A_SYMBOL)
                    {
                        x->timetag_address = atom_getsym(argv+i);
                    } else {
                        post("@headertimetag value must be an address symbol");
                        return 0;
                    }
                } else if(attribute == gensym("@doubles")){
                    if(atom_gettype(argv+(++i)) == A_FLOAT)
                    {
                        x->doubles = (long)(atom_getfloat(argv+i) != 0);
                    } else {
                        post("@doubles flag must be a number (0/1)");
                        return 0;
                    }
                } else if(attribute == gensym("@ints")){
                    if(atom_gettype(argv+(++i)) == A_FLOAT)
                    {
                        x->ints = (long)(atom_getfloat(argv+i) != 0);
                    } else {
                        post("@ints flag must be a number (0/1)");
                        return 0;
                    }
                } else if(attribute == gensym("@bundles")){
                    if(atom_gettype(argv+(++i)) == A_FLOAT)
                    {
                        x->bundles = (long)(atom_getfloat(argv+i) != 0);
                    } else {
                        post("@bundles flag must be a number (0/1)");
                        return 0;
                    }
                } else if(attribute == gensym("@timetags")){
                    if(atom_gettype(argv+(++i)) == A_FLOAT)
                    {
                        x->timetags = (long)(atom_getfloat(argv+i) != 0);
                    } else {
                        post("@timetags flag must be a number (0/1)");
                        return 0;
                    }
                } else if(attribute->s_name[0] == '@') {
                    post("unknown attribute");
                }  else {
                    post("o.downcast optional attributes are: @headertimetag, @doubles, @ints, @bundles, and @timetags");
                }

            } else {
                post("o.downcast optional attributes are: @headertimetag, @doubles, @ints, @bundles, and @timetags");
                return 0;
            }


        }

	}
	return x;
}

int setup_o0x2edowncast(void)
{

	t_class *c = class_new(gensym("o.downcast"), (t_newmethod)odowncast_new, (t_method)odowncast_free, sizeof(t_odowncast), 0L, A_GIMME, 0);
	class_addmethod(c, (t_method)odowncast_fullPacket, gensym("FullPacket"), A_GIMME, 0);
//	class_addmethod(c, (t_method)odowncast_assist, gensym("assist"), A_CANT, 0);
	class_addmethod(c, (t_method)odowncast_doc, gensym("doc"), 0);
	class_addmethod(c, (t_method)odot_version, gensym("version"), 0);

	odowncast_class = c;

	ODOT_PRINT_VERSION;
	return 0;
}

#else
OMAX_DICT_DICTIONARY(t_odowncast, x, odowncast_fullPacket);

void odowncast_assist(t_odowncast *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}


void *odowncast_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_odowncast *x;
	if((x = (t_odowncast *)object_alloc(odowncast_class))){
		x->outlet = outlet_new((t_object *)x, "FullPacket");
        x->proxy = proxy_new((t_object *)x, 1, &(x->inlet));
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
	//if(omax_dict_resolveDictStubs()){
		class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
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
#endif
