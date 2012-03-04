#include "oio_hid.h"
#include <pthread.h>
#include "osc.h"
#include "oio_hid_util.h"
#include "oio_hid_osc.h"
#include "oio_osc_util.h"
#include "oio_hid_strings.h"
#include "osc_message.h"
#include <mach/mach_time.h>

CFMutableDictionaryRef oio_hid_dict;

void *oio_hid_runloop(void *context);

// callbacks
void oio_hid_connectCallback(void *context, IOReturn result, void *sender, IOHIDDeviceRef device);
void oio_hid_disconnectCallback(void *context, IOReturn result, void *sender, IOHIDDeviceRef device);
void oio_hid_valueCallback(void *context, IOReturn result, void *sender, IOHIDValueRef value);
void oio_hid_reportCallback(void *context, IOReturn result, void *sender, IOHIDReportType type, uint32_t reportID, uint8_t *report, CFIndex reportLength);

void oio_hid_sendToDevice(IOHIDDeviceRef device, IOHIDElementRef element, uint64_t value);

void oio_hid_enumerateDevices(t_oio *oio);
t_oio_hid_dev *oio_hid_addDevice(t_oio *oio, IOHIDDeviceRef device);
void oio_hid_removeDevice(t_oio *oio, IOHIDDeviceRef device);

void oio_hid_postKey(IOHIDDeviceRef device, CFStringRef key);

t_oio_err oio_hid_run(t_oio *oio){
	pthread_t th;
	pthread_create(&th, NULL, oio_hid_runloop, (void *)oio);
	pthread_detach(th);
	return OIO_ERR_NONE;
}

void *oio_hid_runloop(void *context){
	t_oio *oio = (t_oio *)context;
	t_oio_hid *hid = oio->hid;

	IOHIDManagerScheduleWithRunLoop(hid->hidmanager, CFRunLoopGetCurrent(), kCFRunLoopDefaultMode);
	CFRunLoopRun();
	pthread_exit(NULL);
}

t_oio_err oio_hid_getDeviceNames(t_oio *oio, int *n, char ***names){
	t_oio_hid *hid = oio->hid;
	CFMutableDictionaryRef dict = hid->device_hash;
	int nn = CFDictionaryGetCount(dict);
	CFStringRef keys[nn];
	CFNumberRef vals[nn];
	CFDictionaryGetKeysAndValues(dict, (const void **)&keys, (const void **)&vals);
	*n = nn;
	char **ptr;
	ptr = (char **)osc_mem_alloc(nn * sizeof(char *));
	int i;
	for(i = 0; i < nn; i++){
		if(keys[i]){
			ptr[i] = osc_mem_alloc(256 * sizeof(char));
			CFStringGetCString(keys[i], ptr[i], 256, kCFStringEncodingUTF8);
		}
	}
	*names = ptr;
	return OIO_ERR_NONE;
}

void oio_hid_connectCallback(void *context, IOReturn result, void *sender, IOHIDDeviceRef device){
	t_oio *oio = (t_oio *)context;
	t_oio_hid_dev *dev = oio_hid_addDevice(oio, device);
	(int)IOHIDDeviceOpen(device, 0L);
	if(dev){
		oio_obj_dispatch(oio, oio->hid->connect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
	}
}

void oio_hid_disconnectCallback(void *context, IOReturn result, void *sender, IOHIDDeviceRef device){
	t_oio *oio = (t_oio *)context;
	t_oio_hid_dev *dev;
	oio_hid_util_getDeviceByDevice(oio, device, &dev);
	if(dev){
		oio_obj_dispatch(oio, oio->hid->disconnect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
	}
	oio_hid_removeDevice(oio, device);
}

void oio_hid_valueCallback(void *context, IOReturn result, void *sender, IOHIDValueRef value){
	t_oio *oio = (t_oio *)context;
	t_oio_hid_dev *device;
	if(!(oio_hid_util_getDeviceByDevice(oio, (IOHIDDeviceRef)sender, &device))){
		long len;
		char *oscbuf = NULL;
		oio_hid_osc_encode(oio, &len, &oscbuf, device, value);
		oio_obj_dispatch(oio, device->input_value_callbacks, len, oscbuf);
		osc_mem_free(oscbuf);
	}
}

void oio_hid_reportCallback(void *context, IOReturn result, void *sender, IOHIDReportType type, uint32_t reportID, uint8_t *report, CFIndex reportLength){
	return;
	printf("id: %u, len = %d\n", reportID, reportLength);
	int i;
	for(i = 0; i < reportLength; i++){
		printf("0x%x(%d) ", report[i], report[i]);
	}
	printf("\n");
}

t_oio_err oio_hid_sendOSCBundleToDevice(t_oio *oio, int n, char *bundle){
	/*
	PP("THIS FUNCTION IS BROKEN!!");
	if(strncmp(bundle, "#bundle\0", 8)){
		return OIO_ERR_OSCBNDL;
	}
	char *ptr = bundle + 8;
	uint64_t timestamp = ntoh64(*((uint64_t *)ptr));
	ptr += 8;
	while(ptr - bundle < n){
		int size = ntoh32(*((uint32_t *)ptr));
		ptr += 4;
		char *address = ptr;
		while(*ptr++ != ','){}
		char typetag = *ptr;
		if(*ptr = '\0'){
			return OIO_ERR_OSCBNDL;
		}
		int num_data;
		while(*ptr++){
			num_data++;
		}

		while((ptr - bundle) % 4){
			ptr++;
		}
		uint64_t val;
		//int n = oio_osc_util_getUInt64(typetag, ptr, &val);
		oio_hid_sendValueToDevice(oio, address, timestamp, val);
		ptr += n;
	}
	return OIO_ERR_NONE;
	*/
	uint64_t timestamp = ntoh64(*((uint64_t *)(bundle + 8)));
	int nmsg = 0;
	osc_bundle_getMsgCount(n, bundle, &nmsg);
	t_osc_msg *messages = NULL;
	osc_bundle_getMessages(n, bundle, &nmsg, &messages);
	t_osc_msg *msg = messages;
	int i;
	for(i = 0; i < nmsg; i++){
		osc_message_incrementArg(msg);
		switch(*(msg->typetags)){
		case 'i':
			{
				uint32_t l = ntoh32(*((uint32_t *)(msg->argv)));
				oio_hid_sendValueToDevice(oio, msg->address, timestamp, (uint64_t)l);
			}
			break;
		case 'h':
			{
				uint64_t l = ntoh64(*((uint64_t *)(msg->argv)));
				oio_hid_sendValueToDevice(oio, msg->address, timestamp, l);
			}
			break;
		case 'f':
			{
				uint32_t l = ntoh32(*((uint32_t *)(msg->argv)));
				oio_hid_sendValueToDevice(oio, msg->address, timestamp, (uint64_t)*((float *)&l));
			}
			break;
		case 'd':
			{
				uint64_t l = ntoh64(*((uint64_t *)(msg->argv)));
				oio_hid_sendValueToDevice(oio, msg->address, timestamp, (uint64_t)*((double *)&l));
			}
			break;
		}
		t_osc_msg *killme = msg;
		msg = messages->next;
		osc_message_free(killme);
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_sendValueToDevice(t_oio *oio, char *osc_string, uint64_t timestamp, uint64_t val){
	t_oio_hid_dev **dev;
	int n;
	if(oio_obj_getDevicesByName(oio, osc_string, &n, (t_oio_generic_device ***)&dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	char *ptr = osc_string;
	// skip over the product name
	ptr++;
	while(*ptr++ != '/'){}
	// check to see if the next element of the address the instance number
	char *p = NULL;
	while(1){
		strtoul(ptr, &p, 0);
		if(ptr == p){
			// not a number--must be a part of the name
			while(*ptr++ != '/'){}
		}else{
			ptr = p;
			break;
		}
	}
	// ptr now contains the end of the string which should correspond to something that we can look up in the cookie table
	// or a cookie number

	int i;
	for(i = 0; i < n; i++){
		CFNumberRef cookie;
	        uint32_t c = strtoul(ptr + 1, &p, 0);
		if(p == (ptr + 1)){
			c = oio_hid_strings_getCookie(oio, dev[i]->vendor_id, dev[i]->product_id, ptr);
		}
		cookie = CFNumberCreate(kCFAllocatorDefault, kCFNumberIntType, &c);

		CFMutableDictionaryRef mdict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
		CFDictionarySetValue(mdict, CFSTR(kIOHIDElementCookieKey), cookie);
		CFArrayRef elements = IOHIDDeviceCopyMatchingElements(dev[i]->device, mdict, 0L);
		CFRelease(mdict);
		if(elements){
			int j;
			for(j = 0; j < CFArrayGetCount(elements); j++){
				IOHIDElementRef element = (IOHIDElementRef)CFArrayGetValueAtIndex(elements, j);
				IOHIDValueRef value = IOHIDValueCreateWithIntegerValue(kCFAllocatorDefault, element, mach_absolute_time(), val);
				IOHIDDeviceSetValue(dev[i]->device, element, value);
				CFRelease(value);
			}
		}
		CFRelease(cookie);
	}
	if(dev){
		osc_mem_free(dev);
	}
	return OIO_ERR_NONE;
}

void oio_hid_enumerateDevices(t_oio *oio){
	IOHIDManagerRef hidmanager = oio->hid->hidmanager;

	CFSetRef set = IOHIDManagerCopyDevices(hidmanager);
	int n = (int)CFSetGetCount(set);

	if(n == 0){
		return;
	}
	const void *devices[n];
	CFSetGetValues(set, devices);
	int i;
	for(i = 0; i < n; i++){
		oio_hid_addDevice(oio, (IOHIDDeviceRef)devices[i]);
	}
}

// add the device if it doesn't already exist
t_oio_hid_dev *oio_hid_addDevice(t_oio *oio, IOHIDDeviceRef device){
	t_oio_hid *hid = oio->hid;
	CFMutableDictionaryRef dict = hid->device_hash;
	char buf[256], pstring[256], dstring[256], mangled[256], *ptr = buf;
	memset(buf, '\0', 256);
	t_oio_err ret;
	uint32_t pid = -1, vid = -1;
	ret = oio_hid_util_getDeviceProductID(device, &pid);
	ret = oio_hid_util_getDeviceVendorID(device, &vid);

	if(ret = oio_hid_util_getDeviceProduct(device, 256, pstring)){
		OIO_ERROR(ret);
		return NULL;
	}else{
		oio_osc_util_makenice(pstring);
		ptr += sprintf(ptr, "/hid/%s", pstring);
	}

	CFStringRef name = NULL;
	if(name = oio_hid_strings_getDeviceNameString(oio, vid, pid)){
		if(CFStringGetCString(name, dstring, 256, kCFStringEncodingUTF8) == true){
			// check to see if there is a / at the beg of the string
	      		ptr += sprintf(ptr, "%s", dstring);
		}
		CFRelease(name);
	}else{
	}
	//oio_osc_util_makenice(buf);
	int i = 1;
	t_oio_hid_dev *dev = NULL;
	while(i < 128){
		sprintf(mangled, "%s/%d", buf, i++);
		CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, mangled, kCFStringEncodingUTF8);
		// if the key is not in the dictionary, add it
		if(!CFDictionaryContainsKey((CFDictionaryRef)(dict), key)){
			dev = (t_oio_hid_dev *)osc_mem_alloc(1 * sizeof(t_oio_hid_dev));
			strcpy(DEV_NAME(dev), mangled);
			dev->device = device;
			DEV_PREV(dev) = NULL;
			dev->input_value_callbacks = NULL;
			dev->product_id = pid;
			dev->vendor_id = vid;
			((t_oio_generic_device *)dev)->type = OIO_DEV_HID;

			if(hid->devices){
				DEV_PREV(hid->devices) = (t_oio_generic_device *)dev;
			}
			DEV_NEXT(dev) = ((t_oio_generic_device *)hid->devices);
			hid->devices = dev;
			{
				CFNumberRef val = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, (void *)(&dev));
				CFDictionaryAddValue(dict, key, val);
				CFRelease(val);
			}
			CFRelease(key);
			break;
		}else{
			// if the key is in the dictionary, check to see if the device 
			// matches the one we have and bail if it does (don't need it 
			// in there twice)
			const void *val = CFDictionaryGetValue(dict, key);
			if(val){
				long ptr;
				CFNumberGetValue((CFNumberRef)val, kCFNumberLongType, &ptr);
				if(ptr != 0){
					dev = (t_oio_hid_dev *)ptr;
					if(dev->device == device){
						CFRelease(key);
						break;
					}
				}
			}
		}
		CFRelease(key);
	}
	return dev;
}

void oio_hid_removeDevice(t_oio *oio, IOHIDDeviceRef device){
	t_oio_hid_dev *d;
	if(!(oio_hid_util_getDeviceByDevice(oio, device, &d))){
		if(DEV_PREV(d)){
			DEV_NEXT(DEV_PREV(d)) = DEV_NEXT(d);
		}else{
			oio->hid->devices = (t_oio_hid_dev *)DEV_NEXT(d);
		}
		if(DEV_NEXT(d)){
			DEV_PREV(DEV_NEXT(d)) = DEV_PREV(d);
		}

		t_oio_hid_callbackList *cb = d->input_value_callbacks;
		t_oio_hid_callbackList *next;
		while(cb){
			next = cb->next;
			osc_mem_free(cb);
			cb = next;
		}
		CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, DEV_NAME(d), kCFStringEncodingUTF8);
		CFDictionaryRemoveValue(oio->hid->device_hash, key);
		CFRelease(key);
		osc_mem_free(d);
	}
}

t_oio_err oio_hid_registerValueCallback(t_oio *oio, char *name, t_oio_hid_callback f, void *context){
	t_oio_hid_dev **dev;
	int n;
	if(oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	int i;
	for(i = 0; i < n; i++){
		if(dev[i]->input_value_callbacks == NULL){
			IOHIDDeviceRegisterInputValueCallback(dev[i]->device, oio_hid_valueCallback, oio);
			uint8_t *buf = (uint8_t *)malloc(256);
			IOHIDDeviceRegisterInputReportCallback(dev[i]->device, buf, 256, oio_hid_reportCallback, oio);
		}
		t_oio_hid_callbackList *cb = (t_oio_hid_callbackList *)osc_mem_alloc(1 * sizeof(t_oio_hid_callbackList));
		cb->f = f;
		cb->context = context;
		if(dev[i]->input_value_callbacks){
			dev[i]->input_value_callbacks->prev = cb;
		}
		cb->next = dev[i]->input_value_callbacks;
		dev[i]->input_value_callbacks = cb;
	}
	if(dev){
		osc_mem_free(dev);
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_unregisterValueCallback(t_oio *oio, char *name, t_oio_hid_callback f){
	t_oio_hid_dev **dev;
	int n;
	if(oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	int i;
	for(i = 0; i < n; i++){
		t_oio_hid_dev *d = dev[i];
		IOHIDDeviceRegisterInputValueCallback(dev[i]->device, NULL, NULL);
		t_oio_hid_callbackList *cb = d->input_value_callbacks;
		t_oio_hid_callbackList *next;
		while(cb){
			next = cb->next;
			if(cb->f == f){
				if(cb->prev){
					cb->prev->next = cb->next;
				}else{
					d->input_value_callbacks = cb->next;
				}
				if(cb->next){
					cb->next->prev = cb->prev;
				}
				osc_mem_free(cb);
			}
			cb = next;
		}
		if(d->input_value_callbacks){
			IOHIDDeviceRegisterInputValueCallback(dev[i]->device, oio_hid_valueCallback, oio);
		}
	}
	if(dev){
		osc_mem_free(dev);
	}
	return OIO_ERR_NONE;
}
/*
t_oio_err oio_hid_registerConnectCallback(t_oio *oio, t_oio_hid_callback f, void *context){
	t_oio_hid *hid = oio->hid;
	t_oio_hid_callbackList *cb = (t_oio_hid_callbackList *)osc_mem_alloc(1 * sizeof(t_oio_hid_callbackList));
	cb->f = f;
	cb->context = context;
	cb->next = hid->connect_callbacks;
	hid->connect_callbacks = cb;

	return OIO_ERR_NONE;
}

t_oio_err oio_hid_registerDisconnectCallback(t_oio *oio, t_oio_hid_callback f, void *context){
	t_oio_hid *hid = oio->hid;
	t_oio_hid_callbackList *cb = (t_oio_hid_callbackList *)osc_mem_alloc(1 * sizeof(t_oio_hid_callbackList));
	cb->f = f;
	cb->context = context;
	cb->next = hid->disconnect_callbacks;
	hid->disconnect_callbacks = cb;

	return OIO_ERR_NONE;
}
*/

t_oio_err oio_hid_usageFile(t_oio *oio, char *filename){
	t_oio_err ret;
	if(ret = oio_hid_strings_readUsageFile(oio, filename)){
		OIO_ERROR(ret);
	}
	return ret;
}

t_oio_err oio_hid_cookieFile(t_oio *oio, char *filename){
	t_oio_err ret;
	if(ret = oio_hid_strings_readCookieFile(oio, filename)){
		OIO_ERROR(ret);
	}
	return ret;
}

void oio_hid_alloc(t_oio *oio, 
		   t_oio_hid_callback connect_callback, 
		   void *connect_context, 
		   t_oio_hid_callback disconnect_callback, 
		   void *disconnect_context){
		   //char *usage_plist, 
		   //char *cookie_plist){
	t_oio_hid *hid = (t_oio_hid *)osc_mem_alloc(1 * sizeof(t_oio_hid));
	oio->hid = hid;
	hid->devices = NULL;
	hid->disconnect_callbacks = NULL;
	hid->connect_callbacks = NULL;
	hid->device_hash = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);
	hid->cookie_strings_dict = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);

	/*
	if(usage_plist){
		oio_hid_usageFile(oio, usage_plist);
	}
	if(cookie_plist){
		oio_hid_cookieFile(oio, cookie_plist);
	}
	*/
	if(connect_callback){
		oio_obj_registerNotificationCallback(oio, &(hid->connect_callbacks), connect_callback, connect_context);
	}
	if(connect_callback){
		oio_obj_registerNotificationCallback(oio, &(hid->disconnect_callbacks), disconnect_callback, disconnect_context);
	}
	
	hid->hidmanager = IOHIDManagerCreate(kCFAllocatorDefault, kIOHIDOptionsTypeNone);
	IOHIDManagerSetDeviceMatching(hid->hidmanager, NULL);

	IOHIDManagerRegisterDeviceMatchingCallback(hid->hidmanager, oio_hid_connectCallback, (void *)oio);
	IOHIDManagerRegisterDeviceRemovalCallback(hid->hidmanager, oio_hid_disconnectCallback, (void *)oio);

	//oio_hid_enumerateDevices(oio);
	//oio_hid_run(oio);
}
