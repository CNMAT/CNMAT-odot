var o = require('./build/Release/o_flattenexplode');
var udp = require('dgram').createSocket('udp4');

udp.bind(56789);

// test flatten:
udp.on('message', function(msg, rinfo){
    console.log(msg);
    var test_flat = o.explode(msg);
    console.log(msg);
    udp.send(test_flat, 0, test_flat.length, 56788, 'localhost');
});
