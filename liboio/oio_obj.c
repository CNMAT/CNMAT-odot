#include "oio_obj.h"
#include "oio_hid.h"
#include "oio_midi.h"
#include "oio_serial.h"
#include "osc_mem.h"
#include <mach/mach_time.h>
#include <stdio.h>
#include "osc_util.h"
#include "osc_match.h"

t_oio_err oio_obj_sendOSCMessage(t_oio *oio, int n, char *buf, uint64_t timestamp);

t_oio *oio_obj_alloc(t_oio_hid_callback hid_connect_callback, 
		     void *hid_connect_context, 
		     t_oio_hid_callback hid_disconnect_callback, 
		     void *hid_disconnect_context, 
		     //char *hid_usage_plist, 
		     //char *hid_cookie_plist,
		     t_oio_midi_callback midi_connect_callback,
		     void *midi_connect_context,
		     t_oio_midi_callback midi_disconnect_callback,
		     void *midi_disconnect_context,
		     t_oio_serial_callback serial_connect_callback,
		     void *serial_connect_context,
		     t_oio_serial_callback serial_disconnect_callback,
		     void *serial_disconnect_context){
	t_oio *oio = (t_oio *)osc_mem_alloc(1 * sizeof(t_oio));
	oio_hid_alloc(oio, 
		      hid_connect_callback, 
		      hid_connect_context, 
		      hid_disconnect_callback, 
		      hid_disconnect_context);
		      //hid_usage_plist, 
		      //hid_cookie_plist);
	oio_midi_alloc(oio,
		       midi_connect_callback, midi_connect_context,
		       midi_disconnect_callback, midi_disconnect_context);

	oio_serial_alloc(oio,
			 serial_connect_callback, serial_connect_context,
			 serial_disconnect_callback, serial_disconnect_context);
	return oio;
}

void oio_obj_run(t_oio *oio){
	oio_hid_run(oio);
	oio_midi_run(oio);
	oio_serial_run(oio);
}

t_oio_err oio_obj_sendOSC(t_oio *oio, int n, char *buf){
	if(strncmp(buf, "#bundle\0", 8)){
		// not a bundle--just do the message and bail
		return oio_obj_sendOSCMessage(oio, n, buf, mach_absolute_time());
	}
	// bundle
	char *ptr = buf + 8;
	uint64_t timestamp = ntoh64(*((uint64_t *)ptr));
	ptr += 8;
	t_oio_err ret = 0;
	while(ptr - buf < n){
		int size = ntoh32(*((uint32_t *)ptr));
		ptr += 4;
		if(ret = oio_obj_sendOSCMessage(oio, size, ptr, timestamp)){
			return ret;
		}
		ptr += size;
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_obj_sendOSCMessage(t_oio *oio, int n, char *buf, uint64_t timestamp){
	char *address = buf + 1;
	char *typetags = buf + strlen(buf);
	while(*typetags++ != ','){}
	char *data = typetags + strlen(typetags) + 1;
	while((data - buf) % 4){
		data++;
	}
	
	char *ptr = address;
	while(*ptr != '/'){
		ptr++;
	}
	char device_name[128];
	strncpy(device_name, address, ptr - address);
	device_name[ptr - address] = '\0';

	switch(oio_obj_getDeviceType(oio, device_name)){
	case OIO_DEV_HID:
		oio_hid_sendOSCBundleToDevice(oio, n, buf);
		break;
	}

	return OIO_ERR_NONE;
}

t_oio_err oio_obj_registerValueCallback(t_oio *oio, char *name, t_oio_callback f, void *context){
	t_oio_generic_device **devices;
	int n, i;
	t_oio_err e;
	e = oio_obj_getDevicesByName(oio, name, &n, &devices);
	if(e){
		OIO_ERROR(e);
		return e;
	}
	for(i = 0; i < n; i++){
		t_oio_generic_device *d = devices[i];
		switch(d->type){
		case OIO_DEV_DNF:
			OIO_ERROR(OIO_ERR_DNF);
			return OIO_ERR_DNF;
		case OIO_DEV_HID:
			oio_hid_registerValueCallback(oio, name, f, context);
			break;
		case OIO_DEV_MIDI:
			oio_midi_registerValueCallback(oio, name, f, context);
			break;
		case OIO_DEV_SERIAL:
			oio_serial_registerValueCallback(oio, name, f, context);
			break;
		}
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_obj_unregisterValueCallback(t_oio *oio, char *name, t_oio_callback f){
	t_oio_generic_device **devices;
	int n, i;
	t_oio_err e;
	e = oio_obj_getDevicesByName(oio, name, &n, &devices);
	if(e){
		OIO_ERROR(e);
		return e;
	}
	for(i = 0; i < n; i++){
		t_oio_generic_device *d = devices[i];
		switch(d->type){
		case OIO_DEV_DNF:
			OIO_ERROR(OIO_ERR_DNF);
			return OIO_ERR_DNF;
		case OIO_DEV_HID:
			oio_hid_unregisterValueCallback(oio, name, f);
			break;
		case OIO_DEV_MIDI:
			oio_midi_unregisterValueCallback(oio, name, f);
			break;
		case OIO_DEV_SERIAL:

			break;
		}
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_obj_registerNotificationCallback(t_oio *oio, t_oio_callbackList **callbackList, t_oio_callback f, void *context){
	t_oio_callbackList *cb = (t_oio_callbackList *)osc_mem_alloc(1 * sizeof(t_oio_hid_callbackList));
	cb->f = f;
	cb->context = context;
	cb->next = *callbackList;
	*callbackList = cb;
	return OIO_ERR_NONE;
}

/**************************************************
won't work!  some serial and usb devices have the same name...
 **************************************************/
t_oio_dev_type oio_obj_getDeviceType(t_oio *oio, char *name){
	CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, name, kCFStringEncodingUTF8);
	if(CFDictionaryContainsKey(oio->hid->device_hash, key)){
		return OIO_DEV_HID;
	}else if(CFDictionaryContainsKey(oio->midi->source_hash, key)){
		return OIO_DEV_MIDI;
	}else if(CFDictionaryContainsKey(oio->midi->destination_hash, key)){
		return OIO_DEV_MIDI;
	}else if(CFDictionaryContainsKey(oio->serial->device_hash, key)){
		return OIO_DEV_SERIAL;
	}
	CFRelease(key);
	return OIO_DEV_DNF;
}

void oio_obj_dispatch(t_oio *oio, t_oio_callbackList *callback_list, long n, char *osc){
	t_oio_callbackList *cb = callback_list;
	while(cb){
		cb->f(oio, n, osc, cb->context);
		cb = cb->next;
	}
}

CFPropertyListRef oio_obj_getPlist(char *filepath){
	CFDataRef data = NULL;
	FILE *file = fopen(filepath, "r");
	if(file){
		int result = fseek(file, 0, SEEK_END);
		result = ftell(file);
		rewind(file);
		unsigned char buf[result];
		if(fread(buf, result, 1, file) > 0){
			data = CFDataCreate(NULL, buf, result);
		}
		fclose(file);
	}
	if(data){
		// this is deprecated in 10.6
		CFPropertyListRef plist = CFPropertyListCreateFromXMLData(kCFAllocatorDefault, data, kCFPropertyListImmutable, NULL);
		// use this when we're sure people are on 10.6
		//CFPropertyListRef plist = CFPropertyListCreateWithData(kCFAllocatorDefault, data, kCFPropertyListImmutable, NULL, NULL);
		//CFShow(plist);
		CFRelease(data);
		return plist;
	}
	return NULL;
}

t_oio_err oio_obj_getDevicesByName(t_oio *oio, 
				   char *name, 
				   //t_oio_generic_device *device_list, 
				   //CFMutableDictionaryRef hash, 
				   int *num_devices, 
				   t_oio_generic_device ***matched_devices){
	char *pattern = name;
	int n = 0;
	n += CFDictionaryGetCount(oio->hid->device_hash);
	n += CFDictionaryGetCount(oio->midi->source_hash);
	n += CFDictionaryGetCount(oio->midi->destination_hash);
	n += CFDictionaryGetCount(oio->serial->device_hash);
	*matched_devices = (t_oio_generic_device **)osc_mem_alloc(n * sizeof(t_oio_generic_device *));
	*num_devices = 0;
	int i = 0, j;
	t_oio_generic_device *dd[4] = {(t_oio_generic_device *)(oio->hid->devices), 
				       (t_oio_generic_device *)(oio->midi->sources), 
				       (t_oio_generic_device *)(oio->midi->destinations),
				       (t_oio_generic_device *)(oio->serial->devices)};
	for(j = 0; j < 4; j++){
		t_oio_generic_device *d = dd[j];
		while(d){
			char *address = DEV_NAME(d);
			int pattern_offset, address_offset;
			int ret = osc_match(pattern, address, &pattern_offset, &address_offset);
			if(ret & OSC_MATCH_ADDRESS_COMPLETE){
				//if(ret - address == strlen(address)){
				(*matched_devices)[i++] = d;
			}
			d = DEV_NEXT(d);
		}
		*num_devices =+ i;
	}
	if(i == 0){
		return OIO_ERR_DNF;
	}
	return OIO_ERR_NONE;
	/*
	t_oio_hid *hid = oio->hid;
	if(*name == '/'){
		// probably an OSC address
		return oio_hid_util_getDevicesByOSCPattern(oio, name, num_devices, devices);
	}
	CFMutableDictionaryRef dict = hid->device_hash;
	CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, name, kCFStringEncodingUTF8);
	if(CFDictionaryContainsKey(dict, key)){
		const void *val;
		val = CFDictionaryGetValue(dict, key);
		if(val){
			long ptr;
			CFNumberGetValue((CFNumberRef)val, kCFNumberLongType, &ptr);
			if(ptr != 0){
				*devices = (t_oio_hid_dev **)osc_mem_alloc(1 * sizeof(t_oio_hid_dev *));
				**devices = (t_oio_hid_dev *)ptr;
				*num_devices = 1;
				return OIO_ERR_NONE;
			}
		}
	}
	CFRelease(key);
	*num_devices = 0;
	return OIO_ERR_DNF;
	*/
}
