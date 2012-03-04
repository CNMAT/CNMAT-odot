#ifndef __OIO_OSC_UTIL_H__
#define __OIO_OSC_UTIL_H__

#include <Carbon/Carbon.h>
#include <CoreFoundation/CoreFoundation.h>

void oio_osc_util_makenice(char *buf);
uint64_t oio_osc_util_machAbsoluteToNTP(uint64_t ma);
uint64_t oio_osc_util_NTPToMachAbsolute(uint64_t ntp);

#endif //__OIO_OSC_UTIL_H__
