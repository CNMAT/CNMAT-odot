#ifndef __OIO_MIDI_H__
#define __OIO_MIDI_H__

#include <CoreMIDI/MIDIServices.h>
#include <CoreFoundation/CoreFoundation.h>
#include <Carbon/Carbon.h>
#include "oio_err.h"
#include "oio_obj.h"

typedef t_oio_callback t_oio_midi_callback;
typedef t_oio_callbackList t_oio_midi_callbackList;

typedef struct _oio_midi_dev{
	t_oio_generic_device obj;
	MIDIEndpointRef endpoint;
	char manufacturer[128], model[128];
	MIDIObjectType midi_object_type;
} t_oio_midi_dev;

typedef struct _oio_midi_source{
	t_oio_midi_dev dev;
	t_oio_midi_callbackList *value_callbacks;
} t_oio_midi_source;

typedef struct _oio_midi_destination{
	t_oio_midi_dev dev;
} t_oio_midi_destination;

typedef struct _oio_midi{
	t_oio_midi_source *sources;
	t_oio_midi_destination *destinations;
	CFMutableDictionaryRef source_hash, destination_hash;
	MIDIClientRef client;
	MIDIPortRef input_port, output_port; // these are only necessary to dispose of them later
	t_oio_midi_callbackList *connect_callbacks;
	t_oio_midi_callbackList *disconnect_callbacks;
	int finished_enumeration;
} t_oio_midi;

t_oio_err oio_midi_run(t_oio *oio);
int oio_midi_getNumSources(t_oio *oio);
int oio_midi_getNumDestinations(t_oio *oio);
t_oio_err oio_midi_getSourceNames(t_oio *oio, int *n, char ***names);
t_oio_err oio_midi_getDestinationNames(t_oio *oio, int *n, char ***names);
void oio_midi_enumerateDevices(t_oio *oio);
//t_oio_err oio_midi_registerNotifyCallback(t_oio *oio, t_oio_midi_callback f, void *context);
t_oio_err oio_midi_registerValueCallback(t_oio *oio, char *name, t_oio_midi_callback f, void *context);
t_oio_err oio_midi_unregisterValueCallback(t_oio *oio, char *name, t_oio_midi_callback f);
void oio_midi_alloc(t_oio *oio, 
		    t_oio_midi_callback connect_callback, 
		    void *connect_context, 
		    t_oio_midi_callback disconnect_callback, 
		    void *disconnect_context);

#endif // __OIO_MIDI_H__
