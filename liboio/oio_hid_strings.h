#ifndef __OIO_HID_USAGE_STRINGS_H__
#define __OIO_HID_USAGE_STRINGS_H__

#include "oio_obj.h"
#include "oio_err.h"
#include <IOKit/hid/IOHIDLib.h>
#include <CoreFoundation/CoreFoundation.h>
#include <Carbon/Carbon.h>

CFStringRef oio_hid_strings_getCookieString(t_oio *oio, int32_t vid, int32_t pid, uint32_t cookie);
uint32_t oio_hid_strings_getCookie(t_oio *oio, int32_t vid, int32_t pid, char *cookie_string);
CFStringRef oio_hid_strings_getDeviceNameString(t_oio *oio, int32_t vid, int32_t pid);
CFStringRef oio_hid_strings_getUsagePageString(t_oio *oio, uint32_t usage_page);
CFStringRef oio_hid_strings_getUsageString(t_oio *oio, uint32_t usage_page, uint32_t usage);
uint32_t oio_hid_strings_getUsagePage(t_oio *oio, char *usage_page);
t_oio_err oio_hid_strings_readUsageFile(t_oio *oio, char *filename);
t_oio_err oio_hid_strings_readCookieFile(t_oio *oio, char *filename);

#endif // __OIO_HID_USAGE_STRINGS_H__
