#ifndef __OSC_BUNDLE_ITERATOR_S_R__
#define __OSC_BUNDLE_ITERATOR_S_R__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc_message_s.r"
#include "osc_atom_s.r"

struct _osc_bundle_iterator_s{
	long len;
	char *bndl;
	t_osc_msg_s msg;
	char *msgptr;
};

#ifdef __cplusplus
}
#endif

#endif // __OSC_BUNDLE_ITERATOR_S_R__