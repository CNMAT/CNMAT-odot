#pragma once

#include "ext.h"
#include "ext_obex.h"
#include "ext_critical.h"
#include "z_dsp.h"

#include "osc.h"
#include "osc_mem.h"
#include "osc_match.h"

#include "osc_bundle_s.h"
#include "osc_bundle_iterator_s.h"
#include "osc_message_s.h"
#include "osc_message_iterator_s.h"

#include "osc_bundle_u.h"
#include "osc_bundle_iterator_u.h"
#include "osc_message_u.h"
#include "osc_message_iterator_u.h"

#include "omax_util.h"
#include "omax_dict.h"
#include "osc_rset.h"
#include "osc_query.h"

#include "o.h"

#include <string>
#include <vector>
#include <numeric>
#include <iostream>

using namespace std;

struct OdotPtrDeleter
{
    void operator()(t_osc_msg_s*  ptr)
    {
        if (ptr)
            osc_message_s_deepFree(ptr);
    }
};

using OdotMessagePtr = std::unique_ptr<t_osc_msg_s, OdotPtrDeleter>;

static inline OdotMessagePtr newOdotMessagePtr( t_osc_msg_s * src ) {
    return OdotMessagePtr( src, OdotPtrDeleter() );
}


struct PhasePoints
{
    PhasePoints(){}
    PhasePoints(t_osc_msg_u* _x, t_osc_msg_u* _y, t_osc_msg_u* _c, t_osc_msg_u* _dur, t_object *context ) {
        set(_x, _y, _c, _dur, context);
    }
    
    
    vector< double > x, y, c, dur;
    long len = 0;
    
    void reserve( char *addr, long len );
    void append( char *addr, double val );
    
    void parseMsg(char *addr_selector, t_osc_msg_u *m, t_object *context);
    
    bool init( bool normalize_x );
    
    void sortX();
    void do_normalize();

    void generateXfromY();
    
    inline bool valid(){ return len > 0; }
    
    void print();
    
    bool set(t_osc_msg_u* _x, t_osc_msg_u* _y, t_osc_msg_u* _c, t_osc_msg_u* _dur, t_object *context );
    
};

bool PhasePoints::set(t_osc_msg_u* _x, t_osc_msg_u* _y, t_osc_msg_u* _c, t_osc_msg_u* _dur, t_object *context )
{

    if(!_y)
        return false;
    
    parseMsg((char *)"/y", _y, context);
    
    if( !_x )
    {
        // check for duration, otherwise we need to generate x indexes
        if( _dur )
            parseMsg((char *)"/dur", _dur, context);
        else
            generateXfromY();
        
    }
    else
    {
        parseMsg((char *)"/x", _x, context);
    }
    
    if( _c)
       parseMsg((char *)"/c", _c, context);
    
    return valid();
}



void PhasePoints::reserve( char *addr, long len )
{
    if( !strcmp(addr, "/x") )
    {
        x.reserve( len );
    }
}

void PhasePoints::append( char *addr, double val )
{
    if( !strcmp(addr, "/x") )
    {
        x.emplace_back( val );
    }
    else if( !strcmp(addr, "/y") )
    {
        y.emplace_back( val );
    }
    else if( !strcmp(addr, "/c") )
    {
        c.emplace_back( val );
    }
    else if( !strcmp(addr, "/dur") )
    {
        dur.emplace_back( val );
    }
}

template <typename T>
void apply_permutation_in_place(std::vector<T>& vec,
                                const std::vector<std::size_t>& p)
{
    std::vector<bool> done(vec.size());
    for (std::size_t i = 0; i < vec.size(); ++i)
    {
        if (done[i])
        {
            continue;
        }
        done[i] = true;
        std::size_t prev_j = i;
        std::size_t j = p[i];
        while (i != j)
        {
            std::swap(vec[prev_j], vec[j]);
            done[j] = true;
            prev_j = j;
            j = p[j];
        }
    }
}

void PhasePoints::sortX()
{
    // initialize original index locations
    vector<size_t> idx(x.size());
    iota(idx.begin(), idx.end(), 0);
    
    // sort indexes based on comparing values in v
    sort(idx.begin(), idx.end(),
         [&](size_t i1, size_t i2) {return x[i1] < x[i2];});
    
    apply_permutation_in_place(x, idx);
    apply_permutation_in_place(y, idx);
}

void PhasePoints::do_normalize()
{
    double min = x[0];
    double max = x.back();
    
    for(int i=0; i < len; i++ )
    {
        x[i] = (x[i] - min) / max;
    }
}


bool PhasePoints::init( bool normalize_x )
{
    
//    std::cout << x.size() << " " << y.size() << std::endl;
    
    if( x.size() > 0 && x.size() == y.size() )
    {
        len = x.size();
        sortX();
        
        if( normalize_x )
        {
            do_normalize();
        }
        
        return true;
        
    }
    
    return false;
}


void PhasePoints::parseMsg(char *addr_selector, t_osc_msg_u *m, t_object *context)
{
//    post("parsing %s", addr_selector);
    
    reserve( addr_selector, osc_message_u_getArgCount(m) );
    
    t_osc_msg_it_u *it = osc_msg_it_u_get(m);
    while(osc_msg_it_u_hasNext(it)){
        t_osc_atom_u *a = osc_msg_it_u_next(it);
        switch(osc_atom_u_getTypetag(a)){
            case 'i':
            case 'I':
            case 'h':
            case 'H':
            case 'u':
            case 'U':
            case 'T':
            case 'F':
            case 'N':
            {
                t_int32 ii = osc_atom_u_getInt32(a);
                append( addr_selector, (double)ii );
                
   //                 post("%s %i", addr_selector, ii);
            }
                break;
            case 'f':
            case 'd':
            {
                double dd = osc_atom_u_getDouble(a);
                append( addr_selector, dd );
    //                post("%s %f", addr_selector, dd);
            }
                break;
            case 's':
                object_error(context, "found unusable type for point");
                break;
            case OSC_BUNDLE_TYPETAG:
                object_error(context, "no subbundle support yet");
                break;
            case OSC_TIMETAG_TYPETAG:
                object_error(context, "no timetag support yet");
                break;
            default:
                error("unknown OSC type %c (%d)\n", osc_atom_u_getTypetag(a), osc_atom_u_getTypetag(a));
        }
    }
    osc_msg_it_u_destroy(it);
    
}

void PhasePoints::generateXfromY()
{
    for( int i = 0; i < y.size(); i++ )
    {
        x.emplace_back(i);
    }
}

void PhasePoints::print()
{
    post("x(%i): ", x.size() );
    for(int i = 0; i < x.size(); i++ )
    {
        post("%f ", x[i] );
    }
//    post("\n");
    
    post("y(%i): ", y.size() );
    for(int i = 0; i < y.size(); i++ )
    {
        post("%f ", y[i] );
    }
//    post("\n");
}


