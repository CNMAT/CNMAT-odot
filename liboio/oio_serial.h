#ifndef __OIO_SERIAL_H__
#define __OIO_SERIAL_H__

#include <Carbon/Carbon.h>
#include <CoreFoundation/CoreFoundation.h>
#include <IOKit/IOKitLib.h>                                                                                             
#include <IOKit/IOMessage.h>                                                                                            
#include <IOKit/IOCFPlugIn.h>                                                                                           
#include <IOKit/usb/IOUSBLib.h> 
#include "oio_obj.h"
#include "oio_err.h"

typedef t_oio_callback t_oio_serial_callback;
typedef t_oio_callbackList t_oio_serial_callbackList;

typedef struct _oio_serial_dev{
	t_oio_generic_device obj;
	IOUSBDeviceInterface300 **device;
	io_service_t service;
	io_object_t notification;
	int32_t vendor_id, product_id;
	t_oio_serial_callbackList *input_value_callbacks;
} t_oio_serial_dev;

typedef struct _oio_serial{
	t_oio_serial_dev *devices;
	IONotificationPortRef notify_port;
	io_iterator_t connect_iterator;
	CFMutableDictionaryRef device_hash;
	t_oio_serial_callbackList *connect_callbacks;
	t_oio_serial_callbackList *disconnect_callbacks;
} t_oio_serial;

t_oio_err oio_serial_run(t_oio *oio);
t_oio_err oio_serial_getDeviceNames(t_oio *oio, int *n, char ***names);
t_oio_serial_dev *oio_serial_addDevice(t_oio *oio, io_service_t device);
t_oio_err oio_serial_registerValueCallback(t_oio *oio, char *name, t_oio_serial_callback f, void *context);
void oio_serial_alloc(t_oio *oio, 
		      t_oio_serial_callback connect_callback, 
		      void *connect_context, 
		      t_oio_serial_callback disconnect_callback, 
		      void *disconnect_context);

#endif  //__OIO_SERIAL_H__
