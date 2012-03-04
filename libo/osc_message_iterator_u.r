#ifndef __OSC_MESSAGE_ITERATOR_U_R__
#define __OSC_MESSAGE_ITERATOR_U_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_message_u.r"
#include "osc_atom_u.r"

struct _osc_message_iterator_u {
	t_osc_msg_u *msg;
	t_osc_atom_u *a;
	t_osc_atom_u start;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_MESSAGE_ITERATOR_U_R__