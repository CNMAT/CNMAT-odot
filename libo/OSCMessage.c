#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include "OSCObject.h"
#include "OSCObject.r"
#include "OSCMessage.h"
#include "OSCMessage.r"

static const struct OSCObject _OSCMessage = {
	sizeof(struct OSCMessageClass),
	NULL, NULL
};

const void *OSCMessageClass = &_OSCMessage;
