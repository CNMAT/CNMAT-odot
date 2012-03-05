
#define ODOT_VERSION "1.0" 
#define ODOT_RELEASE_DATE "[2012-03-05 Mon]"
#define ODOT_COPYRIGHT_YEARS "2008-12"
#define ODOT_AUTHORS "John MacCallum, Adrian Freed"
#define ODOT_COPYRIGHT_STRING "Regents of the University of California. All rights reserved."
#define ODOT_PRINT_VERSION if(!(gensym("odot_version_has_been_posted")->s_thing)){\
                                        post("odot version %s %s, %s\n", ODOT_VERSION, ODOT_RELEASE_DATE, ODOT_AUTHORS); \
                                        post("Copyright (c) %s %s", ODOT_COPYRIGHT_YEARS, ODOT_COPYRIGHT_STRING);\
                                        gensym("odot_version_has_been_posted")->s_thing = (void *)1;}
