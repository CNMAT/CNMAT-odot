/* * * *
 * OSC2JSON // Node-Red Module
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

var RED = require(process.env.NODE_RED_HOME + "/red/red");
var osc = require('osc-min');
console.log("CNMAT jsOSC module loaded.");

function Osc2JsonNode(n) {
  RED.nodes.createNode(this, n);
  this.topic = n.topic;
  var node = this;

  this.on('input', function(msg) {
    try {
      var result = {};
      result.topic = this.topic;
      result.payload = osc.fromBuffer(msg.payload, true);
      this.send(result);
    } catch(e) {
      console.log("Can not parse bundle: " + e);
    }
  });
}
RED.nodes.registerType('osc2json', Osc2JsonNode);

function Json2OscNode(n) {
  RED.nodes.createNode(this, n);
  this.topic = n.topic;

  this.on('input', function(msg) {
    try {
      var result = {};
      result.topic = this.topic;
      result.payload = osc.toBuffer(msg.payload, true);
      this.send(result);
    } catch(e) {
      console.log("Can not convert JSON to bundle: " + e);
    }
  });

}
RED.nodes.registerType('json2osc', Json2OscNode);