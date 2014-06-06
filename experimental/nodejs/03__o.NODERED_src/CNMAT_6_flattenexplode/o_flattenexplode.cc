/* * * *
 * O.FLATTEN & O.EXPLODE // Node-Red Module
 *
 * Written by Ilya Rostovtsev, The Center for New Music and Audio Technologies,
 * University of California, Berkeley.  Copyright (c) 2014-ll, The Regents of
 * the University of California. 
 *
 * Wraps odot OpenSoundControl Library by John MacCallum, The Center for New 
 * Music and Audio Technologies, University of California, Berkeley.  
 * Copyright (c) 2014-ll, The Regents of the University of California. 
 *
 * Permission to use, copy, modify, distribute, and distribute modified versions
 * of this software and its documentation without fee and without a signed
 * licensing agreement, is hereby granted, provided that the above copyright
 * notice, this paragraph and the following two paragraphs appear in all copies,
 * modifications, and distributions.
 *
 * IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT,
 * SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING
 * OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS
 * BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
 * 
 * REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
 * THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
 * PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED
 * HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE
 * MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS.
 * * * */

#include <node.h>
#include <node_buffer.h>
#include <string>

#include "osc_parser.h"
#include "osc_bundle_s.h"
#include "osc_error.h"

using namespace v8;

Handle< Value > Flatten( const Arguments& args ) 
{
    HandleScope scope;

    if ( args.Length() == 0 ) {
        return scope.Close( Undefined() );
    }

    Local< Object > input = args[ 0 ]->ToObject();
    if ( ! node::Buffer::HasInstance( input ) ) {
        return scope.Close( Undefined() ); // argument is not a Buffer
    }
    char* input_data = node::Buffer::Data( input );
    size_t input_length = node::Buffer::Length( input );

    t_osc_err error = osc_error_bundleSanityCheck( ( int )input_length, input_data );

    if ( error == OSC_ERR_NONE ) {
        t_osc_bundle_s* input_bundle = osc_bundle_s_alloc( input_length, input_data );
        t_osc_bundle_s* output_bundle = NULL;
        osc_bundle_s_flatten( &output_bundle, input_bundle, 0, NULL, 1 );
        osc_bundle_s_free( input_bundle );

        long length = osc_bundle_s_getLen( output_bundle );
        char* data = osc_bundle_s_getPtr( output_bundle );

        node::Buffer* slowBuffer = node::Buffer::New( length );
        memcpy(node::Buffer::Data( slowBuffer ), data, length );
        osc_bundle_s_free( output_bundle );
        data = NULL;

        // Make the actual Buffer:
        Local< Object > globalObj = Context::GetCurrent()->Global();
        Local< Function > bufferConstructor = Local<Function>::Cast( globalObj->Get( String::New( "Buffer" ) ) );
        Handle< Value > constructorArgs[3] = { slowBuffer->handle_, Integer::New( length ), Integer::New( 0 ) };
        Local< Object > actualBuffer = bufferConstructor->NewInstance( 3, constructorArgs );
        return scope.Close( actualBuffer );
    }
    return scope.Close( Undefined() );
}


Handle< Value > Explode( const Arguments& args ) 
{
    HandleScope scope;

    if ( args.Length() == 0 ) {
        return scope.Close( Undefined() );
    }

    Local< Object > input = args[ 0 ]->ToObject();
    if ( ! node::Buffer::HasInstance( input ) ) {
        return scope.Close( Undefined() ); // argument is not a Buffer
    }
    char* input_data = node::Buffer::Data( input );
    size_t input_length = node::Buffer::Length( input );

    t_osc_err error = osc_error_bundleSanityCheck( ( int )input_length, input_data );

    if ( error == OSC_ERR_NONE ) {
        t_osc_bundle_s* input_bundle = osc_bundle_s_alloc( input_length, input_data );
        t_osc_bundle_s* output_bundle = NULL;
        osc_bundle_s_explode( &output_bundle, input_bundle, -1, NULL );
        osc_bundle_s_free( input_bundle );

        long length = osc_bundle_s_getLen( output_bundle );
        char* data = osc_bundle_s_getPtr( output_bundle );

        node::Buffer* slowBuffer = node::Buffer::New( length );
        memcpy(node::Buffer::Data( slowBuffer ), data, length );
        osc_bundle_s_free( output_bundle );
        data = NULL;

        // Make the actual Buffer:
        Local< Object > globalObj = Context::GetCurrent()->Global();
        Local< Function > bufferConstructor = Local<Function>::Cast( globalObj->Get( String::New( "Buffer" ) ) );
        Handle< Value > constructorArgs[3] = { slowBuffer->handle_, Integer::New( length ), Integer::New( 0 ) };
        Local< Object > actualBuffer = bufferConstructor->NewInstance( 3, constructorArgs );
        return scope.Close( actualBuffer );
    }
    return scope.Close( Undefined() );
}    

void init( Handle< Object > exports )
{
    exports->Set( String::NewSymbol( "flatten" ), FunctionTemplate::New( Flatten )->GetFunction());
    exports->Set( String::NewSymbol( "explode" ), FunctionTemplate::New( Explode )->GetFunction());
}

NODE_MODULE( o_flattenexplode, init )