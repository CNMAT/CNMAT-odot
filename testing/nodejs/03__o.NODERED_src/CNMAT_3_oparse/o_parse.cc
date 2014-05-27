/* * * *
 * O.PARSE // Node-Red Module
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
#include "osc_bundle_u.h"

using namespace v8;

t_osc_bundle_s* bundle_parse( const char* bundle_string )
{
    t_osc_err error;
    t_osc_bundle_u* parsed_bundle = NULL;
    t_osc_bundle_s* result = NULL;
    char* buffer = NULL;
    long buffer_length = 0;

    error = osc_parser_parseString( buffer_length, const_cast< char* >( bundle_string ), &parsed_bundle );
    
    if ( error != OSC_ERR_NONE ) {
        osc_bundle_u_free( parsed_bundle );
        return NULL;
    }

    buffer_length = osc_bundle_u_getSerializedSize( parsed_bundle );
    error = osc_bundle_u_serialize( parsed_bundle, &buffer_length, &buffer );
    
    if ( error != OSC_ERR_NONE ) {
        osc_bundle_u_free( parsed_bundle );
        return NULL;
    }
    osc_bundle_u_free( parsed_bundle );
    result = osc_bundle_s_alloc( buffer_length, buffer );
    return result;
}

Handle< Value > Parse( const Arguments& args ) 
{
    HandleScope scope;

    if ( args.Length() == 0 ) {
        return scope.Close( Undefined() );
    }

    String::Utf8Value expr_string( args[ 0 ]->ToString() );
    std::string to_parse = std::string( *expr_string ) + "\n";
    t_osc_bundle_s* bundle = bundle_parse( to_parse.c_str() );
    if (bundle == NULL) {
        return scope.Close( Undefined() );
    }

    int length = osc_bundle_s_getLen( bundle );
    char* data = osc_bundle_s_getPtr( bundle );

    node::Buffer* slowBuffer = node::Buffer::New( length );
    memcpy(node::Buffer::Data( slowBuffer ), data, length );
    osc_bundle_s_free( bundle );
    data = NULL;

    // Make the actual Buffer:
    Local< Object > globalObj = Context::GetCurrent()->Global();
    Local< Function > bufferConstructor = Local<Function>::Cast( globalObj->Get( String::New( "Buffer" ) ) );
    Handle< Value > constructorArgs[3] = { slowBuffer->handle_, Integer::New( length ), Integer::New( 0 ) };
    Local< Object > actualBuffer = bufferConstructor->NewInstance( 3, constructorArgs );
    return scope.Close( actualBuffer );
}

void init( Handle< Object > exports )
{
    exports->Set( String::NewSymbol( "parse" ), FunctionTemplate::New( Parse )->GetFunction());
}

NODE_MODULE( o_parse, init )