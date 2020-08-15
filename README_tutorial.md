CNMAT-odot    pre-release of v1.3 - includes full tutorial
==========
Thank you for beta testing our newest release of the ODOT package.
Please place the folder that this readme resides within into your packages directory.

On Windows:
	Win `C:\Users\<your username>\Documents\Max 8\Packages`

On Mac:
	Mac `~/Documents/Max\ 8/Packages/`

We would appreciate you testing the tutorial release by doing the following:

1. install package in the location described above
1. open Max
1. add separate File Preferences in Max for `<Packages>/CNMAT-odot/dev` and `<Packages>/CNMAT-odot/deprecated`
1. navigate to `Extras -> odot -> o.tutorial`
1. peruse the tutorial for content and evaluation of efficacy
1. please report any errors in language, grammar, spelling
1. please report any thoughts on the development of the tutorial to cover important topics (see caveat below)
1. check out the following new/updated files in the package:  
	- `Extras -> odot -> o.expr.overview`
	- `Extras -> odot -> o.overview`
	- `Extras -> odot -> o.glossary`
	- `Extras -> odot -> compatability`

...we've tried to include some helpful directions and support in this release to assist the user in the inclusion of `/dev` and `/deprecated` materials.  You'll see this reflected in the `o.overview`.

CAVEAT
===

* We are working hard to complete this tutorial.  Currently, it trails off at the end of "08_expr3", which has a heading of "Expressions 3: apply(), map(), and lambda()".  

We anticipate finishing this page by including and/or removing the following:
- add: progn() with if statements
- remove: lreduce() and rreduce()

In subsequent tutorials, we proceed out of 08 to 09 in the following manner:

- 09_expr4 : We'll be covering map() as it relates to processing larger data sets, dynamic addresses, generation of data, etc.  Examples will include using one data set for another.  There will be a more fleshed out example (already built if you'd like to see it; ping jlubow@berkeley.edu) that integrates all of the ideas we've come across in the tutorial so far, and includes a code walkthrough.  We may also go into more detail regarding the creation of your own user functions and how that benefits the programmer as a best practice.  

Tutorial continuation:

- tut10 : usage of subbundles in expressions, as well as bundle literals
- tut11 : dealing with time:  aggregateion of history, o.schedule and o.timetag
- tut12 : string operations and mannerisms of the environment:  split(), join(), getaddresses(), o.explode, o.flatten
- tut13 : detailed coverage of progn, prog1, prog2
- tut14 : lreduce() & rreduce(), recursion both in and out of the codebox
- tut15 : anonymous functions with eval()
- tut16 : formulating Max messages within the codebox, including some typical use cases
- tut17 : dynamic setters with [o.route], [o.prepend], [o.select] etc
- tut18 : other odot objects
- tut19 : debugging and error reporting (not sure about this yet!?  :)

Examples area:

- more examples/demos in the examples folder, including two explanations of ODOT + poly~, best practice of using an empty bundle, delegated sound synthesis with ODOT
