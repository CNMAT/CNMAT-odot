/* * * *
 * O.FLATTEN & O.EXPLODE // Node-Red Module
 *
 * Written by Ilya Rostovtsev The Center for New Music and Audio Technologies,
 * University of California, Berkeley.  Copyright (c) 2014-ll, The Regents of
 * the University of California (Regents). 
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

var RED = require(process.env.NODE_RED_HOME + '/red/red');
var o = require('o_flattenexplode');

/* FLATTEN NODE */
function OFlattenNode(n) {
    RED.nodes.createNode(this, n);
    this.name = n.name;
    
    this.on('input', function(msg) {
        var parser_output = o.flatten(msg.payload);
        if (parser_output) {
            this.send({ payload : parser_output });
        }
        return this.send(null);
    });
}
RED.nodes.registerType('o_flatten', OFlattenNode);


/* EXPLODE NODE */
function OExplodeNode(n) {
    RED.nodes.createNode(this, n);
    this.name = n.name;
    
    this.on('input', function(msg) {
        var parser_output = o.explode(msg.payload);
        if (parser_output) {
            this.send({ payload : parser_output });
        }
        return this.send(null);
    });
}
RED.nodes.registerType('o_explode', OExplodeNode);