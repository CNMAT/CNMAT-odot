CNMAT-odot
==========
ODOT is a set of externals and language developed by Adrian Freed and John MacCallum, with support from Andy Schmeder, Ilya Rostovtsev, Rama Gottfried, Jeff Lubow, and many others at the Center for New Music and Audio Technologies (CNMAT) between 2007 and 2016.

ODOT emerged out of a need for an aggregate data type that could be operated upon as it is passed around over patch cords.  This aggregation describes a synthesis of control-rate computation in the past, present, and future.  ODOT requires a host environment (Max/MSP), within which a shim layer (libomax) can operate as middleware between libo and the host itself.  The libo library – the current manifestation of Open Sound Control – is utilized at the core, whereby all lower-level OSC calls are made.

The odot system augments dataflow languages like Max/MSP, PD and Node Red with the following:

1. The odot bundle aggregate data type, inspired by and currently encoded with OSC
2. An expression language supporting a diverse collection of ancient and modern programming paradigms including:
functional, declarative, imperative, dynamic, delegation-based objects, dynamic class-based objects, aspect-oriented
3. Timing and scheduling primitives to support sequencing and synchronization aspects of media and network programming.

Benefits
====
For users of Max/MSP or PD, the most obvious benefit is the ability to label data with human readable text.

ODOT extends OSC in the following ways:
- allows for a simultaneity in the ability to process multiple data streams within a single bundle context
- offers novel ways for the Max programmer to enforce order of operations
- includes an expression language, allowing users to evaluate expressions, calculate recursively, dynamically generate addresses, and utilize higher-order functions.  It includes a rich library of functions and a syntax loosely resembling LISP.
- employs a name/data schema in which values are bound to addresses.  This allows for variables to be referenced by name (labeled data)
- includes a bespoke scheduling system, both for control and audio rate threads
- allows for introspection and unification so that OSC can be operated on (amongst the objects in the library)
- tools for manipulating, accumulating, selecting, and formatting sets of addresses
- conditional flow
- hierarchical data formatting
- dictionary support 


History
===
* odot was first implemented by Adrian Freed to broaden Max/MSP's patchchords from thin cables into trunk lines able to move heterogeneous bundles of data without tedious wiring. It was built on Matt Wright's OSC implementation in Max/MSP
* John MacCallum contributed the expression language
* Andy Schmeder developed the deadline scheduling and time computation
* Rama Gottfried did the first port to Pure Data (PD)
* Ilya Rostovtsev did the first port to Node Red

Integration of OSC encoding in a dataflow languages was pioneered by Amanda Chaudhary in the OSW language.
The first release of odot integrates numerous user contributions from Dave Defilippo, Jeff Lubow, Derek Razo, and Yotam Mann.
