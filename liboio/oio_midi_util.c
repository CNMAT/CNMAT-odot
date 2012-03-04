#include "oio_midi_util.h"
#include "oio_obj.h"
#include "oio_err.h"
#include "osc_mem.h"


t_oio_err oio_midi_util_getSourceByDevice(t_oio *oio, MIDIEndpointRef source, t_oio_midi_dev **device){
	return oio_midi_util_getDeviceByDevice(oio, source, (t_oio_midi_dev *)(oio->midi->sources), device);
}

t_oio_err oio_midi_util_getDestinationByDevice(t_oio *oio, MIDIEndpointRef destination, t_oio_midi_dev **device){
	return oio_midi_util_getDeviceByDevice(oio, destination, (t_oio_midi_dev *)(oio->midi->destinations), device);
}

t_oio_err oio_midi_util_getDeviceByDevice(t_oio *oio, MIDIEndpointRef endpoint, t_oio_midi_dev *device_list, t_oio_midi_dev **device){
	t_oio_midi_dev *d = device_list;
	while(d){
		if(d->endpoint == endpoint){
			*device = d;
			return OIO_ERR_NONE;
		}
		d = (t_oio_midi_dev *)DEV_NEXT(d);
	}
	return OIO_ERR_DNF;
}

t_oio_err oio_midi_util_getManufacturer(t_oio *oio, char *name, char *manu){
	t_oio_midi_dev **devices;
	int n;
	oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&devices);
	if(n){
		strcpy(manu, devices[0]->manufacturer);
		if(devices){
			osc_mem_free(devices);
		}
		return OIO_ERR_NONE;
	}
	return OIO_ERR_DNF;
}

t_oio_err oio_midi_util_getModel(t_oio *oio, char *name, char *model){
	t_oio_midi_dev **devices;
	int n;
	oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&devices);
	if(n){
		strcpy(model, devices[0]->model);
		if(devices){
			osc_mem_free(devices);
		}
		return OIO_ERR_NONE;
	}
	return OIO_ERR_DNF;
}

t_oio_err oio_midi_util_getMIDIObjectType(t_oio *oio, char *name, int *type){
	t_oio_midi_dev **devices;
	int n;
	oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&devices);
	if(n){
		*type = ((t_oio_midi_dev **)devices)[0]->midi_object_type;
		if(devices){
			osc_mem_free(devices);
		}
		return OIO_ERR_NONE;
	}
	return OIO_ERR_DNF;
}
