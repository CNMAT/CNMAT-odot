#ifndef __SERIALIZEDOSCMESSAGE_R__
#define __SERIALIZEDOSCMESSAGE_R__

#include "OSCMessage.r"
#include "osc_message_s.h"

struct SerializedOSCMessageClass{
	const struct OSCObject class;
	t_osc_msg_s *m;
};

#endif // __SERIALIZEDOSCMESSAGE_R__