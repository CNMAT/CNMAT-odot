# max2pd 
## a patch conversion utility by ilya rostovtsev

```
% python max2pd.py <input.maxpat> <output.pd>
```

Does:

* non-gui max objects
* messages
* o.messages (binhex)
* buttons
* toggles
* number boxes
* comments
* patch cords

> will likely fail miserably if you try to feed it a gui object of sorts, since json used for max patches does not standardize its objects and even if it did they probably do not exist in puredata

Does not (and most likely will not):

* translate between maxisms and pdisms
* deal with graphical objects except for ones found in pd-vanilla
* draw segmented patch cords and stuff


>>ilya y. rostovtsev / 20140621