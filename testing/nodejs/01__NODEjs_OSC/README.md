# o.node
## Examples & Thoughts

> `Node.js` is a platform built on Chrome's JavaScript runtime for easily building fast, scalable network applications. Node.js uses an event-driven, non-blocking I/O model that makes it lightweight and efficient, perfect for data-intensive real-time applications that run across distributed devices.  
--[nodejs.org](http://nodejs.org)  

<br /><br />

> Open Sound Control (OSC) is a protocol for communication among computers, sound synthesizers, and other multimedia devices that is optimized for modern networking technology. Bringing the benefits of modern networking technology to the world of electronic musical instruments, OSC's advantages include interoperability, accuracy, flexibility, and enhanced organization and documentation.  
--[opensoundcontrol.org](http://opensoundcontrol.org/introduction-osc)

### Motivation

To facilitate odot use in swarms of sensors and actuators, a need for a server-side implementation of odot is clear. Here, a "server" is defined as a node within the swarm, capable of interpreting, manipulating, and creating OSC bundles. odot servers may be responsible for wrapping OSC data from low-energy sensing devices that may not afford resources to wrap their data in OSC. Alternatively, OSC nodes may serve data from databases, interactive websites, or the open web.

### Examples

Thorough explanations omitted for now. JavaScript examples are well-documented, Max patches should be self-explanatory.

#### Example 1 : OSC Bundles from Node

To run:
```
% node ex01__bundles_from_node.js
```  
To observe the effects, open `ex01.maxpat` in Max.

#### Example 2 : Server Actions Triggered by OSC

To run:
```
% node ex02__bundles_from_node.js
```  
To interact with the server, open `ex02.maxpat` in Max, and follow instructions.

#### TODO : Interactive HTML -> OSC
#### TODO : Review NODE features, ascertain OSC potentials
#### TODO : NODE-Red Example(s)

### Thoughts

* Max `udpsend` object in particular is broken: the port reported by node's `rinfo` can not be configured within the object itself. The proposal for an empty bundle returning the server's OSC "API" (addresses understood by the server) is currently impossible without creating a low-level implementation of a UDP solution in Max;
* similarly, `udpreceive` fails to provide the sender data - for now, servers ought to include their identification in bundles they send, as per design guidelines for `o.io` objects (for multiple-servers-to-single-client support);
* `osc-min` library is incapable of generating OSC bundles containing sub-bundles (specifically, bundles occurring at a given address) - this is a relatively easy fix, as augmenting `osc-min` to enable such functionality is feasible;
* While Node comes with a number of OSC modules (available via `npm`), none allow for the execution of `o.expr` expressions. There are several possible solutions, should this functionality be desired:
    * since Node is built in C/C++ on top of Google's V8, CNMAT's `libo` OSC library may be wrapped to generate JavaScript bindings;
    * instead of the above, Node may forward its OSC bundles to a standalone application (e.g. a localhost running Max or puredata, or a localhost running a light-weight `o.expr` ).
    
### Future Work

`TODO: add future work`