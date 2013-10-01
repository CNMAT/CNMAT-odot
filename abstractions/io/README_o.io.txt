README_o.io

ODOT io module design style  guide

Document or arrange for device to be in correct state
ramify messages that are 
	broadly useful
	relatively cheap to compute
	self explanatory (e.g. /position/inches)
 Name your patch/external  o.io.*.%, with * representing the product/project name of the physical interface
2. Use tabs for common use cases in the o.io.*  help file
3. Use labels from the physical interface where possible in the OSC namespace
Ramify the name space to include the "familiar/intuitive/natural" sometimes this means stepping out of the obvious
e.g. using the chess board naming
Namespaces should unambiguously name things

Multiple instances of help patches of your o.io module should not induce bugs, e.g., the first one loaded should stay working
Replace vendor supplied OSC translation applications to avoid latency
The help patch should try to find the first device available to the system
Minimize state
Minimize hidden state
Represent concurrency or logical groupings with  OSC bundles e.g., if there is an 'x' and a 'y', the parameters should be delivered as a pair i.e. "xy 0.5 0.5".  

Minimize Max specific features such as JavaScript or Java
Create a direct manipulation GUI simulation of the device, to serve if the actual interface isn't at hand
Said UI should talk to the next UI seamlessly, and update its control view (see 'model view controller')
Multiple devices should be supported even when identifying a particular one is made complicated by the protocol (e.g. HID)

