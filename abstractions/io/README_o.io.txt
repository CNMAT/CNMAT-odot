README_o.io

ODOT io module design style  guide

Document or arrange for device to be in "correct"  state, i.e., most features or most useful

Ramify messages that are (? gestural languages "general"):
	broadly useful (legibly)
	relatively cheap to compute (compute in a C external than in o.)
		mice/joystick xyz -> rotation direction, scaler speed, 
	self explanatory (e.g. /position/inches)
Name your patch/external  o.io.*.%, with * representing the product/project name of the physical interface, leap motion?
[ doc (showme) -> all abstractions  ]
<Use Max 6 tabs for common use cases in the o.io.*  help->demo file (PD?)>
/g:a-h,1:1-8,knight < {nil, knight, rook…) ,white {white, black}
o.route implements matching semantics: OSC
o.tagmatch knight,white  (freetagging)
o.tagmatch piece:knight,player:white  (structured)
o.if /player==white && /piece==knight
typed and untyped variables
	   (Wittgenstein PI: by use not by predefined conventions,
		 Weber disenchantment of the world
		 Marie Ann Smart: Opera late 19th century mute leads)
poetry > prose (clear) 

Use labels from the physical interface where possible in the OSC namespace
Expand/Ramify the name space to include the consistent "familiar/intuitive/natural" sometimes this means stepping out of the obvious
	e.g. using the chess board naming
Namespaces should unambiguously name things
Multiple instances of help patches of your o.io module should not induce bugs:
	 e.g., the first one loaded should stay working
Replace vendor supplied OSC translation applications to avoid latency
The help patch should try to find the first device available to the system
Minimize state
Minimize hidden state
Represent concurrency or logical groupings with OSC bundles e.g., if there is an 'x' and a 'y', the parameters should be delivered as a pair i.e. "xy 0.5 0.5".  
Minimize Max specific features such as JavaScript or Java
Create a direct manipulation GUI simulation of the device, to serve if the actual interface isn't at hand
Said UI should talk to the next UI seamlessly, and update its control view (see 'model view controller')
Multiple devices should be supported even when identifying a particular one is made complicated by the protocol (e.g. HID)

