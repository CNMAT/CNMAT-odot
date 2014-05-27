/*
 *  OSC in Node.js Examples
 *  
 *  EXAMPLE 01 : NODE-GENERATED BUNDLES
 *
 *  This example introduces osc-min module, capable of creating serialized OSC bundles & messages from
 *  appropriate JSON representations. In ths example, vars test_message1 and test_message2 illustrate
 *  the JSON representation of OSC messages. The `create_bundle()` function illustrates creation of OSC
 *  bundles using JSON notation. Node's Buffer Object, used to store binary data is obtained by calling
 *  osc-min `.toBuffer()` function.
 *
 *  To run:
 *          % node ex01__bundles_from_node.js <port_to_send_to> 
 *            (port_to_send_to is optional, will send to localhost:7777 by default)
 *
 *
 *  CNMAT | May 12 2014
 *
 */

( function() {

/// dependencies:
    var osc = require('osc-min');
    var dgram = require('dgram');

/// udp server variables:
    var udp = dgram.createSocket('udp4');
    var port = 7777;

/// local server variables:
    var counter = 0;
    var test_message1 = {
                            oscType : "message",
                            address : "/one",
                            args    : [ { type : "integer", value : 0 }, 2.5, "string", { type : "integer", value : 1 } ]
                        };
    var test_message2 = {
                            oscType : "message",
                            address : "/two",
                            args    : ["foo", "bar"]
                        };

/// end-users may specify a port using command-line: node ex01__bundles_from_node.js <port_number>
    if (process.argv[2] != null) {
        port = parseInt(process.argv[2]);
    }

/// create_message wraps a javascript variable 'counter' into a JSON representation of an OSC message with address '/counter'
    function create_message() {
        return {
            oscType : 'message',
            address : '/counter',
            args    : { type : "integer", value : counter }
        };
    };

/// create_bundle combines test_message1, counter, and test_message2 (all defined above) into a JSON representation of an OSC bundle:
    function create_bundle() {
        return {
            oscType  : 'bundle',
            elements : [
                test_message1,
                create_message(),
                test_message2
            ] 
        };
    };

/// callback method for sending out bundles:
    var sendBundle = function() {
        var buf;                                                // will store a serialized OSC bundle
        ++counter;                                              // increment counter
        buf = osc.toBuffer(create_bundle());                    // `.toBuffer()` returns a Node Buffer (for binary data)
        return udp.send(buf, 0, buf.length, port, "localhost"); // sends the whole buffer (0 to buf.length) to localhost:port
    };

/// scheduling repetative execution of `sendBundle` callback every second:
    setInterval(sendBundle, 1000);

/// provides a hint upon startup:
    console.log("sending test bundles to localhost:" + port);

}() );