CNMAT-odot    pre-release
==========
The odot system augments dataflow languages like Max/MSP, PD and Node Red with the following:

1. The odot bundle aggregate data type, inspired by and currently encoded with OSC
2. An expression language supporting a diverse collection of ancient and modern programming paradigms including:
functional, declarative, imperative, dynamic, delegation-based objects, dynamic class-based objects, aspect-oriented
3. Timing and scheduling primitives to support sequencing and synchronization aspects of media and network programming.

Benefits
====
For users of Max/MSP or PD, the most obvious benefit is the ability to label data with human readable text.


History
===
* odot was first implemented by Adrian Freed to broaden Max/MSP's patchchords from thin cables into trunk lines able to move heterogeneous bundles of data without tedious wiring. It was built on Matt Wright's OSC implementation in Max/MSP
* John MacCallum contributed the expression language
* Andy Schmeder developed the deadline scheduling and time computation
* Rama Gottfried did the first port to Pure Data (PD)
* Ilya Rostovtsev did the first port to Node Red

Integration of OSC encoding in a dataflow languages was pioneered by Amanda Chaudhary in the OSW language.
The first release of odot integrates numerous user contributions from Dave Defilippo, Jeff Lubow, Derek Razo, and Yotam Mann.
