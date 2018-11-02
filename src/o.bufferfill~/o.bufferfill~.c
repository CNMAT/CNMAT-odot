/*
  Written by Rama Gottfried, The Center for New Music and Audio Technologies,
  University of California, Berkeley.  Copyright (c) 2018, The Regents of
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


#define OMAX_DOC_NAME "o.bufferfill~"
#define OMAX_DOC_SHORT_DESC "Fills an MSP buffer with one or more channels of sample values"
#define OMAX_DOC_LONG_DESC "..."
//#define OMAX_DOC_INLETS_DESC (char *[]){"Signal"}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC bundle"}
#define OMAX_DOC_SEEALSO (char *[]){""}

#include "odot_version.h"
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "ext_buffer.h"
//#include "buffer.h"

#include "osc.h"
#include "osc_bundle_iterator_s.h"

#include "o.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"


/**
 *  buffer wrapper class to keep notifications clean
 */
t_class *buffer_proxy_class = NULL;
t_symbol *ps_buffer_modified = NULL;

typedef struct _buffer_proxy
{
    t_object        ob;
    t_buffer_ref    *ref;
    t_symbol        *name;
    t_bool          buffer_modified;
    double          sr;
    long            nframes;
    long            nchans;
} t_buffer_proxy;

t_max_err buffer_proxy_notify(t_buffer_proxy *x, t_symbol *s, t_symbol *msg, void *sender, void *data)
{
    if (msg == ps_buffer_modified)
        x->buffer_modified = true;
    return buffer_ref_notify(x->ref, s, msg, sender, data);
}

void buffer_proxy_set_ref(t_buffer_proxy *x, t_symbol *s)
{
    x->name = s;
    buffer_ref_set(x->ref, x->name);
    x->buffer_modified = true;
}

void *buffer_proxy_new(t_symbol *s)
{
    t_buffer_proxy *x = NULL;
    
    if((x = (t_buffer_proxy *)object_alloc(buffer_proxy_class)))
    {
        x->name = s;
        x->ref = buffer_ref_new((t_object *)x, x->name);
        x->buffer_modified = true;
    }
    
    return x;
}

void buffer_proxy_free(t_buffer_proxy *x)
{
    if( x->ref )
        object_free((t_object *)x->ref);
}


/**
 *  Main o.bufferfill~ class
 */

typedef struct _obuffill {
    t_object        ob;
    short           active_buf;
    short           numbufs;
    t_buffer_proxy  **buf_proxy;
    t_symbol        *buf_name[2];
    void            *outlet;
} t_obuffill;

void *obuffill_class;

void obuffill_fullPacket(t_obuffill *x, t_symbol *msg, int argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    
    int n_msg, i;
    osc_bundle_s_getMsgCount(len, ptr, &n_msg);
    
    
    int nextbuf = (x->active_buf + 1) % x->numbufs;
    
    t_buffer_obj *buffer = buffer_ref_getobject(x->buf_proxy[nextbuf]->ref);
    if( !buffer )
    {
        object_error((t_object *)x, "could not get buffer: %s", x->buf_proxy[nextbuf]->name->s_name );
        return;
    }
    
    int count = 0;
    int array_size[n_msg];
    float *sample_arrays[n_msg];
    long max_len = 0;
    
    t_osc_bndl_u * bndl_out = osc_bundle_u_alloc();
    t_osc_msg_u *buffer_name = osc_message_u_allocWithAddress("/updatedbuffer");
    osc_message_u_appendString(buffer_name, x->buf_proxy[nextbuf]->name->s_name );
    
    osc_bundle_u_addMsg(bndl_out, buffer_name);
    
    t_osc_msg_u *channel_addrs = osc_message_u_allocWithAddress("/channeladdresses");
    
    t_osc_atom_s *at = NULL;
    t_osc_bndl_it_s *it = osc_bndl_it_s_get(len, ptr);
    while(osc_bndl_it_s_hasNext(it))
    {
        t_osc_msg_s *msg = osc_bndl_it_s_next(it);
        int n_atoms = osc_message_s_getArgCount(msg);
    
        osc_message_u_appendString(channel_addrs, osc_message_s_getAddress(msg));
        
        array_size[count] = n_atoms;
        
        if(n_atoms > max_len)
           max_len = n_atoms;
        
        sample_arrays[count] = (float *)malloc(n_atoms * sizeof(float));
        
        for( i = 0; i < n_atoms; ++i )
        {
            osc_message_s_getArg(msg, i, &at);
            if( at )
            {
                switch(osc_atom_s_getTypetag(at)){
                    case 'i':
                        sample_arrays[count][i] = (float)osc_atom_s_getInt32(at);
                        break;
                    case 'd':
                        sample_arrays[count][i] = (float)osc_atom_s_getDouble(at);
                        break;
                    default:
                        sample_arrays[count][i] = (float)osc_atom_s_getFloat(at);
                        break;
                }
                osc_atom_s_free(at);
                at = NULL;
            }
            
        }
        count++;
    }
    osc_bndl_it_s_destroy(it);
    
    // I'm assuming that buffer locks the samples, for sure it must
    object_method(buffer, gensym("sizeinsamps"), max_len, n_msg);

    float *samps = buffer_locksamples(buffer);
    if( samps )
    {
        long nframes = buffer_getframecount(buffer);
        int nchans = buffer_getchannelcount(buffer);
        
        long w_count = 0;
        int i, idx;
        while( w_count < nframes )
        {
            for( i = 0; i < n_msg; i++)
            {
                idx = w_count * n_msg + i;
                samps[idx] = ( w_count < array_size[i] ) ? sample_arrays[i][w_count] : 0;
            }
            w_count++;
        }
        
        x->buf_proxy[nextbuf]->nframes = nframes;
        x->buf_proxy[nextbuf]->nchans = nchans;
        x->buf_proxy[nextbuf]->buffer_modified = false;
        
        buffer_setdirty(buffer);
        buffer_unlocksamples(buffer);
    }
    
    osc_bundle_u_addMsg(bndl_out, channel_addrs);

    t_osc_bundle_s *s_bndl = osc_bundle_u_serialize(bndl_out);
    omax_util_outletOSC(x->outlet, osc_bundle_s_getLen(s_bndl), osc_bundle_s_getPtr(s_bndl));
    
    if( s_bndl )
        osc_bundle_s_deepFree(s_bndl);
    
    osc_bundle_u_free(bndl_out);

    for(i = 0; i < n_msg; i++)
        free(sample_arrays[i]);
    
    x->active_buf = nextbuf;
    
}

OMAX_DICT_DICTIONARY(t_obuffill, x, obuffill_fullPacket);

void obuffill_doc(t_obuffill *x)
{
	omax_doc_outletDoc(x->outlet);
}

void obuffill_assist(t_obuffill *x, void *b, long io, long num, char *buf)
{
//	omax_doc_assist(io, num, buf);
}


void obuffill_free(t_obuffill *x)
{
    int i;
    for(i = 0; i < x->numbufs; i++){
        if( x->buf_proxy[i] )
        {
            buffer_proxy_free(x->buf_proxy[i]);
            object_free(x->buf_proxy[i]);
            x->buf_proxy[i] = NULL;
        }
    }
    
    if( x->buf_proxy )
        sysmem_freeptr(x->buf_proxy);
}

void *obuffill_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_obuffill *x = NULL;
    x = (t_obuffill *)object_alloc(obuffill_class);
	if( x )
    {
		x->outlet = outlet_new((t_object *)x, "FullPacket");
        x->active_buf = 0;
        x->numbufs = CLAMP( argc, 0, 2 );
        
        
        if(argc == 0) {
            object_error((t_object *)x, "requires at least one buffer~ name");
            return NULL;
        }
        
        x->buf_proxy = (t_buffer_proxy **)sysmem_newptr(2 * sizeof(t_buffer_proxy *));

        
        int i;
        for( i = 0; i < x->numbufs; i++)
        {
            if( atom_gettype(argv+i) != A_SYM )
            {
                object_error((t_object *)x, "buffer~ names must be strings");
                return NULL;
            }
            
            x->buf_name[i] = atom_getsym(argv+i);
            x->buf_proxy[i] = buffer_proxy_new(x->buf_name[i]);
            
        }
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.bufferfill~", (method)obuffill_new, (method)obuffill_free, sizeof(t_obuffill), 0L, A_GIMME, 0);
	class_addmethod(c, (method)obuffill_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)obuffill_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)obuffill_doc, "doc", 0);
	class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	
	class_addmethod(c, (method)odot_version, "version", 0);

    t_class *bufpxy = class_new("bufferproxy", NULL, NULL, sizeof(t_buffer_proxy), 0L, 0);
    class_addmethod(bufpxy, (method)buffer_proxy_notify, "notify",    A_CANT, 0);
    class_register(CLASS_NOBOX, bufpxy);
    buffer_proxy_class = bufpxy;

    ps_buffer_modified = gensym("buffer_modified");
    
	class_register(CLASS_BOX, c);
	obuffill_class = c;

	common_symbols_init();
    
	ODOT_PRINT_VERSION;

	return 0;
}
