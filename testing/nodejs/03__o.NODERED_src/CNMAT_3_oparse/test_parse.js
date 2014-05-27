( function(){
    var o = require('./build/Release/o_parse');

    var test_bundle = o.parse("/foo 10\n/bar 20");

    var udp = require('dgram').createSocket('udp4');
    udp.send(test_bundle, 0, test_bundle.length, 55555, 'localhost');
}() );