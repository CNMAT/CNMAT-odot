#include "oio_serial_util.h"
#include "oio_serial.h"
#include "osc_mem.h"

t_oio_err oio_serial_util_getDeviceVendorIDFromDeviceName(t_oio *oio, char *name, uint32_t *vid){
	t_oio_serial_dev **devices;
	int n;
	oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&devices);
	if(n){
		*vid = devices[0]->vendor_id;
		if(devices){
			osc_mem_free(devices);
		}
		return OIO_ERR_NONE;
	}
	return OIO_ERR_DNF;
}

t_oio_err oio_serial_util_getDeviceProductIDFromDeviceName(t_oio *oio, char *name, uint32_t *pid){
	t_oio_serial_dev **devices;
	int n;
	oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&devices);
	if(n){
		*pid = devices[0]->product_id;
		if(devices){
			osc_mem_free(devices);
		}
		return OIO_ERR_NONE;
	}
	return OIO_ERR_DNF;
}

t_oio_err oio_serial_util_getDeviceFromDevice(t_oio *oio, io_service_t service, t_oio_serial_dev **dev){
	t_oio_serial_dev *d = oio->serial->devices;
	while(d){
		if(d->service == service){
			*dev = d;
			return OIO_ERR_NONE;
		}
		d = (t_oio_serial_dev *)DEV_NEXT(d);
	}
	return OIO_ERR_DNF;
}
