( function(){
    var oscBuf = require('./build/Release/testLibo');
    var test_bundle = oscBuf.test();

    var udp = require('dgram').createSocket('udp4');
    udp.send(test_bundle, 0, test_bundle.length, 55555, 'localhost');
}() );