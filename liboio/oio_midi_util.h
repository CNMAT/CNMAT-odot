#ifndef __OIO_MIDI_UTIL_H__
#define __OIO_MIDI_UTIL_H__

#include "oio_err.h"
#include "oio_midi.h"

t_oio_err oio_midi_util_getSourcesByName(const char *name, int *n, t_oio_midi_source ***sources);
t_oio_err oio_midi_util_getSourceByDevice(t_oio *oio, MIDIEndpointRef source, t_oio_midi_dev **device);
t_oio_err oio_midi_util_getDestinationByDevice(t_oio *oio, MIDIEndpointRef destination, t_oio_midi_dev **device);
t_oio_err oio_midi_util_getDeviceByDevice(t_oio *oio, MIDIEndpointRef endpoint, t_oio_midi_dev *device_list, t_oio_midi_dev **device);
t_oio_err oio_midi_util_getManufacturer(t_oio *oio, char *name, char *manu);
t_oio_err oio_midi_util_getModel(t_oio *oio, char *name, char *model);
t_oio_err oio_midi_util_getMIDIObjectType(t_oio *oio, char *name, int *type);

#endif // __OIO_MIDI_UTIL_H__
