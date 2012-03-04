#ifndef __OSC_BUNDLE_ITERATOR_U_R__
#define __OSC_BUNDLE_ITERATOR_U_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_bundle_u.h"
#include "osc_message_u.r"

struct _osc_bundle_iterator_u{
	t_osc_bndl_u *bndl;
	t_osc_msg_u *msg;
	t_osc_msg_u start;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_ITERATOR_U_R__