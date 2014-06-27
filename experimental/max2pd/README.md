# max2pd 
## a patch conversion utility by ilya rostovtsev

### USAGE
```
% python max2pd.py <input.maxpat> <output.pd>
```
Tested with python `v2.7.5` and `v3.3.5`

### DOES

* non-gui max objects
* messages
* o.messages (binhex) + added support for empty bundles
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
