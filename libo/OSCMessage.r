#ifndef __OSCMESSAGE_R__
#define __OSCMESSAGE_R__

#include "OSCObject.h"
#include "osc.h"

struct OSCMessageClass{
	const void *class;
	t_osc_err (*format)(void *self, long *buflen, char **buf);
};

#endif // __OSCMESSAGE_R__