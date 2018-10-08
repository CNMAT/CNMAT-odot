
/*

format no longer supported : use o.explode if you need to work like this
{
    /0/x : [],
    /0/y : [],
    /1/x : [],
    /1/y : []
}


format 1:
{
    /x : [],
    /y : []
}


format 4:
if /x, /y, /c are subbundles, the subbundle addresses are assumed to be phrases
the order of the phrases in the bundle is used to set the order of the phrases - that means that it doesn't matter if the numbers don't match, however, it is a potential source of confusion, so be careful!

{
    /x : {
        /11 : [1, 2, 3],
        /111 : [0., 0.1, 1]
    },
    /y : {
        /0 : [1, 2, 3],
        /1 : [10., 10.1, 11]
    }
}

if there are fewer x than y or visa versa, o.lookup~ will repeat the list from the previous values.
this can be useful if you want to vary one or other other parameters for a set sequence of points.

{
    /x : {
        /0 : [1, 2, 3],
    },
    /y : {
        /0 : [1, 2, 3],
        /1 : [10., 10.1, 11]
    }
}


the /x values are also optional, you can just send a list of points in and the x values will be generated as indexes starting from 0

{
    /y : {
        /0 : [1, 2, 3],
        /1 : [10., 10.1, 11]
    }
}

format 3:
if /y is not found in the top level, o.lookup~ will assume that you have a set of subbundles containing phrases of points bound together -- and then look for subbundles that contain /y.
In this format, the names of the bundles are converted to integers and used for lookup -- if you skip numbers in the sequence, it will add slots inbetween the missing indexes -- this makes it possible to insert new phrases without setting the whole set of phrases from scratch, but will have a little overhead if you use very large gaps between your indexes, so it's recommended to keep them sequential, starting from 0.

{
    /0 : {
        /x : [1, 2, 3],
        /y : [0., 0.1, 1]
    },
    /1 : {
        /x : [1, 2, 3],
        /y : [10., 10.1, 11]
    }
}

*/

#define NAME "o.lookup~"
#define DESCRIPTION ""
#define AUTHORS "Rama Gottfried"
#define COPYRIGHT_YEARS "2016-7"

#include "o.lookup~.hpp"




using namespace std;

static t_class *olookup_class;

typedef struct _olookup {
    t_pxobject  ob;
    
    vector< PhasePoints > phrase;
    
    // chache with phrase update to avoid size() lookup
    t_int       num_phrases;
    
    // sample and hold values if phase doesn't change
    double      cur_phase;
    double      val;
    double      rel_phase;
    t_int       index;
    double      delta_between_points;
    
    int         phrase_index;
    
    bool        update = true;
    
    // attrs
    bool        phaseincr;
    bool        phasewrap;
    bool        normal_x;
    bool        interp;

    const string select_addrs[4] = {"/x", "/y", "/c", "/dur"};
    
    char **     selectors;
    t_symbol*   base_address;
    size_t      base_address_len;
    size_t      nbytes_selector;
    
    int         num_selectors;
    char *      selectors_ptrs[8];
    
    void*       osc_outlet;
    long        osc_inlet;
    t_proxy     proxy;
    t_critical  lock;
    
} t_olookup;

void olookup_single_phrase(t_olookup *x, vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y, vector<t_osc_msg_u*>& _c, vector<t_osc_msg_u*>& _dur)
{
    // we know that /y exists
    
    t_osc_msg_u* m_x = _x.size() ? _x[0] : NULL;
    t_osc_msg_u* m_y = _y.size() ? _y[0] : NULL;
    t_osc_msg_u* m_c = _c.size() ? _c[0] : NULL;
    t_osc_msg_u* m_dur = _dur.size() ? _dur[0] : NULL;
    
    // /x overrides /dur
    PhasePoints new_phrase( m_x, m_y, m_c, m_dur, (t_object *)x );
    if(  new_phrase.init(x->normal_x) )
    {
        critical_enter(x->lock);
        
        if( x->phrase.size() == 0 )
            x->phrase.emplace_back( new_phrase );
        else
            x->phrase[0] = new_phrase;
        
        x->update = true;
        
        critical_exit(x->lock);
    }
    
}

void olookup_add_phrase(t_olookup *x, int index, t_osc_msg_u *  m_x, t_osc_msg_u * m_y, t_osc_msg_u * m_c, t_osc_msg_u * m_dur)
{
    
    // /x overrides /dur
    PhasePoints new_phrase( m_x, m_y, m_c, m_dur, (t_object *)x );
    if(  new_phrase.init(x->normal_x) )
    {
        critical_enter(x->lock);
        
        if( x->phrase.size() == 0 )
            x->phrase.emplace_back( new_phrase );
        else
            x->phrase[0] = new_phrase;
        
        x->update = true;
        
        critical_exit(x->lock);
    }
    
}


bool olookup_parse_messages(t_olookup *x, vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y, vector<t_osc_msg_u*>& _c, vector<t_osc_msg_u*>& _dur)
{
    /*
     when the subbundle is /y /x /c or /dur, sub bundle addresses are ignored, and used in bundle order
    {
        /x : {
            /11 : [1, 2, 3],
            /111 : [0., 0.1, 1]
        },
        /y : {
            /0 : [1, 2, 3],
            /1 : [10., 10.1, 11]
        }
    }
    */
    
    size_t nx = _x.size();
    size_t ny = _y.size();
    
    if( !nx && !ny )
        return false;
    
    
    bool genX = false;
    
    if( nx )
    {
        if( nx != ny )
        {
            if( nx > ny )
            {
                // duplicate y to match x
                for( int i = ny-1; i < nx; ++i)
                {
                    _y.emplace_back( _y[ny-1] );
                }
                
            }
            else
            {
                // duplicate x to match y
                for( int i = nx-1; i < ny; ++i)
                {
                    _x.emplace_back( _x[nx-1] );
                }
            }
        }
        
    }
    else
    {
        if( _dur.size() )
        {
            // gen x from duration?
        }
        else
        {
            genX = true;
        }
    }
    
    
    if( !_y.size() )
        return false;
    
    for( int i = 0; i < _y.size(); ++i)
    {
        
        PhasePoints new_phrase;
        
        new_phrase.parseMsg((char *)"/y", _y[i], (t_object *)x );
        
        if( nx )
            new_phrase.parseMsg((char *)"/x", _x[i], (t_object *)x );
        else if( _dur.size() )
            new_phrase.parseMsg((char *)"/dur", _dur[i], (t_object *)x );
        else
            new_phrase.generateXfromY();
        
        
        if( i < _c.size() )
        {
            new_phrase.parseMsg((char *)"/c", _c[i], (t_object *)x );
        }
        
        
        if( new_phrase.init(x->normal_x) )
        {
            critical_enter(x->lock);
            
            if( i < x->phrase.size() )
                x->phrase[i] = new_phrase;
            else
                x->phrase.emplace_back( new_phrase );
            
            x->update = true;
            
            critical_exit(x->lock);
        }
        
    }
    
    return true;

}




void olookup_indexed_phrase(t_olookup *x, vector<t_osc_msg_u*>& _other)
{
    // when the subbunle is /y /x /c or /dur, sub bundle addresses are ignored, and used in bundle order
    // or?
    /*
     auto it = osc_bndl_it_s_get(len, ptr);
     while(osc_bndl_it_s_hasNext(it))
     {
     //                    t_osc_msg_s *m = osc_bndl_it_s_next(it);
     }
     osc_bndl_it_s_destroy(it);
     */
}

bool olookup_process_msg(t_osc_msg_s *m, vector<t_osc_msg_u*>& vec)
{
    bool isBundle = false; // maybe I don't care if it's a bundle or not?
    t_osc_atom_s *at = NULL;
    osc_message_s_getArg(m, 0, &at);
    if( at )
    {
        if(  osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
        {
            int count = 0;
            t_osc_bndl_s *sub = osc_atom_s_getBndl(at);
            auto itsub = osc_bndl_it_s_get(osc_bundle_s_getLen(sub), osc_bundle_s_getPtr(sub));
            while(osc_bndl_it_s_hasNext(itsub))
            {
                vec.emplace_back(osc_message_s_deserialize(osc_bndl_it_s_next(itsub)));
                
            }
            osc_bndl_it_s_destroy(itsub);
            
            osc_bundle_s_free(sub);
            isBundle = true;
        }
        else
        {
            vec.emplace_back(osc_message_s_deserialize(m));
        }
        osc_mem_free(at);
    }
    
    return isBundle;
}


void olookup_FullPacket(t_olookup *x, t_symbol *s, long argc, t_atom *argv)
{
    OMAX_UTIL_GET_LEN_AND_PTR
    
    // ======================= wrap_naked_osc
    // from wrap_naked... alloca was a problem in C++
    if(ptr && len >= 8){
        if(strncmp("#bundle\0", (char *)(ptr), 8)){
            char *oldptr = (char *)ptr;
            long oldlen = len;
            len += 4 + OSC_HEADER_SIZE;
            ptr = (char *)alloca(len);
            char alloc = 0;
            osc_bundle_s_wrapMessage(oldlen, oldptr, &len, (char **)(&ptr), &alloc);
        }
    }
    
    if(len == OSC_HEADER_SIZE){
        return;
    }
    // ==========================
    
    
    vector<t_osc_msg_u *> _x, _y, _c, _dur, _other;
    
    auto it = osc_bndl_it_s_get(len, ptr);
    while(osc_bndl_it_s_hasNext(it))
    {
        t_osc_msg_s *m = osc_bndl_it_s_next(it);
        const string addr = osc_message_s_getAddress(m);
        
        if( addr == "/x" )
        {
            olookup_process_msg(m, _x);
        }
        else if (  addr == "/y" )
        {
            olookup_process_msg(m, _y);
        }
        else if ( addr == "/c" )
        {
            olookup_process_msg(m, _c);
        }
        else if ( addr == "/dur" )
        {
            olookup_process_msg(m, _dur);
        }
        else
        {
            t_osc_atom_s *at = NULL;
            osc_message_s_getArg(m, 0, &at);
            if( at )
            {
                if(  osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
                    _other.emplace_back( osc_message_s_deserialize(m) );
                
                osc_mem_free(at);
            }
            
        }
        
    }
    osc_bndl_it_s_destroy(it);

    // new version accumlates x/y/c/dur messages into vectors (splitting up subbundles)
    // so now, below needs to be re-written to parse the values --
    // olookup_subbundle_phrases is probably the thing to use for /x /y and /x{} /y{} options
    
    
    if( !olookup_parse_messages(x, _x, _y, _c, _dur) )
    {
        if( _other.size() )
        {
            olookup_indexed_phrase(x, _other);
        }
        else
        {
            object_error((t_object *)x, "did not find any usable values in the received bundle");
            return;
        }
    }
   
    
//    post("interp %i norm %i", x->interp, x->normal_x);
    
    omax_util_outletOSC(x->osc_outlet, len, ptr);
    
    for( int i = 0; i < _x.size(); ++i )
        if( _x[i] )
            osc_message_u_free(_x[i]);

    for( int i = 0; i < _y.size(); ++i )
        if( _y[i] )
            osc_message_u_free(_y[i]);
    
    for( int i = 0; i < _c.size(); ++i )
        if( _c[i] )
            osc_message_u_free(_c[i]);
    
    for( int i = 0; i < _dur.size(); ++i )
        if( _dur[i] )
            osc_message_u_free(_dur[i]);
    
    for( int i = 0; i < _other.size(); ++i )
        if( _other[i] )
            osc_message_u_free(_other[i]);
}



void olookup_perform64(t_olookup *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
    t_double *phase_in = ins[0];
    t_double *index_in = ins[1];

    t_double *interp_val_out = outs[0];
    t_double *rel_phase_out = outs[1];
    t_double *index_out = outs[2];
    t_double *delta_out = outs[3];

    critical_enter(x->lock);
    vector<PhasePoints> x_phrase = x->phrase;
    critical_exit(x->lock);

    long max_phr_idx = x_phrase.size() - 1;
    
    t_int in_idx, points_len, max_idx0, max_idx1;
    double  in_phase, max_phase, x0 = 0, x1 = 0, y0 = 0, y1 = 0, range = 0, fp = 0;

    double y_val = x->val;
    double phase = x->cur_phase;
    t_int idx = x->index;
    double delta = x->delta_between_points;
    
    double prev_inphase = phase;
    t_int phrase_index = x->phrase_index;
    
    long n = sampleframes;
    
    while (n--)
    {
        if( max_phr_idx == -1 )
        {
            *interp_val_out++ = 0;
            *rel_phase_out++ = 0;
            *index_out++ = 0;
            *delta_out++ = 0;
        }
        else
        {
            in_phase = *phase_in++;
            in_idx = (t_int)*index_in++;
            
            if( in_phase != phase || in_idx != phrase_index || x->update )
            {
                if( x->update )
                {
                    critical_enter(x->lock);
                    x_phrase = x->phrase;
                    x->update = false;
                    critical_exit(x->lock);
                    
                    max_phr_idx = x_phrase.size() - 1;

                }

                phrase_index = (t_int)CLAMP( in_idx, 0, max_phr_idx );
                PhasePoints& phr = x_phrase[phrase_index];
                
                points_len = phr.len;
                max_idx1 = points_len;
                max_idx0 = points_len-1;
                
                // current segment start/end
                x0 = phr.x[ CLAMP(idx, 0, max_idx0) ];
                x1 = phr.x[ CLAMP(idx+1, 1, max_idx1) ];
                
                if( x->phaseincr == 1 )
                {
                    in_phase = prev_inphase + in_phase;
                }
                
                if( x->phasewrap == 1 )
                {
                    max_phase = x->normal_x == 1 ? 1 : max_idx0;
                    in_phase = fmod(in_phase, max_phase);
                }
                
                prev_inphase = in_phase;
                
                if( in_phase < x0 ){
                    while( in_phase < x0 && idx-- > 0 ){
                        x0 = phr.x[ CLAMP(idx, 0, max_idx0) ];
                    }
                    
                    if( in_phase < x0 && idx <= 0 )
                        x1 = x0;
                    else
                        x1 = phr.x[  CLAMP(idx+1, 1, max_idx1) ];
                    
                } else if( in_phase >= x1 ) {
                    while( in_phase >= x1 && idx++ < points_len ){
                        x1 = phr.x[ CLAMP(idx+1, 1, max_idx1) ];
                    }
                    
                    if( in_phase > x1 && idx >= points_len )
                        x0 = x1;
                    else
                        x0 = phr.x[  CLAMP(idx, 0, max_idx0) ];
                }
                
                delta = x1 - x0;

                if( idx >= max_idx1 && x0 == x1 )
                {
                    phase = 1;
                }
                else if( delta > 0 )
                {
                    phase = (in_phase - x0) / delta;
                }
                else
                    phase = 0;
                
                idx = CLAMP(idx, 0, max_idx0);
                
                
                if( !x->interp )
                {
                    y_val = phr.y[ CLAMP(idx, 0, max_idx0) ];
                }
                else
                {
                    // get y positions and interpolate a la curve~
                    y0 = phr.y[ CLAMP(idx, 0, max_idx0) ];
                    y1 = phr.y[ CLAMP(idx+1, 1, max_idx1) ];
                    range = y1-y0;
                    
                    // fp = peek(cbuf, clip(idx+1, 1, max_idx1), channel, channels=1);
                    fp = 0;
                    if( fp == 0 )
                        y_val = y0 + phase*range;
                    else {
                        //gp = (exp(fp * phase) - 1.) / (exp(fp) - 1.) ;
                        //y_val = y0 + gp*range;
                        y_val = -1; //temp
                    }
                }
                
            }
            
            *interp_val_out++ = y_val;
            *rel_phase_out++ = phase;
            *index_out++ = idx;
            *delta_out++ = delta;
        }
        
    }

    x->val = y_val;
    x->cur_phase = phase;
    x->index = idx;
}

void olookup_dsp64(t_olookup *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
    object_method(dsp64, gensym("dsp_add64"), x, olookup_perform64, 0, NULL);
}

void olookup_assist(t_olookup *x, void *b, long m, long a, char *s)
{
    if (m == ASSIST_INLET) { //inlet
        switch (a) {
            case 0:
                sprintf(s, "(signal) phase x axis lookup");
                break;
            case 1:
                sprintf(s, "(signal) phrase index lookup");
                break;
            case 2:
                sprintf(s, "(FullPacket) OSC input");
                break;
        }
    }
    else
    {	// outlet
        switch (a) {
            case 0:
                sprintf(s, "(signal) phrase value at lookup point");
                break;
            case 1:
                sprintf(s, "(signal) relative phase");
                break;
            default:
                sprintf(s, "outlet %ld", a);
                break;
        }
    }
    
}

void olookup_free(t_olookup *x)
{
    dsp_free(&(x->ob));

    critical_free( x->lock );
    
    object_free(x->proxy);
    
}

void *olookup_new(t_symbol* s, short argc, t_atom* argv)
{
    t_olookup *x = (t_olookup *)object_alloc(olookup_class);
    if(x)
    {

        x->phrase.reserve(1);
        printf("init size %ld\n", x->phrase.size());
        x->interp = 1;
        x->phaseincr = 0;
        x->phasewrap = 0;
        x->normal_x = 1;
        x->interp = 1;
       
        dsp_setup((t_pxobject *)x, 2);
        
        x->osc_outlet = outlet_new((t_object *)x, "FullPacket");
        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        outlet_new((t_object *)x, "signal");
        
        x->proxy = proxy_new((t_object *)x, 1, &(x->osc_inlet));
        
        critical_new( &x->lock );

    }
    return (void *)x;
}

BEGIN_USING_C_LINKAGE
int C74_EXPORT main(void)
{
    
    t_class *c = class_new("o.lookup~", (method)olookup_new, (method)olookup_free, sizeof(t_olookup), 0L, A_GIMME, 0);
    
    class_addmethod(c, (method)olookup_dsp64,       "dsp64",        A_CANT,     0);
    class_addmethod(c, (method)olookup_assist,      "assist",       A_CANT,     0);
    class_addmethod(c, (method)olookup_FullPacket,  "FullPacket",	A_GIMME,    0);

    class_dspinit(c);
    class_register(CLASS_BOX, c);
    olookup_class = c;
    
    post("%s by %s.", NAME, AUTHORS);
    post("Copyright (c) " COPYRIGHT_YEARS " Regents of the University of California.  All rights reserved.");
}
END_USING_C_LINKAGE
