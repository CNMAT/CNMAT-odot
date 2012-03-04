#ifndef __OIO_SERIAL_UTIL_H__
#define __OIO_SERIAL_UTIL_H__

#include "oio_obj.h"
#include "oio_serial.h"	

t_oio_err oio_serial_util_getDeviceVendorIDFromDeviceName(t_oio *oio, char *name, uint32_t *vid);
t_oio_err oio_serial_util_getDeviceProductIDFromDeviceName(t_oio *oio, char *name, uint32_t *pid);
t_oio_err oio_serial_util_getDeviceFromDevice(t_oio *oio, io_service_t service, t_oio_serial_dev **dev);

#endif  //__OIO_SERIAL_UTIL_H__
