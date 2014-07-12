#ifndef __ODOT_VERSION_H__
#define __ODOT_VERSION_H__

#ifdef OMAX_PD_VERSION
#include "m_pd.h"
#else
#include "ext.h"
#endif

#include "odot_current_version.h"
#include "report_compiler.h"
//#define ODOT_VERSION "1.2.11" 
//#define ODOT_RELEASE_DATE "[2012-12-21 Fri]"
#define ODOT_COPYRIGHT_YEARS "2008-14"
#define ODOT_AUTHORS "John MacCallum, Adrian Freed, Rama Gottfried, Ilya Rostovtsev"
#define ODOT_COPYRIGHT_STRING "Regents of the University of California. All rights reserved."

void __odot_version(void)
{
	post("odot version %s (compiled %s), by %s\n", ODOT_VERSION, ODOT_COMPILE_DATE, ODOT_AUTHORS);
#ifdef OMAX_PD_VERSION
    post("alpha pd version");
#endif
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
#ifdef ODOT_DEPRECATED
	if(x){
		object_error((t_object *)x, "warning: %s is no longer supported and may be removed from the release at any time", OMAX_DOC_NAME);
	}else{
		error("warning: %s is no longer supported and may be removed from the release at any time", OMAX_DOC_NAME);
	}
#endif
}
#define ODOT_PRINT_VERSION odot_version(NULL);

#endif
