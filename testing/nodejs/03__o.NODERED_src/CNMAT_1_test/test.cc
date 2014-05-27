#include <node.h>
#include <node_buffer.h>

#include "osc_parser.h"
#include "osc_bundle_s.h"
#include "osc_bundle_u.h"

using namespace v8;

t_osc_bundle_s* bundle_parse( char* bundle_string )
{
    t_osc_err error;
    t_osc_bundle_u* parsed_bundle = NULL;
    t_osc_bundle_s* result = NULL;
    char* buffer = NULL;
    long buffer_length = 0;

    error = osc_parser_parseString( buffer_length, bundle_string, &parsed_bundle );
    
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

Handle<Value> Test(const Arguments& args) 
{
    HandleScope scope;

    char* test_string = ( char* )"/foo 1\n/bar 2.\n";

    t_osc_bundle_s* test_bundle = bundle_parse( test_string );
    int length = osc_bundle_s_getLen(test_bundle);
    char* data = osc_bundle_s_getPtr(test_bundle);

    node::Buffer* slowBuffer = node::Buffer::New(length);
    memcpy(node::Buffer::Data(slowBuffer), data, length);
    osc_bundle_s_free(test_bundle);
    data = NULL;

    // Make the actual Buffer:
    Local<Object> globalObj = Context::GetCurrent()->Global();
    Local<Function> bufferConstructor = Local<Function>::Cast(globalObj->Get(String::New("Buffer")));
    Handle<Value> constructorArgs[3] = { slowBuffer->handle_, Integer::New(length), Integer::New(0) };
    Local<Object> actualBuffer = bufferConstructor->NewInstance(3, constructorArgs);
    return scope.Close(actualBuffer);
}

void init(Handle<Object> exports)
{
    exports->Set(String::NewSymbol("test"), FunctionTemplate::New(Test)->GetFunction());
}

NODE_MODULE(testLibo, init)