#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <stdarg.h>
#include "OSCObject.h"
#include "OSCObject.r"
#include "OSCMessage.h"
#include "OSCMessage.r"
#include "SerializedOSCMessage.h"
#include "SerializedOSCMessage.r"
#include "osc_message_s.h"
#include "osc_error.h"

static t_osc_err SerializedOSCMessage_format(SerializedOSCMessage _self, long *buflen, char **buf){
	struct SerializedOSCMessageClass *self = _self;
	osc_message_s_format(self->m, buflen, buf);
	return OSC_ERR_NONE;
}

static SerializedOSCMessage SerializedOSCMessage_ctor(SerializedOSCMessage _self, va_list *ap){
	struct SerializedOSCMessageClass *self = _self;
	self->m = osc_message_s_alloc();
	const char *ptr = va_arg(*ap, const char *);
	if(ptr){
		osc_message_s_wrap(self->m, (char *)ptr);
	}
	return self;
}

static void *SerializedOSCMessage_dtor(SerializedOSCMessage _self){
	struct SerializedOSCMessageClass *self = _self;
	osc_message_s_free(self->m);
	return self;
}

static const struct OSCObject _SerializedOSCMessage = {
	sizeof(struct SerializedOSCMessageClass),
	SerializedOSCMessage_ctor,
	SerializedOSCMessage_dtor,
	SerializedOSCMessage_format
};

const void *SerializedOSCMessageClass = &_SerializedOSCMessage;
