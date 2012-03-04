#ifndef __OSC_MESSAGE_ITERATOR_S_R__
#define __OSC_MESSAGE_ITERATOR_S_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_message_s.r"
#include "osc_atom_s.r"

struct _osc_message_iterator_s {
	t_osc_msg_s *msg;
	t_osc_atom_s a;
	int n;
	char *dataptr;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_ITERATOR_S_R__