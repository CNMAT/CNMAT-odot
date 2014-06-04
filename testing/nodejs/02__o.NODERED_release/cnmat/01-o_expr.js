/* * * *
 * O.EXPR // Node-Red Module
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
var o = require('o_expr');

function OExprNode(n) {
    RED.nodes.createNode(this, n);

    var payload_expr = false;
    if (n.func !== "") {
        o.expr.set(n.func);
    } else {
        payload_expr = true;
    }
    
    this.on('input', function(msg) {
        var result = {};
        var expr_output;
        if (payload_expr) {
            if (msg.payload.expr) {
                o.expr.set(msg.payload.expr);
                expr_output = o.expr.eval(msg.payload.bundle);
            } else {
                console.log("No expression found in payload;\nYou may input expression in o_expr module directly.");
            }
        } else {
            expr_output = o.expr.eval(msg.payload);
        }
        if (expr_output) {
            result.payload = expr_output;
            return this.send(result);
        } 
        console.log("WARNING: expr result is NULL...");
        return this.send(null);
    });
}
RED.nodes.registerType('o_expr', OExprNode);