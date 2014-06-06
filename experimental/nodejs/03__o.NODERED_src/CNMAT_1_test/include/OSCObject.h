#ifndef __OSCCOBJECT_H__
#define __OSCCOBJECT_H__

#ifdef __cplusplus
extern "C" {
#endif

#include "osc.h"
#include "osc_error.h"

extern const void *OSCObject;

void *osc_new(const void *_class, ...);
void osc_delete(void *item);

t_osc_err osc_format(void *self, long *buflen, char **buf);

#ifdef __cplusplus
}
#endif

#endif __OSCOBJECT_H__
