/*
 *  OSC in Node.js Examples
 *  
 *  EXAMPLE 02 : NODE PARSING OF INCOMING OSC BUNDLES 
 *
 *  This example allows simple computation to occur by providing data with correct addresses from Max.
 *  osc-min '.fromBuffer()' method returns a JSON representation of OSC bundles and messages. Here, the
 *  JSON representation is used to parse the bundle, perform simple operations (sum, average, multiply,
 *  and randomize) on the data. The results are appended to the bundle and sent back.
 *
 *  To run:
 *          % node ex02__node_parsing.js <port_to_listen_on> <port_to_send_to>
 *            (ports optional, default listening on localhost:8888, sends to localhost:9999)
 *
 *  Open "ex02.maxpat" to interact with the server.
 *
 *  CNMAT | May 12 2014
 *
 */

( function() {

    var osc, 
        dgram, 
        udp, 
        inport = 8888,
        outport = 9999;

/// load dependencies:
    osc = require('osc-min');   // osc-min for osc stuff
    dgram = require('dgram');   // dgram for user datagram protocol (udp)
    
/// create our udp "server":
    udp = dgram.createSocket('udp4');

/// generate a broadcast api bundle:
    var broadcast_api = osc.toBuffer({
        oscType  : 'bundle',
        elements : [ { oscType : 'message', 
                       address : '/add', 
                       args    : [ { type : "string", value : "numbers to sum, returns /sum"} ] },
                     { oscType : 'message', 
                       address : '/average', 
                       args    : [ { type : "string", value : "numbers to average, returns /mean"} ] },
                     { oscType : 'message', 
                       address : '/multiply', 
                       args    : [ { type : "string", value : "numbers to multiply, return /product"} ] },
                     { oscType : 'message', 
                       address : '/randomize', 
                       args    : [ { type : "string", value : "numbers to randomize, returns /random"} ] }
                   ]
    });

/// End-users may specify both inport & outport using command-line: node ex02__node_parsing.js <inport> <outport>
    if (process.argv[2] != null) {
        inport = process.argv[2];
    }
    if (process.argv[3] != null) {
        outport = process.argv[3];
    }

/// callback for message arrival (node will provide message (incoming binary packet data) and rinfo (return address))
    udp.on('message', function(message, rinfo) {
        var error;
        var packet;
        try {
            packet = osc.fromBuffer(message, true);     // '.fromBuffer()' method transforms incoming binary to JSON
        } catch(_error) {
            error = _error;
            return console.log("invalid osc packet : " + error);
        }
        if (packet.oscType == 'bundle') {
            if (packet.elements.length == 0) {
                console.log("------------------------------------------------");
                console.log("empty bundle received, sending out broadcast_api");
                console.log("------------------------------------------------\n");
                return udp.send(broadcast_api, 0, broadcast_api.length, outport, 'localhost');
            }
        }
        console.log(packet);
        parse_osc(packet);
    });

/// function responsible for dealing with incoming OSC:
    function parse_osc(packet) {
        console.log("------------------------------------------------");
        var results = null;
        var to_send;
        if (packet.oscType == 'bundle') {
            console.log("bundle received...");
            to_send = packet;
            var osc_contents = packet.elements;
            var num_messages = osc_contents.length;
            for (var i = 0; i < num_messages; ++i) {
                result = compute_requests(osc_contents[i]);
                if (result != null) {
                    to_send.elements.push(result);
                }
            }
        } else if (packet.oscType == 'message') {
            console.log("message received...");
            // convert message to a bundle:
            to_send = {
                oscType  : 'bundle',
                elements : [ packet ]
            };
            result = compute_requests(packet);
            if (result != null) {
                to_send.elements.push(result);
            }
        } else {
            console.log("MALFORMED PACKET - this should never ever print");
        }

        var buffer = osc.toBuffer(to_send);
        console.log("------------------------------------------------\n");
        return udp.send(buffer, 0, buffer.length, outport, 'localhost');
    }

/// functions to deal with OSC data:
    function compute_requests(osc_message)
    {
        var result = null;

        if (osc_message.address == '/add') {
            result = compute_sum(osc_message.args);
        } else if (osc_message.address == '/average') {
            result = compute_average(osc_message.args);
        } else if (osc_message.address == '/multiply') {
            result = compute_product(osc_message.args);
        } else if (osc_message.address == '/randomize') {
            result = randomize(osc_message.args);
        } else {
            console.log("not a familiar address");
        }
        return result;
    }

/// simple operations on osc data, end of code block marked with a line
    function compute_sum(osc_args) {
        console.log("computing sum");
        var num_atoms = osc_args.length;
        if (num_atoms == 0) return null;
        var running_sum = 0;
        for (var i = 0; i < num_atoms; ++i) {
            if ((osc_args[i].type == 'integer') || (osc_args[i].type == 'float') || (osc_args[i].type == 'double')) {
                running_sum += osc_args[i].value;
            }
        }
        return {
            oscType : 'message',
            address : '/sum',
            args    : { type : "double", value : running_sum }
        };
    }

    function compute_average(osc_args) {
        console.log("computing mean");
        var num_atoms = osc_args.length;
        if (num_atoms == 0) return null;
        var running_sum = 0;
        var numerical_atoms = 0;
        for (var i = 0; i < num_atoms; ++i) {
            if ((osc_args[i].type == 'integer') || (osc_args[i].type == 'float') || (osc_args[i].type == 'double')) {
                running_sum += osc_args[i].value;
                ++numerical_atoms;
            }
        }
        var result = running_sum / numerical_atoms;
        return {
            oscType : 'message',
            address : '/mean',
            args    : { type : "double", value : result }
        };
    }

    function compute_product(osc_args) {
        console.log("computing product");
        var num_atoms = osc_args.length;
        if (num_atoms == 0) return null;
        var result = null;
        for (var i = 0; i < num_atoms; ++i) {
            if ((osc_args[i].type == 'integer') || (osc_args[i].type == 'float') || (osc_args[i].type == 'double')) {
                result = (result == null) ? osc_args[i].value : (result * osc_args[i].value);
            }
        }
        return {
            oscType : 'message',
            address : '/product',
            args    : { type : "double", value : result }
        };
    }

    function randomize(osc_args) {
        console.log("generating random numbers");
        var random_args = [];
        var num_atoms = osc_args.length;
        if (num_atoms == 0) return null;
        for (var i = 0; i < num_atoms; ++i){
            if ((osc_args[i].type == 'integer') || (osc_args[i].type == 'float') || (osc_args[i].type == 'double')) {
                random_args.push({
                    type  : 'double',
                    value : (Math.random() * osc_args[i].value)
                });
            } else {
                random_args.push({
                    type  : osc_args[i].type,
                    value : osc_args[i].value
                });
            }
        }
        return {
            oscType : 'message',
            address : '/random',
            args    : random_args
        };
    }
/// ------------------------------------------------------------------------------------------------

/// server "listening" callback:
    udp.on('listening', function() {
        console.log("udp osc server listening on localhost:%d", inport);
        console.log("udp osc server will send on localhost:%d", outport);
    });
    udp.bind(inport); /// here is where we actually bind the inport to our udp server

}() );