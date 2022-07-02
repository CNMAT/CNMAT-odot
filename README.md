# CNMAT-odot

Odot is a set of externals and language developed by Adrian Freed and John MacCallum, with support from Andy Schmeder, Ilya Rostovtsev, Rama Gottfried, Jeff Lubow, and many others at the Center for New Music and Audio Technologies (CNMAT) between 2007 and 2016. 

As of 2022, odot is developed and maintained by John MacCallum with support from CNMAT, and HfMT Hamburg.

Odot emerged out of a need for an aggregate data type that could be operated upon as it is passed around over patch cords.  This aggregation describes a synthesis of control-rate computation in the past, present, and future.  Odot requires a host environment (Max/MSP), within which a shim layer (libomax) can operate as middleware between libo and the host itself.  The libo library – the current manifestation of Open Sound Control – is utilized at the core, whereby all lower-level OSC calls are made.

The odot system augments dataflow languages like Max/MSP, PD and Node Red with the following:

1. The odot bundle aggregate data type, inspired by and currently encoded with OSC
2. An expression language supporting a diverse collection of ancient and modern programming paradigms including:
functional, declarative, imperative, dynamic, delegation-based objects, dynamic class-based objects, aspect-oriented
3. Timing and scheduling primitives to support sequencing and synchronization aspects of media and network programming.

# Installation

### Max/MSP

Odot is now available through the Max Package Manager as well as the [releases](https://github.com/CNMAT/CNMAT-odot/releases) page.

### Pd

Prebuilt binaries for Pd are available for a number of platforms on the [releases](https://github.com/CNMAT/CNMAT-odot/releases) page,
including Mac OS X, Windows, Arch Linux, and Raspberry Pi OS.

### OM# 

An implementation of odot for OM# is available here: [https://github.com/cac-t-u-s/o.OM/](https://github.com/cac-t-u-s/o.OM/).

### Building

Instructions for building can be found in the `src` folder. You will also need to build 
[libo](https://github.com/CNMAT/libo) and [libomax](https://github.com/CNMAT/libomax)--see those repos for instructions.

# Bugs and Issues

Please file issues on the [GitHub Issue Tracker](https://github.com/CNMAT/CNMAT-odot/issues).

# Discussion

Join us on Discord! https://discord.gg/EqHE8TG

# History

* Adrian Freed designed and developed the first iteration of odot as a series of patches and abstractions in order to broaden Max/MSP's patchchords from thin cables into trunk lines able to move heterogeneous bundles of data without tedious wiring. It was built on Matt Wright's OSC implementation in Max/MSP.
* John MacCallum ported the bulk of these patches to C and contributed the expression language.
* Andy Schmeder developed the deadline scheduling and time computation.
* Rama Gottfried did the first port to Pure Data (PD).
* Ilya Rostovtsev did the first port to Node Red.
* Adrian Freed, John MacCallum, and Ilya Rostovtsev stabilized the design and released odot 1.0 in 2014.

Integration of OSC encoding in a dataflow languages was pioneered by Amanda Chaudhary in the OSW language.
The first release of odot integrates numerous user contributions from Dave Defilippo, Jeff Lubow, Derek Razo, Jules Espiau, and Yotam Mann.
