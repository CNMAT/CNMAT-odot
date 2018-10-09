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
//#include <algorithm>


using namespace std;

struct PhasePoints
{
    vector< double > x, y, c;
    
    long len = 0;
    
    void reserve( char *addr, long len );
    void append( char *addr, double val );
    
    void parseMsg(char *addr_selector, t_osc_msg_u *m, t_object *context);
    void parseDurMsg(t_osc_msg_u *m, t_object *context);

    bool init();
    
    void sortByX();
    void sortAndTie();

    vector<size_t> getSortedIDX();
    
    inline bool valid(){ return len > 0; }
    
    void print();
    
};


void PhasePoints::reserve( char *addr, long _len )
{
    if( !strcmp(addr, "/y") )
    {
        y.reserve( _len );
    }
    else if( !strcmp(addr, "/x") )
    {
        x.reserve( _len );
    }
    else if( !strcmp(addr, "/c") || !strcmp(addr, "/curve"))
    {
        c.reserve( _len );
    }
}

inline int signof(double x) {
    return (x > 0) - (x < 0);
}

void PhasePoints::append( char *addr, double val )
{
    //post("%s %f", addr, val);
    if( !strcmp(addr, "/x") )
    {
        x.emplace_back( val );
    }
    else if( !strcmp(addr, "/y") )
    {
        y.emplace_back( val );
    }
    else if( !strcmp(addr, "/c")  || !strcmp(addr, "/curve") )
    {
        double curve = CLAMP( (fabs(val) > 0.001) * val, -1., 1. ); // squash denormals
        double hp = signof(curve) * pow( (fabs(curve) + ( signof(curve) * 1e-20)) * 1.2, 0.41) * 0.91; // first half of max's weird curve algorithm
        c.emplace_back( hp / (1. - fabs(hp)) );
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


vector<size_t> PhasePoints::getSortedIDX()
{
    // initialize original index locations
    vector<size_t> idx(x.size());
    iota(idx.begin(), idx.end(), 0);
    
    // sort indexes based on comparing values in v
    sort( idx.begin(), idx.end(),
         [&](size_t i1, size_t i2) { return x[i1] < x[i2]; } );
    
    return idx;
    
}

void PhasePoints::sortByX()
{
    auto idx = getSortedIDX();
    
    apply_permutation_in_place(x, idx);
    apply_permutation_in_place(y, idx);
    
    if( c.size() )
    {
        apply_permutation_in_place(c, idx);
    }
    
}

bool PhasePoints::init()
{
    if( x.size() > 0 && x.size() == y.size() )
    {
        sortByX();
       
        len = x.size();
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


void PhasePoints::parseDurMsg(t_osc_msg_u *m, t_object *context)
{
    x.reserve( osc_message_u_getArgCount(m) + 1 );

    x.emplace_back( 0 );
    
    if( c.size() )
        c.emplace_back( 0 );

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
                x.emplace_back( x.back() + (double)osc_atom_u_getInt32(a) );
            }
                break;
            case 'f':
            case 'd':
            {
                x.emplace_back( x.back() + osc_atom_u_getDouble(a) );
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
 
    // add y value for end point in duration mode
    y.emplace_back(y.back());
    
}


void PhasePoints::print()
{
    printf("x(%ld): ", x.size() );
    for(int i = 0; i < x.size(); i++ )
    {
        printf("%f ", x[i] );
    }
    printf("\n");
    
    printf("y(%ld): ", y.size() );
    for(int i = 0; i < y.size(); i++ )
    {
        printf("%f ", y[i] );
    }
    printf("\n");
}


