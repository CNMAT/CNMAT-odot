# Node-Red CNMAT Objects
## odot for Node-Red

### Installation

Copy the `CNMAT` folder to:
`<path_to>/node-red/nodes/`

Copy the ***contents*** of the `node-modules` folder to
`<path_to>/node-red/node-modules`

#### Dependencies:

For `json2osc` modules, you will need `osc-min`, easiest with `npm`:
`% npm install osc-min`

Check for missing dependencies:
`% node red.js -v`

### Existing Objects

* ***`o_expr`*** (odot expression language support, complete with a code-box)
* ***`o.parse`*** (parser of text-based OSC bundles, similar to `o.message` in Max)
* ***`o.flatten`***
* ***`o.explode`***
* ***`json2osc`*** (serializing `osc-min` JSON bundles)
* ***`osc2json`*** (deserializing OSC bundles into `osc-min` JSON)

### Currently Being Tested

* ***`o.iterate`***
* ***`o.downcast`***
* ***`o.pack`***
* ***`o.route`***
