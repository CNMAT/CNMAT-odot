#include "oio_midi.h"
#include "oio_midi_util.h"
#include "osc.h"
#include "oio_osc_util.h"
#include "oio_midi_osc.h"
#include <pthread.h>

void *oio_midi_runloop(void *context);
t_oio_err oio_midi_getNames(t_oio *oio, CFMutableDictionaryRef hash, t_oio_midi_dev *device_list, int *n, char ***names);
t_oio_midi_source *oio_midi_addSource(t_oio *oio, MIDIEndpointRef endpoint);
t_oio_midi_destination *oio_midi_addDestination(t_oio *oio, MIDIEndpointRef endpoint);
t_oio_err oio_midi_addDevice(t_oio *oio, t_oio_midi_dev *device, MIDIEndpointRef endpoint, CFMutableDictionaryRef device_hash);
t_oio_err oio_midi_removeSource(t_oio *oio, MIDIEndpointRef source);
t_oio_err oio_midi_removeDestination(t_oio *oio, MIDIEndpointRef destination);
t_oio_err oio_midi_removeDevice(t_oio *oio, t_oio_midi_dev **deviceList, t_oio_midi_dev *dev, CFMutableDictionaryRef device_hash);
void oio_midi_notifyCallback(const MIDINotification *message, void *context);
void oio_midi_valueCallback(const MIDIPacketList *packet_list, void *context, void *source);

t_oio_err oio_midi_run(t_oio *oio){
	pthread_t th;
	pthread_create(&th, NULL, oio_midi_runloop, (void *)oio);
	pthread_detach(th);
	return OIO_ERR_NONE;
}

void *oio_midi_runloop(void *context){
	t_oio *oio = ((t_oio *)context);
	t_oio_midi *midi = oio->midi;
	MIDIClientCreate(CFSTR("liboio"), oio_midi_notifyCallback, (void *)oio, &(midi->client));
	MIDIInputPortCreate(midi->client, CFSTR("libio input port"), oio_midi_valueCallback, oio, &(midi->input_port));
	MIDIOutputPortCreate(midi->client, CFSTR("libio output port"), &(midi->output_port));
	oio_midi_enumerateDevices(oio);

	t_oio_generic_device *d = (t_oio_generic_device *)midi->sources;
	while(d){
		oio_obj_dispatch(oio, midi->connect_callbacks, strlen(d->name), d->name);
		d = d->next;
	}
	d = (t_oio_generic_device *)midi->destinations;
	while(d){
		oio_obj_dispatch(oio, midi->connect_callbacks, strlen(d->name), d->name);
		d = d->next;
	}
	CFRunLoopRun();
	return NULL;
}

t_oio_err oio_midi_getSourceNames(t_oio *oio, int *n, char ***names){
	const struct timespec t = (struct timespec){0, 100000};
	int j = 0;
	while(!(oio->midi->finished_enumeration)){
		nanosleep(&t, NULL);
		j++;
	}
	return oio_midi_getNames(oio, oio->midi->source_hash, (t_oio_midi_dev *)oio->midi->sources, n, names);
}

t_oio_err oio_midi_getDestinationNames(t_oio *oio, int *n, char ***names){
	const struct timespec t = (struct timespec){0, 100000};
	int j = 0;
	while(!(oio->midi->finished_enumeration)){
		nanosleep(&t, NULL);
		j++;
	}
	return oio_midi_getNames(oio, oio->midi->destination_hash, (t_oio_midi_dev *)oio->midi->destinations, n, names);
}

t_oio_err oio_midi_getNames(t_oio *oio, CFMutableDictionaryRef hash, t_oio_midi_dev *device_list, int *n, char ***names){
	char **ptr = *names;
	*n = CFDictionaryGetCount(hash);
	int alloc = 0;
	if(!ptr){
		ptr = (char **)osc_mem_alloc(*n * sizeof(char *));
		alloc = 1;
	}
	int i = 0;
	t_oio_midi_dev *d = device_list;
	while(d){
		if(alloc){
			ptr[i] = (char *)osc_mem_alloc(256 * sizeof(char));
		}
		strcpy(ptr[i], DEV_NAME(d));
		i++;
		d = (t_oio_midi_dev *)DEV_NEXT(d);
	}
	*names = ptr;
	return OIO_ERR_NONE;
}

void oio_midi_enumerateDevices(t_oio *oio){
	int n = MIDIGetNumberOfSources();
	MIDIEndpointRef epr;
	int i;
	for(i = 0; i < n; i++){
		epr = MIDIGetSource(i);
		if(epr){
			oio_midi_addSource(oio, epr);
		}
	}

	n = MIDIGetNumberOfDestinations();
	for(i = 0; i < n; i++){
		epr = MIDIGetDestination(i);
		if(epr){
			oio_midi_addDestination(oio, epr);
		}
	}
	oio->midi->finished_enumeration = 1;
}

t_oio_midi_source *oio_midi_addSource(t_oio *oio, MIDIEndpointRef endpoint){
	t_oio_midi_source *s = (t_oio_midi_source *)osc_mem_alloc(1 * sizeof(t_oio_midi_source));
	s->dev.endpoint = 0;
	DEV_NEXT(s) = NULL;
	DEV_PREV(s) = NULL;
	s->value_callbacks = NULL;
	((t_oio_midi_dev *)s)->midi_object_type = kMIDIObjectType_Source;
	((t_oio_generic_device *)s)->type = OIO_DEV_MIDI;
	if(!oio_midi_addDevice(oio, (t_oio_midi_dev *)s, endpoint, oio->midi->source_hash)){
		DEV_NEXT(s) = (t_oio_generic_device *)oio->midi->sources;
		if(oio->midi->sources){
			DEV_PREV(oio->midi->sources) = (t_oio_generic_device *)s;
		}
		oio->midi->sources = s;
		MIDIPortConnectSource(oio->midi->input_port, endpoint, (void *)endpoint);
		return s;
	}else{
		osc_mem_free(s);
		return NULL;
	}
}

t_oio_midi_destination *oio_midi_addDestination(t_oio *oio, MIDIEndpointRef endpoint){
	t_oio_midi_destination *d = (t_oio_midi_destination *)osc_mem_alloc(1 * sizeof(t_oio_midi_destination));
	d->dev.endpoint = 0;
	DEV_NEXT(d) = NULL;
	DEV_PREV(d) = NULL;
	((t_oio_midi_dev *)d)->midi_object_type = kMIDIObjectType_Destination;
	if(!oio_midi_addDevice(oio, (t_oio_midi_dev *)d, endpoint, oio->midi->destination_hash)){
		DEV_NEXT(d) = (t_oio_generic_device *)oio->midi->destinations;
		if(oio->midi->destinations){
			DEV_PREV(oio->midi->destinations) = (t_oio_generic_device *)d;
		}
		oio->midi->destinations = d;
		return d;
	}else{
		osc_mem_free(d);
		return NULL;
	}
}

t_oio_err oio_midi_addDevice(t_oio *oio, t_oio_midi_dev *device, MIDIEndpointRef endpoint, CFMutableDictionaryRef device_hash){
	CFStringRef str;
	MIDIObjectGetStringProperty(endpoint, kMIDIPropertyDisplayName, &str);
	device->endpoint = endpoint;
	((t_oio_generic_device *)device)->type = OIO_DEV_MIDI;
	//MIDIObjectGetIntegerProperty(endpoint, kMIDIPropertyUniqueID, (SInt32 *)(&(device->uid)));
	device->manufacturer[0] = '\0';
	device->model[0] = '\0';
	CFPropertyListRef plist;
	MIDIEntityRef entity;
	MIDIEndpointGetEntity(endpoint, &entity);
	MIDIDeviceRef deviceref;
	MIDIEntityGetDevice(entity, &deviceref);
	MIDIObjectGetProperties(deviceref, &plist, true);
	if(plist){
		CFStringRef strref;
		if(CFDictionaryContainsKey(plist, CFSTR("manufacturer"))){
			strref = CFDictionaryGetValue(plist, CFSTR("manufacturer"));
			CFStringGetCString(strref, device->manufacturer, sizeof(device->manufacturer), kCFStringEncodingUTF8);
		}
		if(CFDictionaryContainsKey(plist, CFSTR("model"))){
			strref = CFDictionaryGetValue(plist, CFSTR("model"));
			CFStringGetCString(strref, device->model, sizeof(device->model), kCFStringEncodingUTF8);
		}
	}
	char buf[64], mangled[64];
	CFStringGetCString(str, buf, sizeof(buf), kCFStringEncodingUTF8);
	CFRelease(str);
	oio_osc_util_makenice(buf);
	int i = 1;
	while(i < 128){
		sprintf(mangled, "/midi/%s/%d", buf, i++);
		str = CFStringCreateWithCString(kCFAllocatorDefault, mangled, kCFStringEncodingUTF8);
		if(CFDictionaryContainsKey(device_hash, str) == false){
			CFNumberRef val = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, (void *)(&device));
			CFDictionaryAddValue(device_hash, str, val);
			strcpy(DEV_NAME(device), mangled);
			CFRelease(str);
			CFRelease(val);
			break;
		}
		CFRelease(str);
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_midi_removeSource(t_oio *oio, MIDIEndpointRef source){
	t_oio_midi_dev *dev;
	if(oio_midi_util_getSourceByDevice(oio, source, &dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	t_oio_midi_callbackList *cb = ((t_oio_midi_source *)dev)->value_callbacks;
	t_oio_midi_callbackList *next;
	while(cb){
		next = cb->next;
		osc_mem_free(cb);
		cb = next;
	}
	return oio_midi_removeDevice(oio, ((t_oio_midi_dev **)&(oio->midi->sources)), dev, oio->midi->source_hash);
}

t_oio_err oio_midi_removeDestination(t_oio *oio, MIDIEndpointRef destination){
	t_oio_midi_dev *dev;
	if(oio_midi_util_getDestinationByDevice(oio, destination, &dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	return oio_midi_removeDevice(oio, ((t_oio_midi_dev **)&(oio->midi->destinations)), dev, oio->midi->destination_hash);
}

t_oio_err oio_midi_removeDevice(t_oio *oio, t_oio_midi_dev **deviceList, t_oio_midi_dev *dev, CFMutableDictionaryRef device_hash){
	if(!(DEV_PREV(dev))){
		*deviceList = (t_oio_midi_dev *)DEV_NEXT(dev);
	}else{
		DEV_NEXT(DEV_PREV(dev)) = DEV_NEXT(dev);
	}
	if(DEV_NEXT(dev)){
		DEV_PREV(DEV_NEXT(dev)) = DEV_PREV(dev);
	}

	CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, DEV_NAME(dev), kCFStringEncodingUTF8);
	CFDictionaryRemoveValue(device_hash, key);
	osc_mem_free(dev);
	CFRelease(key);
	return OIO_ERR_NONE;
}

t_oio_err oio_midi_registerValueCallback(t_oio *oio, char *name, t_oio_midi_callback f, void *context){
	t_oio_midi_source **sources;
	int n;
	t_oio_err e;
	if(oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&sources)){
		OIO_ERROR(e);
		return e;
	}
	int i;
	for(i = 0; i < n; i++){
		t_oio_midi_callbackList *cb = (t_oio_midi_callbackList *)osc_mem_alloc(1 * sizeof(t_oio_midi_callbackList));
		cb->f = f;
		cb->context = context;
		if(sources[i]->value_callbacks){
			sources[i]->value_callbacks->prev = cb;
		}
		cb->next = sources[i]->value_callbacks;
		sources[i]->value_callbacks = cb;
	}
	if(sources){
		osc_mem_free(sources);
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_midi_unregisterValueCallback(t_oio *oio, char *name, t_oio_midi_callback f){
	t_oio_midi_source **dev;
	int n;
	if(oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	int i;
	for(i = 0; i < n; i++){
		t_oio_midi_source *d = dev[i];
		// disconnect port
		t_oio_midi_callbackList *cb = d->value_callbacks;
		t_oio_midi_callbackList *next;
		while(cb){
			next = cb->next;
			if(cb->f == f){
				if(cb->prev){
					cb->prev->next = cb->next;
				}else{
					d->value_callbacks = cb->next;
				}
				if(cb->next){
					cb->next->prev = cb->prev;
				}
				osc_mem_free(cb);
			}
			cb = next;
		}
		if(d->value_callbacks){
			// re-open port if there are callbacks
		}
	}
	if(dev){
		osc_mem_free(dev);
	}
	return OIO_ERR_NONE;
}

void oio_midi_notifyCallback(const MIDINotification *message, void *context){
	t_oio *oio = (t_oio *)context;
	switch(message->messageID){
	case kMIDIMsgSetupChanged:
		break;
	case kMIDIMsgObjectAdded:
		{
			MIDIEndpointRef device = (MIDIEndpointRef)((MIDIObjectAddRemoveNotification *)message)->child;
			MIDIObjectType t = ((MIDIObjectAddRemoveNotification *)message)->childType;
			t_oio_midi_dev *dev = NULL;
			if(t == kMIDIObjectType_Source){
				dev = (t_oio_midi_dev *)oio_midi_addSource(oio, device);
			}else if(t == kMIDIObjectType_Destination){
				dev = (t_oio_midi_dev *)oio_midi_addDestination(oio, device);
			}
			if(dev){
				oio_obj_dispatch(oio, oio->midi->connect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
			}
		}
		break;
	case kMIDIMsgObjectRemoved:
		{
			MIDIEndpointRef device = (MIDIEndpointRef)((MIDIObjectAddRemoveNotification *)message)->child;
			MIDIObjectType t = ((MIDIObjectAddRemoveNotification *)message)->childType;
			t_oio_midi_dev *dev = NULL;
			if(t == kMIDIObjectType_Source){
				oio_midi_util_getSourceByDevice(oio, device, &dev);
				if(dev){
					oio_obj_dispatch(oio, oio->midi->disconnect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
					oio_midi_removeSource(oio, device);
				}
			}else if(t == kMIDIObjectType_Destination){
				oio_midi_util_getDestinationByDevice(oio, device, &dev);
				if(dev){
					oio_obj_dispatch(oio, oio->midi->disconnect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
					oio_midi_removeDestination(oio, device);
				}
			}
		}
		break;
	}
}

void oio_midi_valueCallback(const MIDIPacketList *packet_list, void *context, void *source){
	t_oio *oio = (t_oio *)context;
	uint32_t numPackets = packet_list->numPackets;
	int i;
	t_oio_midi_dev *dev;
	oio_midi_util_getSourceByDevice(oio, (MIDIEndpointRef)source, &dev);
	if(!dev){
		return;
	}
	char oscbuf[1024], *ptr = oscbuf;
	memset(oscbuf, '\0', 1024);
	strncpy(ptr, "#bundle\0", 8);
	ptr += 8;
	const MIDIPacket *p = &packet_list->packet[0];
	MIDITimeStamp ts = p->timeStamp;
	*((uint64_t *)ptr) = hton64(ts);
	ptr += 8;
	for(i = 0; i < numPackets; i++){
		if(ts != p->timeStamp){
			oio_obj_dispatch(oio, ((t_oio_midi_source *)dev)->value_callbacks, ptr - oscbuf, oscbuf);
			ptr = oscbuf + 8;
			ts = p->timeStamp;
			*((uint64_t *)ptr) = hton64(ts);
			ptr += 8;
		}
		ptr += oio_midi_osc_encodePacket(oio, ptr, dev, p);
		p = MIDIPacketNext(p);
	}
	if(ptr - oscbuf > 16){
		oio_obj_dispatch(oio, ((t_oio_midi_source *)dev)->value_callbacks, ptr - oscbuf, oscbuf);
	}
}

void oio_midi_alloc(t_oio *oio, 
		    t_oio_midi_callback connect_callback, 
		    void *connect_context, 
		    t_oio_midi_callback disconnect_callback, 
		    void *disconnect_context){
		    /*const char *midi_usage_plist, 
		      const char *hid_cookie_plist){*/
	t_oio_midi *midi = (t_oio_midi *)osc_mem_alloc(1 * sizeof(t_oio_midi));
	oio->midi = midi;
	midi->sources = NULL;
	midi->destinations = NULL;
	midi->source_hash = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	midi->destination_hash = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	midi->connect_callbacks = NULL;
	midi->disconnect_callbacks = NULL;
	midi->finished_enumeration = 0; // the enumeration apparently has to happen in the runloop thread
	if(connect_callback){
		oio_obj_registerNotificationCallback(oio, &(midi->connect_callbacks), connect_callback, connect_context);
	}
	if(disconnect_callback){
		oio_obj_registerNotificationCallback(oio, &(midi->disconnect_callbacks), disconnect_callback, disconnect_context);
	}
}
