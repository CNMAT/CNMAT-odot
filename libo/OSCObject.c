#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "OSCObject.h"
#include "OSCObject.r"
#include "osc.h"
#include "osc_error.h"
#include "osc_mem.h"



void *osc_new(const void *_class, ...){
	const struct OSCObject *class = _class;
	void *p = osc_mem_alloc(class->size);
	*(const struct OSCObject **)&p = class;
	if(class->ctor){
		va_list ap;
		va_start(ap, _class);
		p = class->ctor(p, &ap);
		va_end(ap);
	}
	return p;
}

t_osc_err osc_format(void *_self, long *buflen, char **buf){
	const struct OSCObject *self = _self;
	if(self->format){
		self->format(_self, buflen, buf);
	}
	return OSC_ERR_NONE;
}
