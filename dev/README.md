### Note about the dev folder

The contents of the dev folder should be considered "unstable", 
but not in the sense that they may have bugs or crash. 
In fact, most of the objects and abstractions in the dev folder are 
well-tested and integral to a number of projects.

The instability is with respect to the design of the objects themselves, 
i.e. the configuration of inlets and outlets, what they take as input, 
and what they produce as output. Their inclusion in this folder as part 
of an odot release means that they are understood to be generally useful 
and necessary, but their design has not yet stabilized.

The ultimate goal for each of these objects is either transition into the 
main externals folder once they have stabilized, or deprecation in the 
case that other additions have made them no longer necessary.

### Installation

To use these objects:
	you must manually add the dev folder to your search path. While this is 
	annoying, the act of doing it represents tacit approval to use these 
	with the knowledge that they may change in the future.
