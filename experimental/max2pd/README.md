# max2pd 
## a patch conversion utility by ilya rostovtsev

### USAGE
```
% python max2pd.py <input.maxpat> <output.pd>
```

Won't work with Python 3.1 and above, I'll look into a modern way of encoding binhex for pd way of storing o.messages. Tested with python `v2.7.2`.

### DOES

* non-gui max objects
* messages
* o.messages (binhex)
* buttons
* toggles
* number boxes
* comments
* patch cords
* subpatchers

**will likely fail miserably if you try to feed it a gui object of sorts, since json used for max patches does not standardize its objects and even if it did they probably do not exist in puredata**

### DOES NOT (and most likely will not):

* translate between maxisms and pdisms
* deal with graphical objects except for ones found in pd-vanilla
* draw segmented patch cords



> ilya y. rostovtsev / 20140621