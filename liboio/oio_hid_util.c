#include "oio_hid_util.h"
#include "osc_match.h"
#include "osc_mem.h"

t_oio_err oio_hid_util_getDeviceProduct(IOHIDDeviceRef device, long bufsize, char *buf){
	CFTypeRef productKey = IOHIDDeviceGetProperty(device, CFSTR(kIOHIDProductKey));
	if(productKey){
		if(CFStringGetTypeID() == CFGetTypeID(productKey)){
			CFIndex len = (int)CFStringGetLength((CFStringRef)productKey);
			if(len > 0){
				if(CFStringGetCString((CFStringRef)productKey, buf, bufsize, kCFStringEncodingUTF8) == false){
					OIO_ERROR(OIO_ERR_CFTYPE);
					return OIO_ERR_CFTYPE;
				}
			}
		}
	}
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_util_getDeviceVendorID(IOHIDDeviceRef dev, uint32_t *vid){
	CFNumberRef id = (CFNumberRef)IOHIDDeviceGetProperty(dev, CFSTR(kIOHIDVendorIDKey));
	uint32_t n;
	if(id){
		if(CFNumberGetValue(id, kCFNumberSInt32Type, &n) == false){
			return OIO_ERR_CFTYPE;
		}
	}else{
		return OIO_ERR_NOPROP;
	}
	*vid = n;
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_util_getDeviceProductID(IOHIDDeviceRef dev, uint32_t *pid){
	CFNumberRef id = (CFNumberRef)IOHIDDeviceGetProperty(dev, CFSTR(kIOHIDProductIDKey));
	//CFShow(id);
	uint32_t n;
	if(id){
		if(CFNumberGetValue(id, kCFNumberSInt32Type, &n) == false){
			return OIO_ERR_CFTYPE;
		}
	}else{
		return OIO_ERR_NOPROP;
	}
	*pid = n;
	return OIO_ERR_NONE;
}

t_oio_err oio_hid_util_getDeviceVendorIDFromDeviceName(t_oio *oio, char *name, uint32_t *vid){
	t_oio_hid_dev **devices;
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

t_oio_err oio_hid_util_getDeviceProductIDFromDeviceName(t_oio *oio, char *name, uint32_t *pid){
	t_oio_hid_dev **devices;
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

/*
t_oio_err oio_hid_util_getDevicesByOSCPattern(t_oio *oio, const char *name, int *num_devices, t_oio_hid_dev ***devices){
	t_oio_hid *hid = oio->hid;
	t_oio_hid_dev *dd = hid->devices;
	const char *pattern = name;
	int n = CFDictionaryGetCount(hid->device_hash);
	*devices = (t_oio_hid_dev **)osc_mem_alloc(n * sizeof(t_oio_hid_dev *));
	int i = 0;
	while(dd){
		const char *address = dd->name;
		int pattern_offset, address_offset;
		int ret = osc_match(pattern, address, &pattern_offset, &address_offset);
		if(ret & OSC_MATCH_ADDRESS_COMPLETE){
			//if(ret - address == strlen(address)){
			(*devices)[i++] = dd;
		}
		dd = dd->next;
	}
	*num_devices = i;
	if(i == 0){
		return OIO_ERR_DNF;
	}
	return OIO_ERR_NONE;
}
*/
t_oio_err oio_hid_util_getDeviceByDevice(t_oio *oio, IOHIDDeviceRef device_ref, t_oio_hid_dev **device){
	t_oio_hid_dev *d = oio->hid->devices;
	while(d){
		if(d->device == device_ref){
			*device = d;
			return OIO_ERR_NONE;
		}
		d = (t_oio_hid_dev *)DEV_NEXT(d);
	}
	return OIO_ERR_DNF;
}


void oio_hid_util_dumpDeviceInfo(IOHIDDeviceRef device){
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDProductKey                    ));

	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDTransportKey                  ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDVendorIDKey                   ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDVendorIDSourceKey             ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDProductIDKey                  ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDVersionNumberKey              ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDManufacturerKey               ));

	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDSerialNumberKey               ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDCountryCodeKey                ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDLocationIDKey                 ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDDeviceUsageKey                ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDDeviceUsagePageKey            ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDDeviceUsagePairsKey           ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDPrimaryUsageKey               ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDPrimaryUsagePageKey           ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDMaxInputReportSizeKey         ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDMaxOutputReportSizeKey        ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDMaxFeatureReportSizeKey       ));
	oio_hid_util_postDeviceKey(device, CFSTR( kIOHIDReportIntervalKey             ));

	printf("************************************************************************************************\n");
	printf("************************************************************************************************\n");
	printf("************************************************************************************************\n");

}

void oio_hid_util_dumpElementInfo(IOHIDElementRef element){
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCookieKey                      ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementTypeKey                        ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCollectionTypeKey              ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementUsageKey                       ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementUsagePageKey                   ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementMinKey                         ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementMaxKey                         ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementScaledMinKey                   ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementScaledMaxKey                   ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementSizeKey                        ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementReportSizeKey                  ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementReportCountKey                 ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementReportIDKey                    ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementIsArrayKey                     ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementIsRelativeKey                  ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementIsWrappingKey                  ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementIsNonLinearKey                 ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementHasPreferredStateKey           ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementHasNullStateKey                ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementFlagsKey                       ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementUnitKey                        ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementUnitExponentKey                ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementNameKey                        ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementValueLocationKey               ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementDuplicateIndexKey              ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementParentCollectionKey            ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementVendorSpecificKey              ));

	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationMinKey              ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationMaxKey              ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationSaturationMinKey    ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationSaturationMaxKey    ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationDeadZoneMinKey      ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationDeadZoneMaxKey      ));
	oio_hid_util_postElementKey(element, CFSTR(kIOHIDElementCalibrationGranularityKey      ));

	printf("************************************************************************************************\n");
	printf("************************************************************************************************\n");
	printf("************************************************************************************************\n");
}

void oio_hid_util_postDeviceKey(IOHIDDeviceRef device, CFStringRef key){
	CFTypeRef k = IOHIDDeviceGetProperty(device, key);
	char buf[256];
	CFStringGetCString(key, buf, 256, kCFStringEncodingUTF8);
	printf("%s:\n", buf);
	CFShow(k);
}

void oio_hid_util_postElementKey(IOHIDElementRef element, CFStringRef key){
	CFTypeRef k = IOHIDElementGetProperty(element, key);
	char buf[256];
	CFStringGetCString(key, buf, 256, kCFStringEncodingUTF8);
	printf("%s:\n", buf);
	CFShow(k);
}
