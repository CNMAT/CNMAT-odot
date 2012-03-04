
/* This code belongs in every single external, but it has no dependencies
on which external it is, so we factored it out.

We could have changed all the projects to include
../../../utility-library/version/version.c in their list of source files,
but instead Matt hacked the Makefile to copy this file to each object's
local directory as part of the build process, and we added

     #include "version.c"

to each object's .c file, *after* the #include "ext.h", because we
need the definition of post().

So we're being naughty by including a .c file. */

void version(void *x);

void version(void *x) {
  post(NAME " Version " VERSION ", by " AUTHORS ".");
  if (x != 0) {
    // Not called from main()
    post("Compiled " __TIME__ " " __DATE__);
  }
  post("Copyright (c) " COPYRIGHT_YEARS " Regents of the University of California.  All rights reserved.");
}
