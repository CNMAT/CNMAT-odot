#define OMAX_DOC_NAME "o.io.bluetoothle"
#define OMAX_DOC_SHORT_DESC "Bluetooth LE."
#define OMAX_DOC_LONG_DESC "Bluetooth LE."
#define OMAX_DOC_INLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_SEEALSO (char *[]){""}

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>
#import <IOBluetooth/IOBluetooth.h>
//#import <QuartzCore/QuartzCore.h>
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "ext_critical.h"
#include "osc.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "o.h"
#include "odot_version.h"
#include "osc_byteorder.h"

t_symbol *ps_FullPacket;

void obtle_replaceCharWithChar(long len, char *buf, char old, char new)
{
	char *ptr = buf;
	while(ptr - buf < len && *ptr != '\0'){
		if(*ptr == old){
			*ptr = new;
		}
		ptr++;
	}
}

void obtle_replaceSpacesWithChar(long len, char *buf, char c)
{
	obtle_replaceCharWithChar(len, buf, ' ', c);
}

@interface CBUUID (StringExtraction)

- (NSString *)representativeString;

@end

@implementation CBUUID (StringExtraction)

- (NSString *)representativeString;
{
	NSData *data = [self data];

	NSUInteger bytesToConvert = [data length];
	const unsigned char *uuidBytes = [data bytes];
	NSMutableString *outputString = [NSMutableString stringWithCapacity:16];

	for (NSUInteger currentByteIndex = 0; currentByteIndex < bytesToConvert; currentByteIndex++)
		{
			switch (currentByteIndex)
				{
				case 3:
				case 5:
				case 7:
				case 9:[outputString appendFormat:@"%02x-", uuidBytes[currentByteIndex]]; break;
				default:[outputString appendFormat:@"%02x", uuidBytes[currentByteIndex]];
				}

		}

	return outputString;
}

@end

@interface BTLE : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate> 
{
	CBCentralManager *manager;
	struct _obtle *maxobj;
}

// max object
typedef struct _obtle
{
	t_object o;
	BTLE *btle_obj;
	void *outlet;
	t_critical lock;
	long response_len;
	char *response_bndl;
} t_obtle;

// max object forward decls
void obtle_outputOSCBundle(t_obtle *x, t_symbol *msg, int argc, t_atom *argv);

@property (retain) CBCentralManager *manager;

- (int) interrogateResponse:(char *)address;
- (void) startScan;
- (void) stopScan;
- (BOOL) isLECapableHardware;
- (void) computeHeartRate:(NSData *)data peripheral:(CBPeripheral *)p OSCBundle:(t_osc_bndl_u *)b;
- (t_symbol *) makeOSCAddressFromPeripheral:(CBPeripheral *)p withPrefix:(const char *)prefix withPostfix:(const char *)postfix;
- (void)obtle_init:(struct _obtle *)x;


@end

@implementation BTLE
@synthesize manager;

- (int) interrogateResponse:(char *)address
{
	t_obtle *x = maxobj;
	int r = -1;
	if(x->response_bndl){
		t_osc_msg_ar_s *ar = NULL;
		t_osc_err e = osc_bundle_s_lookupAddress(x->response_len, x->response_bndl, address, &ar, 1);
		if(ar && osc_message_array_s_getLen(ar) > 0){
			t_osc_msg_s *rm = osc_message_array_s_get(ar, 0);
			t_osc_atom_s *a = NULL;
			osc_message_s_getArg(rm, 0, &a);
			if(a){
				r = osc_atom_s_getInt(a);
				osc_atom_s_free(a);
			}
			osc_message_array_s_free(ar);
		}
	}
	return r;
}

- (void) dealloc
{
	[self stopScan];
	[manager release];
	[super dealloc];
}

- (BOOL) isLECapableHardware
{
	NSString * state = nil;

	switch ([manager state]) 
		{
		case CBCentralManagerStateUnsupported:
			state = @"The platform/hardware doesn't support Bluetooth Low Energy.";
			break;
		case CBCentralManagerStateUnauthorized:
			state = @"The app is not authorized to use Bluetooth Low Energy.";
			break;
		case CBCentralManagerStatePoweredOff:
			state = @"Bluetooth is currently powered off.";
			break;
		case CBCentralManagerStatePoweredOn:
			return TRUE;
		case CBCentralManagerStateUnknown:
		default:
			return FALSE;
            
		}
    	return FALSE;
}

- (void) startScan 
{
	//[manager scanForPeripheralsWithServices:[NSArray arrayWithObject:[CBUUID UUIDWithString:@"180D"]] options:nil];
	[manager scanForPeripheralsWithServices:nil options:nil];
}

- (void) stopScan 
{
	[manager stopScan];
}

#pragma mark - CBCentralManager delegate methods

// Invoked whenever the central manager's state is updated.
- (void) centralManagerDidUpdateState:(CBCentralManager *)central 
{
	[self isLECapableHardware];
}
    
// /discover/peripheral/name/<name> <name>
// Invoked when the central discovers a peripheral while scanning.
- (void) centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)p advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI 
{    
	t_osc_bndl_u *bndl = osc_bundle_u_alloc();
	const char *pname = [[p name] UTF8String];
	const char * const prefix = "/discover/peripheral/name/";
	long len = strlen(pname) + strlen(prefix) + 1;
	char buf[len];
	sprintf(buf, "%s%s", prefix, pname);
	obtle_replaceSpacesWithChar(len, buf, '_');
	obtle_replaceCharWithChar(len, buf, '-', '_');
	t_osc_msg_u *pname_msg = osc_message_u_allocWithString(buf, (char *)pname);
	osc_bundle_u_addMsg(bndl, pname_msg);

	t_obtle *x = maxobj;
	omax_util_outletOSC_u(x->outlet, bndl);
	osc_bundle_u_free(bndl);
	int r = [self interrogateResponse:"/discover/services"];
	if(r > 0){
		[p retain];
		[manager connectPeripheral:p options: nil];
		[self startScan];
	}
	osc_mem_free(x->response_bndl);
	x->response_bndl = NULL;
	x->response_len = 0;
	/*
	CFUUIDRef uuid = [p UUID];
	if(uuid){
		CFStringRef sr = CFUUIDCreateString(NULL, uuid);
		if(sr){
			long len = CFStringGetLength(sr) + 1;
			char uuidstring[len];
			CFStringGetCString(sr, uuidstring, len, kCFStringEncodingUTF8);
			t_osc_msg_u *uuid_msg = osc_message_u_allocWithString("/discover/peripheral/uuid", uuidstring);
			osc_bundle_u_addMsg(bndl, uuid_msg);
			CFRelease(sr);
		}
	}
	*/
	/*
	int dict_count = [advertisementData count];
	id keys[dict_count];
	id objects[dict_count];
	[advertisementData getObjects:objects andKeys:keys];
	for(int i = 0; i < dict_count; i++){
		const char *k = [(NSString *)keys[i] UTF8String];
		char *prefix = "/advertisementdata/";
		char address[strlen(k) + strlen(prefix) + 1];
		sprintf(address, "%s%s", prefix, k);
		t_osc_msg_u *m = osc_message_u_allocWithAddress(address);
		if(keys[i] == CBAdvertisementDataLocalNameKey){

		}
	}
	*/
}

// Invoked when the central manager retrieves the list of known peripherals.
// Automatically connect to first known peripheral
// this method should no longer be called...
- (void)centralManager:(CBCentralManager *)central didRetrievePeripherals:(NSArray *)peripherals
{
	NSLog(@"%s\n", __func__);
}

// Invoked whenever a connection is succesfully created with the peripheral. 
// Discover available services on the peripheral
- (void) centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)aPeripheral 
{    
	//[self sendOSCStatusBundle:aPeripheral status:"connected"];
	[aPeripheral setDelegate:self];
	[aPeripheral discoverServices:nil];
}

// Invoked whenever an existing connection with the peripheral is torn down. 
// Reset local variables
- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	//[self sendOSCStatusBundle:aPeripheral status:"disconnected"];
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
}

// Invoked whenever the central manager fails to create a connection with the peripheral.
- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	//[self sendOSCStatusBundle:aPeripheral status:"disconnected"];
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
}

#pragma mark - CBPeripheral delegate methods
// /discover/service/peripheral/name/<name>/service/uuid/<uuid> <uuid>

// Invoked upon completion of a -[discoverServices:] request.
// Discover available characteristics on interested services
- (void) peripheral:(CBPeripheral *)p didDiscoverServices:(NSError *)error 
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	/*
	t_osc_msg_u *pname = osc_message_u_allocWithString("/discover/service/peripheral/name", (char *)[[p name] UTF8String]);
	osc_bundle_u_addMsg(b, pname);
	CFUUIDRef uuid = [p UUID];
	if(uuid){
		CFStringRef sr = CFUUIDCreateString(NULL, uuid);
		if(sr){
			long len = CFStringGetLength(sr) + 1;
			char uuidstring[len];
			CFStringGetCString(sr, uuidstring, len, kCFStringEncodingUTF8);
			t_osc_msg_u *puuid = osc_message_u_allocWithString("/discover/service/peripheral/uuid", uuidstring);
			osc_bundle_u_addMsg(b, puuid);
			CFRelease(sr);
		}
	}
	*/
	const char *pname = [[p name] UTF8String];
	const char * const pfx = "/discover/service/peripheral/name/";
	const char * const ifx = "/service/uuid/";
	for(CBService *s in p.services){
		CBUUID *uuid = [s UUID];
		if(uuid){
			NSString *sr = [uuid representativeString];
			if(sr){
				const char *uuidstring = [sr UTF8String];
				obtle_replaceCharWithChar(strlen(uuidstring), uuidstring, '-', '_');
				if(uuidstring){
					long addresslen = strlen(ifx) + strlen(pfx) + strlen(uuidstring) + strlen(pname) + 2;
					char address[addresslen];
					sprintf(address, "%s%s%s%s", pfx, pname, ifx, uuidstring);
					obtle_replaceSpacesWithChar(addresslen, address, '_');
					obtle_replaceCharWithChar(addresslen, address, '-', '_');
					t_osc_msg_u *m = osc_message_u_allocWithString(address, (char *)uuidstring);
					osc_bundle_u_addMsg(b, m);

					t_obtle *x = maxobj;
					omax_util_outletOSC_u(x->outlet, b);
					osc_bundle_u_clear(b);
					int r = [self interrogateResponse:"/discover/characteristics"];
					if(r > 0){
						osc_mem_free(x->response_bndl);
						x->response_bndl = NULL;
						x->response_len = 0;
						[p discoverCharacteristics:nil forService:s];

					}
				}
			}
		}
		/*
		// Heart Rate Service
		if([aService.UUID isEqual:[CBUUID UUIDWithString:@"180D"]]){
			[aPeripheral discoverCharacteristics:nil forService:aService];
		}
        
		// Device Information Service
		if([aService.UUID isEqual:[CBUUID UUIDWithString:@"180A"]]){
			[aPeripheral discoverCharacteristics:nil forService:aService];
		}

		// GAP (Generic Access Profile) for Device Name
		if([aService.UUID isEqual:[CBUUID UUIDWithString:@"1800"]]){
			[aPeripheral discoverCharacteristics:nil forService:aService];
		}
		*/
		/*
		if([aService.UUID isEqual:[CBUUID UUIDWithString:@"6217ff49ac7b547eeecf016a06970ba9"]]){
			[aPeripheral discoverCharacteristics:nil forService:aService];
		}
		*/
		//NSLog(@"%s: %@", __func__, aService.UUID);
	}
	osc_bundle_u_free(b);
}

// /discover/characteristic/peripheral/name/<name>/service/uuid/<uuid>/characteristic/uuid/<uuid> <uuid>

// Invoked upon completion of a -[discoverCharacteristics:forService:] request.
// Perform appropriate operations on interested characteristics
- (void) peripheral:(CBPeripheral *)p didDiscoverCharacteristicsForService:(CBService *)s error:(NSError *)error 
{    
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	/*
	t_osc_msg_u *pname = osc_message_u_allocWithString("/discover/characteristic/peripheral/name", (char *)[[p name] UTF8String]);
	osc_bundle_u_addMsg(b, pname);
	CFUUIDRef uuid = [p UUID];
	if(uuid){
		CFStringRef sr = CFUUIDCreateString(NULL, uuid);
		if(sr){
			long len = CFStringGetLength(sr) + 1;
			char uuidstring[len];
			CFStringGetCString(sr, uuidstring, len, kCFStringEncodingUTF8);
			t_osc_msg_u *puuid = osc_message_u_allocWithString("/discover/characteristic/peripheral/uuid", uuidstring);
			osc_bundle_u_addMsg(b, puuid);
			CFRelease(sr);
		}
	}
	*/
	const char * const pfx = "/discover/characteristic/peripheral/name/";
	const char *pname = [[p name] UTF8String];
	const char * const spfx = "/service/uuid/";
	const char *suuidstring = [[[s UUID] representativeString] UTF8String];
	obtle_replaceCharWithChar(strlen(suuidstring), suuidstring, '-', '_');
	const char * const cpfx = "/characteristic/uuid/";
	for(CBCharacteristic *c in s.characteristics){
		const char *cuuidstring = [[[c UUID] representativeString] UTF8String];
		obtle_replaceCharWithChar(strlen(cuuidstring), cuuidstring, '-', '_');
		long addresslen = strlen(pfx) + strlen(pname) + strlen(spfx) + strlen(suuidstring) + strlen(cpfx) + strlen(cuuidstring) + 1;
		char address[addresslen];
		sprintf(address, "%s%s%s%s%s%s", pfx, pname, spfx, suuidstring, cpfx, cuuidstring);
		obtle_replaceSpacesWithChar(addresslen, address, '_');
		t_osc_msg_u *m = osc_message_u_allocWithString(address, (char *)cuuidstring);
		osc_bundle_u_addMsg(b, m);

		t_obtle *x = maxobj;
		omax_util_outletOSC_u(x->outlet, b);
		osc_bundle_u_clear(b);
		critical_enter(x->lock);
		if(x->response_bndl){
			int r = 0;
			if((r = [self interrogateResponse:"/notify"]) > 0){
				osc_mem_free(x->response_bndl);
				x->response_bndl = NULL;
				x->response_len = 0;
				[p setNotifyValue:YES forCharacteristic:c];
			}else if((r = [self interrogateResponse:"/read"]) > 0){
				osc_mem_free(x->response_bndl);
				x->response_bndl = NULL;
				x->response_len = 0;
				[p readValueForCharacteristic:c];
			}else{
				t_osc_msg_ar_s *ar = NULL;
				t_osc_err e = osc_bundle_s_lookupAddress(x->response_len, x->response_bndl, "/write", &ar, 1);
				if(ar && osc_message_array_s_getLen(ar) > 0){
					t_osc_msg_s *rm = osc_message_array_s_get(ar, 0);
					t_osc_atom_s *a = NULL;
					osc_message_s_getArg(rm, 0, &a);
					if(a){
						char *blob = osc_atom_s_getBlob(a);
						if(blob){
							int32_t l = ntoh32(*((int32_t *)blob));
							[p writeValue:[NSData dataWithBytes:(void *)(blob + 4) length:l] forCharacteristic:c type:CBCharacteristicWriteWithResponse];
						}
					}
					osc_message_array_s_free(ar);
				}
			}
		}
		critical_exit(x->lock);
	}
	/*
	if([service.UUID isEqual:[CBUUID UUIDWithString:@"180D"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			// Set notification on heart rate measurement
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A37"]]){
				// heart rate monitor characteristic
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}
			// Read body sensor location
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A38"]]){
				// body sensor location characteristic
				[aPeripheral readValueForCharacteristic:aChar];
			} 
			// Write heart rate control point
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A39"]]){
				uint8_t val = 1;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}
	if([service.UUID isEqual:[CBUUID UUIDWithString:CBUUIDGenericAccessProfileString]]){
		for(CBCharacteristic *aChar in service.characteristics){
			// Read device name
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:CBUUIDDeviceNameString]]){
				// device name characteristic
				[aPeripheral readValueForCharacteristic:aChar];
			}
		}
	}
	if([service.UUID isEqual:[CBUUID UUIDWithString:@"180A"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			// Read manufacturer name
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A29"]]){
				// device manufacturer name characteristic
				[aPeripheral readValueForCharacteristic:aChar];
			}
		}
	}
	*/
	/*
	if([service.UUID isEqual:[CBUUID UUIDWithString:@"6217ff49ac7b547eeecf016a06970ba9"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			NSLog(@"%s: %@\n", __func__, aChar.UUID);
		}
	}
	*/
}

// Invoked upon completion of a -[readValueForCharacteristic:] request or on the reception of a notification/indication.
- (void) peripheral:(CBPeripheral *)p didUpdateValueForCharacteristic:(CBCharacteristic *)c error:(NSError *)error 
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	int32_t l = [[c value] length];
	int32_t ll = l;
	l++;
	while(l % 4){
		l++;
	}
	char data[l + 4];
	memset(data, '\0', l + 4);
	*((int32_t *)data) = hton32(l);
	memcpy(data + 4, [[c value] bytes], ll);

	//const char *puuidstring = [[p UUID] UTF8String];
	CFStringRef puuidstr = CFUUIDCreateString(NULL, [p UUID]);
	long puuidstrlen = CFStringGetLength(puuidstr) + 1;
	char puuidstring[puuidstrlen];
	CFStringGetCString(puuidstr, puuidstring, puuidstrlen, kCFStringEncodingUTF8);
	obtle_replaceCharWithChar(puuidstrlen, puuidstring, '-', '_');
	CFRelease(puuidstr);

	char puuidstring_slash[puuidstrlen + 2];
	sprintf(puuidstring_slash, "/%s", puuidstring);
	const char * const pfx = "/characteristic/peripheral/name/";
	const char *pname = [[p name] UTF8String];
	const char * const cfx = "/characteristic/";
	const char *cuuidstring = [[[c UUID] representativeString] UTF8String];
	obtle_replaceCharWithChar(strlen(cuuidstring), cuuidstring, '-', '_');
	long addresslen = strlen(puuidstring_slash) + strlen(pfx) + strlen(pname) + strlen(cfx) + strlen(cuuidstring) + 1;
	char address[addresslen];
	sprintf(address, "%s%s%s%s%s", puuidstring_slash, pfx, pname, cfx, cuuidstring);
	obtle_replaceSpacesWithChar(addresslen, address, '_');
	obtle_replaceCharWithChar(addresslen, address, '-', '_');

	t_osc_msg_u *m = osc_message_u_allocWithBlob(address, data);
	osc_bundle_u_addMsg(b, m);

	t_osc_msg_u *selfmsg = osc_message_u_allocWithString("/self", puuidstring_slash);
	osc_bundle_u_addMsg(b, selfmsg);

	sprintf(address, "%s/peripheral/name", puuidstring_slash);
	t_osc_msg_u *pmsg = osc_message_u_allocWithString(address, (char *)pname);
	osc_bundle_u_addMsg(b, pmsg);

	sprintf(address, "%s/characteristic/uuid", puuidstring_slash);
	t_osc_msg_u *uuidmsg = osc_message_u_allocWithString(address, (char *)cuuidstring);
	osc_bundle_u_addMsg(b, uuidmsg);

	t_obtle *x = maxobj;
	omax_util_outletOSC_u(x->outlet, b);
	osc_bundle_u_free(b);
	//[p readRSSI];
}

- (void)peripheralDidUpdateRSSI:(CBPeripheral *)peripheral error:(NSError *)error
{
	/*
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *msg_self = [self makeOSCSelfMessage:peripheral];
	osc_bundle_u_addMsg(b, msg_self);
	int rssi = [peripheral.RSSI intValue];
	t_osc_msg_u *data = osc_message_u_alloc();
	t_symbol *s = [self makeOSCAddressFromPeripheral:peripheral withPrefix:NULL withPostfix:"/RSSI/dBm"];
	osc_message_u_setAddress(data, s->s_name);
	osc_message_u_appendInt32(data, rssi);
	osc_bundle_u_addMsg(b, data);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf){
		t_atom a[2];
		atom_setlong(a, len);
		atom_setlong(a + 1, (long)buf);
		schedule_delay(maxobj, (method)obtle_outputOSCBundle, 0, ps_FullPacket, 2, a);
		osc_bundle_u_free(b);
		// don't free buf here!!!
	}
	*/
}

- (void)obtle_init:(struct _obtle *)x
{
	maxobj = x;
	manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
	[self startScan];
}

@end

// Max object

t_class *obtle_class;

void obtle_fullPacket(t_obtle *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	critical_enter(x->lock);
	x->response_bndl = osc_mem_resize(x->response_bndl, len);
	x->response_len = len;
	if(x->response_bndl){
		memcpy(x->response_bndl, ptr, len);
	}
	critical_exit(x->lock);
}

void obtle_outputOSCBundle(t_obtle *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	if(ptr){
		omax_util_outletOSC(x->outlet, len, ptr);
		osc_mem_free(ptr); // scary business...
	}

}

void obtle_bang(t_obtle *x)
{
}

void obtle_assist(t_obtle *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void obtle_doc(t_obtle *x)
{
	omax_doc_outletDoc(x->outlet);
}

void obtle_free(t_obtle *x)
{
	BTLE *btle = x->btle_obj;
	[btle release];
	critical_free(x->lock);
}

void *obtle_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_obtle *x = NULL;
	BTLE *btle = [[BTLE alloc] init];
	if(btle){
		if((x = (t_obtle *)object_alloc(obtle_class))){
			critical_new(&x->lock);
			x->outlet = outlet_new((t_object *)x, "FullPacket");
			[btle obtle_init:x];
			x->btle_obj = btle;
			x->response_bndl = NULL;
			x->response_len = 0;
		}
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.io.bluetoothle", (method)obtle_new, (method)obtle_free, sizeof(t_obtle), 0L, A_GIMME, 0);

	class_addmethod(c, (method)obtle_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)obtle_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)obtle_doc, "doc", 0);
	//class_addmethod(c, (method)obtle_bang, "bang", 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	ps_FullPacket = gensym("FullPacket");
	
	class_register(CLASS_BOX, c);
	obtle_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
