README_o.io

ODOT io module creation guidelines:

1. name your patch o.io.*.maxpat, with * representing the name of the physical interface used
2. make sure to include an o.io.*.maxhelp file
3. any names printed on the physical interface should be used as the OSC namespace
4. there should be no bugs introduced if you open 2 or more help patches of your o.io module
5. ideally, the help patch should find the first device available to the system
6. minimize hidden state
7. if possible, no JavaScript 
8. create a UI for the interface, in case the actual interface isn't at hand.  this should function as a simulation
9. said UI should talk to the next UI seamlessly, and update its control view (see 'model view controller')
10. multiple devices should be supported
11. there should be a focus for atomicity in parameter delivery, e.g., if there is an 'x' and a 'y', the parameters should be delivered as a pair i.e. "xy 0.5 0.5".  

