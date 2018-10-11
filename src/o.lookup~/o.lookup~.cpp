
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
#define COPYRIGHT_YEARS "2018"

#include "o.lookup~.hpp"

using namespace std;

static t_class *olookup_class;

typedef struct _olookup {
    t_pxobject  ob;
    
    vector< PhasePoints > phrase;
    
    // sample and hold values if phase doesn't change
    double      cur_phase;
    double      val;
    double      rel_phase;
    t_int       index;
    double      delta_between_points;
    t_int       phrase_len;
    
    int         phrase_index;
    
    bool        update = true;
    
    // attrs
    long        phaseincr;
    long        phasewrap;
    long        normal_x;
    long        interp;
    long        tie_repeats;

    
    short       connected[2];
    
    void*       osc_outlet;
    long        osc_inlet;
    t_proxy     proxy;
    t_critical  lock;
    
} t_olookup;


struct oPointSet {
    vector<t_osc_msg_u *> _x, _y, _c, _dur, _other;
    int x_free = 0, y_free = 0, c_free = 0, d_free = 0, o_free = 0;

    void release()
    {
        for( int i = 0; i < x_free; ++i )
            osc_message_u_free(_x[i]);
        
        for( int i = 0; i < y_free; ++i )
            osc_message_u_free(_y[i]);
        
        for( int i = 0; i < c_free; ++i )
            osc_message_u_free(_c[i]);
        
        for( int i = 0; i < d_free; ++i )
            osc_message_u_free(_dur[i]);
        
        for( int i = 0; i < o_free; ++i )
            osc_message_u_free(_other[i]);
        
    }
};


void olookup_expandToMatch2(vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y)
{
    size_t nx = _x.size();
    size_t ny = _y.size();
    
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

void olookup_expandToMatch3(vector<t_osc_msg_u*>& _x, vector<t_osc_msg_u*>& _y, vector<t_osc_msg_u*>& _c)
{
    size_t nx = _x.size();
    size_t ny = _y.size();
    size_t nc = _c.size();

    if( nx != ny )
    {
        if( nx > ny )
        {
            // duplicate y to match x
            t_osc_msg_u * repeat = _y.back();
            for( int i = ny-1; i < nx; ++i)
            {
                _y.emplace_back( repeat );
            }
            
        }
        else
        {
            // duplicate x to match y
            t_osc_msg_u * repeat =_x.back();
            for( int i = nx-1; i < ny; ++i)
            {
                _x.emplace_back( repeat );
            }
        }
    }
    
    if( nx != nc )
    {
        if( nx > nc )
        {
            // duplicate c to match x/y
            t_osc_msg_u * repeat = _c.back();
            for( int i = nc-1; i < nx; ++i)
            {
                _c.emplace_back( repeat );
            }
            
        }
        else
        {
            // duplicate xy to match c
            t_osc_msg_u * repeatx =_x.back();
            t_osc_msg_u * repeaty =_y.back();

            for( int i = nx-1; i < nc; ++i)
            {
                _x.emplace_back( repeatx );
                _y.emplace_back( repeaty );
            }
        }
    }
}

bool olookup_parse_messages(t_olookup *x, oPointSet& p, int index = -1)
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
    
    size_t nx = p._x.size();
    size_t ny = p._y.size();
    size_t ndur = p._dur.size();

    if( !ny || (!nx && !ndur) )
        return false;
    
    bool genX = !nx && ndur ;
    
    if( genX )
    {
        // gen x from duration

        if( !p._c.size() )
            olookup_expandToMatch2(p._dur, p._y);
        else
            olookup_expandToMatch3(p._dur, p._y, p._c);
        
    }
    else
    {
        if( !p._c.size() )
            olookup_expandToMatch2(p._x, p._y);
        else
            olookup_expandToMatch3(p._x, p._y, p._c);
    }
    
    
    vector<PhasePoints> new_vec;
    
    for( int i = 0; i < p._y.size(); ++i)
    {
        PhasePoints new_phrase;
        
        new_phrase.parseMsg((char *)"/y", p._y[i], (t_object *)x );
        
        if( genX )
            new_phrase.parseDurMsg( p._dur[i], (t_object *)x );
        else
            new_phrase.parseMsg((char *)"/x", p._x[i], (t_object *)x );
        
        // note: c needs to be after x in case we are in duration mode, which adds a zero as the first curve
        if( i < p._c.size() )
        {
            new_phrase.parseMsg((char *)"/c", p._c[i], (t_object *)x );
        }
        
        
        if( new_phrase.init() )
        {
            new_vec.emplace_back( new_phrase );
        }
        else
        {
            return false;
        }
        
    }
    
    critical_enter(x->lock);
    x->phrase = new_vec;
    x->update = true;
    critical_exit(x->lock);
    

    return true;

}

bool olookup_indexed_phrase(t_olookup *x, oPointSet& p)
{
    
    for( auto& m : p._other )
    {
        
        string bundle_addr = osc_message_u_getAddress(m);
        bundle_addr = bundle_addr.substr(1);

        int index;
        
        try
        {
            index = stoi(bundle_addr);
        }
        catch (std::exception& e)
        {
            object_error((t_object *)x, "indexed address could not be converted to int.");
            return false;
        }
        
        
        auto b = osc_atom_u_getBndl( osc_message_u_getArg(m, 0) );
        auto it = osc_bndl_it_u_get(b);
        while(osc_bndl_it_u_hasNext(it))
        {
            t_osc_msg_u *m = osc_bndl_it_u_next(it);
            const string addr = osc_message_u_getAddress(m);
            
            if( addr == "/x" )
            {
                t_osc_msg_u * copy;
                osc_message_u_deepCopy(&copy, m);
                p._x.emplace_back( copy );
                p.x_free = p._x.size();
            }
            else if (  addr == "/y" )
            {
                t_osc_msg_u * copy;
                osc_message_u_deepCopy(&copy, m);
                p._y.emplace_back( copy );
                p.y_free = p._y.size();
            }
            else if ( addr == "/c" || addr == "/curve" )
            {
                t_osc_msg_u * copy;
                osc_message_u_deepCopy(&copy, m);
                p._c.emplace_back( copy );
                p.c_free = p._c.size();
            }
            else if ( addr == "/dur" )
            {
                t_osc_msg_u * copy;
                osc_message_u_deepCopy(&copy, m);
                p._dur.emplace_back( copy );
                p.d_free = p._dur.size();
                
            }
            else
            {
               // otherwise not valid
            }
            
        }
        osc_bndl_it_u_destroy(it);
        
    }
    
    if( p._y.size() && (p._dur.size() || p._x.size()) )
    {
        
    }
    
    /*
     critical_enter(x->lock);
     
     if( i < x->phrase.size() )
     x->phrase[i] = new_phrase;
     else
     x->phrase.emplace_back( new_phrase );
     
     x->update = true;
     
     critical_exit(x->lock);
     */
    return false;
    
}

void olookup_process_msg(t_osc_msg_s *m, vector<t_osc_msg_u*>& vec)
{
    t_osc_atom_s *at = NULL;
    osc_message_s_getArg(m, 0, &at);
    if( at )
    {
        if(  osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
        {
            t_osc_bndl_s *sub = osc_atom_s_getBndl(at);
            auto itsub = osc_bndl_it_s_get(osc_bundle_s_getLen(sub), osc_bundle_s_getPtr(sub));
            while(osc_bndl_it_s_hasNext(itsub))
            {
                vec.emplace_back(osc_message_s_deserialize(osc_bndl_it_s_next(itsub)));
                
            }
            osc_bndl_it_s_destroy(itsub);
            
            osc_bundle_s_free(sub);
        }
        else
        {
            vec.emplace_back(osc_message_s_deserialize(m));
        }
        
        osc_mem_free(at);
    }
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
    
    
    oPointSet p;
    
    auto it = osc_bndl_it_s_get(len, ptr);
    while(osc_bndl_it_s_hasNext(it))
    {
        t_osc_msg_s *m = osc_bndl_it_s_next(it);
        const string addr = osc_message_s_getAddress(m);
        
        if( addr == "/x" )
        {
            olookup_process_msg(m, p._x);
            p.x_free = p._x.size();
        }
        else if (  addr == "/y" )
        {
            olookup_process_msg(m, p._y);
            p.y_free = p._y.size();
        }
        else if ( addr == "/c" || addr == "/curve" )
        {
            olookup_process_msg(m, p._c);
            p.c_free = p._c.size();
        }
        else if ( addr == "/dur" )
        {
            olookup_process_msg(m, p._dur);
            p.d_free = p._dur.size();

        }
        else
        {
            t_osc_atom_s *at = NULL;
            osc_message_s_getArg(m, 0, &at);
            if( at )
            {
                if(  osc_atom_s_getTypetag( at ) == OSC_BUNDLE_TYPETAG )
                    p._other.emplace_back( osc_message_s_deserialize(m) );
                
                osc_mem_free(at);
            }
        }
        
    }
    osc_bndl_it_s_destroy(it);

    p.o_free = p._other.size();
   
    bool parsed = olookup_parse_messages(x, p);
    
    if( !parsed && p._other.size() )
    {
        parsed = olookup_indexed_phrase(x, p);
        //if( !parsed ) // error?
    }
    else
    {
        // put some kind of error here
    }

    if( !parsed )
    {
        object_error((t_object *)x, "parse error -- found %ld x, %ld dur, %ld y", p._x.size(), p._dur.size(), p._y.size() );
        return;
    }
    
//    post("interp %i norm %i", x->interp, x->normal_x);
    
    omax_util_outletOSC(x->osc_outlet, len, ptr);
    
    p.release();
    
}



void olookup_perform64(t_olookup *x, t_object *dsp64, double **ins, long numins, double **outs, long numouts, long sampleframes, long flags, void *userparam)
{
    t_double *phase_in = ins[0];
    t_double *index_in = ins[1];

    t_double *interp_val_out = outs[0];
    t_double *rel_phase_out = outs[1];
    t_double *index_out = outs[2];
    t_double *delta_out = outs[3];
    t_double *npoints_out = outs[4];

    critical_enter(x->lock);
    vector<PhasePoints> x_phrase = x->phrase;
    critical_exit(x->lock);

    long max_phr_idx = x_phrase.size() - 1;
    
    t_int in_idx, max_idx0, max_idx1;
    double x0 = 0, x1 = 0, y0 = 0, y1 = 0, range = 0, fp = 0, gp = 0;
    
    double y_val = x->val;
    double in_phase = x->cur_phase, prev_inphase = x->cur_phase;
    double phase = x->rel_phase;
    t_int idx = x->index;
    t_int idx1 = x->index;
    
    double delta = x->delta_between_points;
    
    t_int phrase_index = x->phrase_index;
    
    t_int points_len = x->phrase_len;
    
    long n = sampleframes;
    
    while (n--)
    {
        if( max_phr_idx == -1 )
        {
            *interp_val_out++ = 0;
            *rel_phase_out++ = 0;
            *index_out++ = 0;
            *delta_out++ = 0;
            *npoints_out++ = 0;
        }
        else
        {

            in_phase = x->connected[0] ?      *phase_in++   : 0;
            in_idx = x->connected[1] ? (t_int)*index_in++   : 0;
            
            if( in_phase != prev_inphase || in_idx != phrase_index || x->update || x->phaseincr > 0  )
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
                
                if( points_len > 1 )
                {
                    max_idx1 = points_len - 1;
                    max_idx0 = points_len - 2;
                    
                    // later: remove some of these clamps
                    
                    // current segment start/end
                    x0 = phr.x[ CLAMP(idx, 0, max_idx0) ];
                    x1 = phr.x[ CLAMP(idx+1, 1, max_idx1) ];
                    
                    if( x->phaseincr == 1 )
                    {
                        in_phase = prev_inphase + in_phase;
                    }
                    
                    if( x->phasewrap == 1 )
                    {
                        in_phase = ( in_phase >= 0 ) ? fmod(in_phase, max_idx1) : fmod(in_phase + max_idx1, max_idx1);
                    }
                    
                    prev_inphase = in_phase;
                    
                    if( in_phase < x0 )
                    {
                        while( in_phase < x0 && idx-- > 0 )
                        {
                            x0 = phr.x[ CLAMP(idx, 0, max_idx0) ];
                        }
                        
                        if( in_phase < x0 && idx <= 0 )
                            x1 = x0;
                        else
                            x1 = phr.x[  CLAMP(idx+1, 1, max_idx1) ];
                        
                    }
                    else if( in_phase >= x1 )
                    {
                        while( in_phase >= x1 && idx++ < max_idx1 )
                        {
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
                    idx1 = CLAMP(idx+1, 1, max_idx1);
                    
                    if( !x->interp )
                    {
                        y_val = phr.y[idx];
                    }
                    else
                    {
                        // get y positions and interpolate a la curve~
                        y0 = phr.y[idx];
                        y1 = phr.y[idx1];
                        range = y1-y0;
                        
                        if( !phr.c.size() )
                            y_val = y0 + phase*range;
                        else
                        {
                            fp = phr.c[idx1];
                            if( fp == 0 )
                                y_val = y0 + phase*range;
                            else
                            {
                                // note: first half of equation is precalculated in the PhasePoints setter
                                gp = ( exp(fp * phase) - 1.) / ( exp(fp) - 1. ) ;
                                y_val = y0 + gp * range;
                            }
                        }
                        
                    }
                }
                else // one point case
                {
                    y_val = phr.y[0];
                    phase = 0;
                    idx = 0;
                    delta = 0;
                }
                
            }
            
            *interp_val_out++ = y_val;
            *rel_phase_out++ = phase;
            *index_out++ = idx;
            *delta_out++ = delta;
            *npoints_out++ = points_len;
            
        }
        
    }

    x->val = y_val;
    x->rel_phase = phase;
    x->index = idx;
    x->phrase_len = points_len;
    x->delta_between_points = delta;
    x->cur_phase = prev_inphase;
    
}

void olookup_dsp64(t_olookup *x, t_object *dsp64, short *count, double samplerate, long maxvectorsize, long flags)
{
    x->connected[0] = count[0];
    x->connected[1] = count[1];
    x->update = true;
    
    x->val = 0;
    x->rel_phase = 0;
    x->delta_between_points = 0;
    x->index = 0;
    x->phrase_len = 0;
    x->cur_phase = 0;
    
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
            case 2:
                sprintf(s, "(signal) step index");
                break;
            case 3:
                sprintf(s, "(signal) step delta (duration)");
                break;
            case 4:
                sprintf(s, "(signal) total steps in phrase");
                break;
            case 5:
                sprintf(s, "(FullPacket) OSC output");
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

        x->val = 0;
        x->rel_phase = 0;
        x->delta_between_points = 0;
        x->index = 0;
        x->phrase_len = 0;
        x->cur_phase = 0;

        x->interp = 1;
        x->phaseincr = 0;
        x->phasewrap = 0;
        
        x->connected[0] = 0;
        x->connected[1] = 0;
        
        attr_args_process(x, argc, argv);
        
        dsp_setup((t_pxobject *)x, 2);
        
        x->osc_outlet = outlet_new((t_object *)x, "FullPacket");
        outlet_new((t_object *)x, "signal");
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

    
    CLASS_ATTR_LONG(c, "interp", 0, t_olookup, interp);
    CLASS_ATTR_STYLE_LABEL(c, "interp", 0, "onoff", "interpolation");

    CLASS_ATTR_LONG(c, "phase_wrap", 0, t_olookup, phasewrap);
    CLASS_ATTR_STYLE_LABEL(c, "phase_wrap", 0, "onoff", "phase_wrap");
    
    CLASS_ATTR_LONG(c, "phase_incr", 0, t_olookup, phaseincr);
    CLASS_ATTR_STYLE_LABEL(c, "phase_incr", 0, "onoff", "phase_incr");

    
    class_dspinit(c);
    class_register(CLASS_BOX, c);
    olookup_class = c;
    
    post("%s by %s.", NAME, AUTHORS);
    post("Copyright (c) " COPYRIGHT_YEARS " Regents of the University of California & Unversity of Music and Theater Hamburg.  All rights reserved.");
}
END_USING_C_LINKAGE
