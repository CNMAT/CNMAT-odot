#include "oio_serial.h"
#include "pthread.h"
#include "osc_mem.h"
#include "oio_osc_util.h"
#include "oio_serial_util.h"
#include <IOKit/usb/USBSpec.h>
#include <IOKit/serial/IOSerialKeys.h>
#include <IOKit/IOBSD.h>

void *oio_serial_runloop(void *context);
t_oio_err oio_serial_openDevice(t_oio *oio, t_oio_serial_dev *dev);
void oio_serial_deviceAdded(void *context, io_iterator_t iterator);
void oio_serial_deviceNotification(void *context, io_service_t service, natural_t message_type, void *message_arg);

t_oio_err oio_serial_run(t_oio *oio){
	pthread_t th;
	pthread_create(&th, NULL, oio_serial_runloop, (void *)oio);
	pthread_detach(th);
	return OIO_ERR_NONE;
}

void *oio_serial_runloop(void *context){
	t_oio *oio = (t_oio *)context;
	t_oio_serial *serial = oio->serial;

	CFDictionaryRef dict = IOServiceMatching(kIOUSBDeviceClassName);
        if(dict == NULL){
		OIO_ERROR(OIO_ERR_NOSERV);
                return NULL;
        }  

	serial->notify_port = IONotificationPortCreate(kIOMasterPortDefault);
        CFRunLoopSourceRef runloop_source = IONotificationPortGetRunLoopSource(serial->notify_port);
        CFRunLoopAddSource(CFRunLoopGetCurrent(), runloop_source, kCFRunLoopDefaultMode);

        kern_return_t kr = IOServiceAddMatchingNotification(serial->notify_port,
							    kIOFirstMatchNotification,                                                
							    dict,
							    oio_serial_deviceAdded,
							    (void *)oio,
							    &(serial->connect_iterator));
                                                                                                                        
	oio_serial_deviceAdded((void *)oio, serial->connect_iterator);
        CFRunLoopRun();
	return NULL;
}

t_oio_err oio_serial_getDeviceNames(t_oio *oio, int *n, char ***names){
	t_oio_serial *serial = oio->serial;
	CFMutableDictionaryRef dict = serial->device_hash;
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

t_oio_err oio_serial_registerValueCallback(t_oio *oio, char *name, t_oio_serial_callback f, void *context){
	t_oio_serial_dev **dev;
	int n;
	if(oio_obj_getDevicesByName(oio, name, &n, (t_oio_generic_device ***)&dev)){
		OIO_ERROR(OIO_ERR_DNF);
		return OIO_ERR_DNF;
	}
	int i;
	for(i = 0; i < n; i++){
		if(dev[i]->input_value_callbacks == NULL){
			oio_serial_openDevice(oio, dev[i]);
		}
	}

	return OIO_ERR_NONE;
}
void cb(void *context, IOReturn result, void *foo);
t_oio_err oio_serial_openDevice(t_oio *oio, t_oio_serial_dev *dev){
	CFRunLoopRef runloopsource;
	kern_return_t kr;
	IOCFPlugInInterface **plug = NULL;
	IOUSBInterfaceInterface300 **interface = NULL;
	uint8_t interfaceClass, interfaceSubClass, interfaceNumEndpoints;
	int pipeRef;
	io_iterator_t it;
	HRESULT result;
	IOUSBFindInterfaceRequest request; 
	io_service_t usbInterface, prev;
	SInt32 score;
	request.bInterfaceClass = kIOUSBFindInterfaceDontCare;
	request.bInterfaceSubClass = kIOUSBFindInterfaceDontCare;
	request.bInterfaceProtocol = kIOUSBFindInterfaceDontCare;
	request.bAlternateSetting = kIOUSBFindInterfaceDontCare;

	// get the last one
	kr = (*(dev->device))->CreateInterfaceIterator(dev->device, &request, &it);
	while(usbInterface = IOIteratorNext(it)){
		prev = usbInterface;
	}
	usbInterface = prev;

	//kr = (*interface)->GetInterfaceClass(interface, &interfaceClass);
	//kr = (*interface)->GetInterfaceSubClass(interface, &interfaceSubClass);

	// configure device
	uint8_t new_config, nConfig;
	IOUSBConfigurationDescriptorPtr configDesc;
	kr = (*(dev->device))->GetNumberOfConfigurations (dev->device, &nConfig); 
	kr = (*(dev->device))->GetConfigurationDescriptorPtr (dev->device, 0, &configDesc);
	printf("if\n");
	if(kr != kIOReturnSuccess){
		//usbi_err (HANDLE_CTX (dev_handle), "GetConfigurationDescriptorPtr: %s", darwin_error_str(kr));
		new_config = 1;
	}else{
		new_config = configDesc->bConfigurationValue;
		//usbi_info (HANDLE_CTX (dev_handle), "new configuration value is %d", new_config);
		/* set the configuration */
		//kr = darwin_set_configuration (dev_handle, new_config);
		kr = (*(dev->device))->SetConfiguration (dev->device, new_config);
		//if (kr != LIBUSB_SUCCESS){
		if(kr){
			printf("set config failt (%08x)\n", kr);
			//usbi_err (HANDLE_CTX (dev_handle), "could not set configuration");
		        return kr;
		}
		/*
		kr = darwin_get_interface (dpriv->device, iface, &usbInterface);
		if (kr){
			usbi_err (HANDLE_CTX (dev_handle), "darwin_get_interface: %s", darwin_error_str(kr));
			return darwin_to_libusb (kr);
		}
		*/

	}
	// plugin interface
	kr = IOCreatePlugInInterfaceForService(usbInterface,
					       kIOUSBInterfaceUserClientTypeID,
					       kIOCFPlugInInterfaceID,
					       &plug, &score);

	if ((kr != kIOReturnSuccess) || !plug){
		printf("Unable to create a plug-in (%08x)\n", kr);
		return 0;
	}

	kr = IOObjectRelease(usbInterface);
	result = (*plug)->QueryInterface(plug,
					 CFUUIDGetUUIDBytes(kIOUSBInterfaceInterfaceID),
					 (LPVOID *) &interface);
	(*plug)->Release(plug);
	if(result || !interface){
		printf("returning\n");
		return 0;
	}

	printf("opening...\n");
	kr = (*interface)->USBInterfaceOpen(interface);

	int count = 0;
	while(kr != kIOReturnSuccess && count < 2){
		kr = (*interface)->USBInterfaceOpenSeize(interface);
		sleep(1);
		count++;
	}
	if(kr != kIOReturnSuccess){
		printf("Unable to open interface (%08x)\n", kr);
		(void)(*interface)->Release(interface);
		return 0;
	}
	printf("here!\n");
	kr = (*interface)->GetNumEndpoints(interface, &interfaceNumEndpoints);
	if(kr != kIOReturnSuccess){
		printf("Unable to get number of endpoints (%08x)\n", kr);
		(void) (*interface)->USBInterfaceClose(interface);
		(void) (*interface)->Release(interface);
		return 0;
	}
	printf("Interface has %d endpoints\n", interfaceNumEndpoints);
	kr = (*interface)->CreateInterfaceAsyncEventSource(interface, &runloopsource);
	char *buf = (char *)malloc(128);
	kr = (*interface)->ReadPipeAsync(interface, 1 - interfaceNumEndpoints, buf, 128, cb, oio);
	printf("%08x\n", kr);
	return OIO_ERR_NONE;
}

void cb(void *context, IOReturn result, void *foo){
	printf("holyfuckingshit\n");
}

void oio_serial_deviceAdded(void *context, io_iterator_t iterator){
	t_oio *oio = (t_oio *)context;
	io_service_t device;

	while(device = IOIteratorNext(oio->serial->connect_iterator)){
		t_oio_serial_dev *dev = oio_serial_addDevice(oio, device);
		if(dev){
			dev->service = device;
			kern_return_t kr = IOServiceAddInterestNotification(oio->serial->notify_port,
							      device,
							      kIOGeneralInterest,
							      oio_serial_deviceNotification,
							      (void *)oio,
							      &(dev->notification));
                                                                                                                        
			if (KERN_SUCCESS != kr) {                                                                               
				printf("IOServiceAddInterestNotification returned 0x%08x.\n", kr);                              
			}

			kr = IOObjectRelease(device);
			oio_obj_dispatch(oio, oio->serial->connect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
		}
	}
}

void oio_serial_deviceNotification(void *context, io_service_t service, natural_t message_type, void *message_arg){
	t_oio *oio = (t_oio *)context;
	if(message_type == kIOMessageServiceIsTerminated){
		//printf("%s: %d\n", __PRETTY_FUNCTION__, service);
		t_oio_serial_dev *dev = NULL;
		oio_serial_util_getDeviceFromDevice(oio, service, &dev);
		if(dev){
			oio_obj_dispatch(oio, oio->serial->disconnect_callbacks, strlen(DEV_NAME(dev)), DEV_NAME(dev));
			if(DEV_PREV((t_oio_generic_device *)dev)){
				DEV_NEXT(DEV_PREV((t_oio_generic_device *)dev)) = DEV_NEXT((t_oio_generic_device *)dev);
			}else{
				oio->serial->devices = (t_oio_serial_dev *)DEV_NEXT(dev);
			}
			if(DEV_NEXT((t_oio_generic_device *)dev)){
				DEV_PREV(DEV_NEXT((t_oio_generic_device *)dev)) = DEV_PREV((t_oio_generic_device *)dev);
			}
			CFStringRef key = CFStringCreateWithCString(kCFAllocatorDefault, DEV_NAME(dev), kCFStringEncodingUTF8);
			CFDictionaryRemoveValue(oio->serial->device_hash, key);
			CFRelease(key);
			osc_mem_free(dev);
		}
	}
}

t_oio_serial_dev *oio_serial_addDevice(t_oio *oio, io_service_t device){
	t_oio_serial *serial = oio->serial;
	CFMutableDictionaryRef dict = serial->device_hash;
	IOUSBDeviceInterface300 **usbdev = NULL;

	IOCFPlugInInterface **plug = NULL;
	SInt32 score;
	kern_return_t kr = IOCreatePlugInInterfaceForService(device, kIOUSBDeviceUserClientTypeID, kIOCFPlugInInterfaceID, &plug, &score);
	if((kIOReturnSuccess != kr) || !plug){
		OIO_ERROR(OIO_ERR_DNF);
		return NULL;
	}
	HRESULT res = (*plug)->QueryInterface(plug, CFUUIDGetUUIDBytes(kIOUSBDeviceInterfaceID300), (LPVOID*)&(usbdev));
	(*plug)->Release(plug);
	if(res || !(usbdev)){
		OIO_ERROR(OIO_ERR_DNF);
		return NULL;
	}
	io_name_t name;
	char mangled[256];
	kr = IORegistryEntryGetName(device, name);
	if(kr != KERN_SUCCESS){
		name[0] = '\0';
	}

	oio_osc_util_makenice(name);
	PP("%s", name);
	t_oio_serial_dev *dev = NULL;
	int counter = 1;
	while(counter < 128){
		sprintf(mangled, "/serial/%s/%d", name, counter++);
		CFStringRef deviceNameAsCFString = CFStringCreateWithCString(kCFAllocatorDefault, mangled, kCFStringEncodingASCII);
		if(!CFDictionaryContainsKey(serial->device_hash, deviceNameAsCFString)){
			dev = (t_oio_serial_dev *)osc_mem_alloc(1 * sizeof(t_oio_serial_dev));
			dev->obj.type = OIO_DEV_SERIAL;
			dev->device = usbdev;
			strcpy(DEV_NAME(dev), mangled);

			DEV_PREV(dev) = NULL;
			dev->input_value_callbacks = NULL;

			CFTypeRef id = IORegistryEntryCreateCFProperty(device, CFSTR(kUSBProductID), kCFAllocatorDefault, 0);
			CFNumberGetValue(id, kCFNumberSInt32Type, &(dev->product_id));

			id = IORegistryEntryCreateCFProperty(device, CFSTR(kUSBVendorID), kCFAllocatorDefault, 0);
			CFNumberGetValue(id, kCFNumberSInt32Type, &(dev->vendor_id));

			id = IORegistryEntryCreateCFProperty(device, CFSTR(kUSBManufacturerStringIndex), kCFAllocatorDefault, 0);
			//CFShow(id);

			((t_oio_generic_device *)dev)->type = OIO_DEV_SERIAL;
			if(serial->devices){
				DEV_PREV(serial->devices) = (t_oio_generic_device *)dev;
			}
			DEV_NEXT(dev) = ((t_oio_generic_device *)serial->devices);
			serial->devices = dev;
			{
				CFNumberRef val = CFNumberCreate(kCFAllocatorDefault, kCFNumberLongType, (void *)(&dev));
				CFDictionaryAddValue(dict, deviceNameAsCFString, val);
				CFRelease(val);
			}
			CFRelease(deviceNameAsCFString);
			break;
		}else{
			const void *val = CFDictionaryGetValue(dict, deviceNameAsCFString);
			if(val){
				long ptr;
				CFNumberGetValue((CFNumberRef)val, kCFNumberLongType, &ptr);
				if(ptr != 0){
					dev = (t_oio_serial_dev *)ptr;
					if(dev->device == usbdev){
						CFRelease(deviceNameAsCFString);
						break;
					}
				}
			}
		}
		CFRelease(deviceNameAsCFString);
	}
	return dev;
}

void oio_serial_alloc(t_oio *oio, 
		      t_oio_serial_callback connect_callback, 
		      void *connect_context, 
		      t_oio_serial_callback disconnect_callback, 
		      void *disconnect_context){
	oio->serial = NULL;
	t_oio_serial *serial = (t_oio_serial *)osc_mem_alloc(1 * sizeof(t_oio_serial));
	if(!serial){
		OIO_ERROR(OIO_ERR_MEM);
		return;
	}
	serial->devices = NULL;
	serial->connect_callbacks = NULL;
	serial->disconnect_callbacks = NULL;
	serial->device_hash = CFDictionaryCreateMutable(kCFAllocatorDefault, 0, &kCFTypeDictionaryKeyCallBacks, &kCFTypeDictionaryValueCallBacks);

	if(connect_callback){
		oio_obj_registerNotificationCallback(oio, &(serial->connect_callbacks), connect_callback, connect_context);
	}

	if(disconnect_callback){
		oio_obj_registerNotificationCallback(oio, &(serial->disconnect_callbacks), disconnect_callback, disconnect_context);
	}
	oio->serial = serial;
}

