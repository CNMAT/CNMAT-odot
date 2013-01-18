#ifndef __ODOT_VERSION_H__
#define __ODOT_VERSION_H__

#include "ext.h"
#include "odot_current_version.h"
#include "report_compiler.h"
//#define ODOT_VERSION "1.2.11" 
//#define ODOT_RELEASE_DATE "[2012-12-21 Fri]"
#define ODOT_COPYRIGHT_YEARS "2008-13"
#define ODOT_AUTHORS "John MacCallum, Adrian Freed"
#define ODOT_COPYRIGHT_STRING "Regents of the University of California. All rights reserved."

void __odot_version(void)
{
	post("odot version %s (released %s), by %s\n", ODOT_VERSION, ODOT_RELEASE_DATE, ODOT_AUTHORS);
	post("Copyright (c) %s %s", ODOT_COPYRIGHT_YEARS, ODOT_COPYRIGHT_STRING);
}

void odot_version(void *x)
{
	if(!x){
		// called from main()--post only once
		if(!(gensym("odot_version_has_been_posted")->s_thing)){
			__odot_version();
			gensym("odot_version_has_been_posted")->s_thing = (void *)1;
		}
	}else{
		// called in response to the version message
		__odot_version();
		post_compiler();
	}

}
#define ODOT_PRINT_VERSION odot_version(NULL);

#endif
