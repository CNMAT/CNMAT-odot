#ifndef __OIO_HID_UTIL_H__
#define __OIO_HID_UTIL_H__

#include "oio_obj.h"
#include "oio_hid.h"
#include "oio_err.h"
#include <IOKit/hid/IOHIDLib.h>

t_oio_err oio_hid_util_getDeviceProduct(IOHIDDeviceRef device, long bufsize, char *buf);
t_oio_err oio_hid_util_getDeviceVendorID(IOHIDDeviceRef dev, uint32_t *vid);
t_oio_err oio_hid_util_getDeviceProductID(IOHIDDeviceRef dev, uint32_t *vid);
t_oio_err oio_hid_util_getDeviceVendorIDFromDeviceName(t_oio *oio, char *name, uint32_t *vid);
t_oio_err oio_hid_util_getDeviceProductIDFromDeviceName(t_oio *oio, char *name, uint32_t *pid);
//t_oio_err oio_hid_util_getDevicesByName(t_oio *oio, char *name, int *num_devices, t_oio_hid_dev ***device);
//t_oio_err oio_hid_util_getDevicesByOSCPattern(t_oio *oio, const char *name, int *num_devices, t_oio_hid_dev ***devices);
t_oio_err oio_hid_util_getDeviceByDevice(t_oio *oio, IOHIDDeviceRef device_ref, t_oio_hid_dev **device);
void oio_hid_util_dumpDeviceInfo(IOHIDDeviceRef device);
void oio_hid_util_dumpElementInfo(IOHIDElementRef element);
void oio_hid_util_postDeviceKey(IOHIDDeviceRef device, CFStringRef key);
void oio_hid_util_postElementKey(IOHIDElementRef element, CFStringRef key);

#endif // __OIO_HID_UTIL_H__
