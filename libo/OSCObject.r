#ifndef __OSCOBJECT_R__
#define __OSCOBJECT_R__

#include "osc_error.h"

struct OSCObject{
	size_t size;
	void *(*ctor)(void *self, va_list *ap);
	void *(*dtor)(void *self);
	t_osc_err (*format)(void *self, long *buflen, char **buf);
};

#endif // __OSCOBJECT_R__