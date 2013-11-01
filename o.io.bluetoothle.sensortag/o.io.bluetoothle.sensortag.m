#define OMAX_DOC_NAME "o.io.bluetoothle.sensortag"
#define OMAX_DOC_SHORT_DESC "Outputs OSC data from a TI Sensortag."
#define OMAX_DOC_LONG_DESC "Reports OSC data from a TI Sensortag."
#define OMAX_DOC_INLETS_DESC (char *[]){""}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_SEEALSO (char *[]){""}

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>
#import <IOBluetooth/IOBluetooth.h>
#import <Foundation/Foundation.h>
//#import <QuartzCore/QuartzCore.h>
#include "ext.h"
#include "ext_obex.h"
#include "ext_obex_util.h"
#include "osc.h"
#include "osc_mem.h"
#include "omax_util.h"
#include "omax_doc.h"
#include "omax_dict.h"
#include "o.h"
#include "odot_version.h"


t_symbol *ps_FullPacket;

void ostag_replaceSpacesWithSlashes(long len, char *buf)
{
	char *ptr = buf;
	while(ptr - buf < len && *ptr != '\0'){
		if(*ptr == ' '){
			*ptr = '/';
		}
		ptr++;
	}
}

@interface  sensorC953A: NSObject 
{
	UInt16 c1,c2,c3,c4;
	int16_t c5,c6,c7,c8;
}

///Calibration values unsigned
@property UInt16 c1,c2,c3,c4;
///Calibration values signed
@property int16_t c5,c6,c7,c8;

-(id) initWithCalibrationData:(NSData *)data;

-(int) calcPressure:(NSData *)data;


@end



@interface sensorIMU3000: NSObject
/*
{
	float lastX,lastY,lastZ;
	float calX,calY,calZ;
}

@property float lastX,lastY,lastZ;
@property float calX,calY,calZ;
*/
#define IMU3000_RANGE 500.0

//-(id) init;

//-(void) calibrate;
+(float) calcXValue:(NSData *)data;
+(float) calcYValue:(NSData *)data;
+(float) calcZValue:(NSData *)data;
+(float) getRange;

@end

@interface sensorKXTJ9 : NSObject

#define KXTJ9_RANGE 4.0

+(float) calcXValue:(NSData *)data;
+(float) calcYValue:(NSData *)data;
+(float) calcZValue:(NSData *)data;
+(float) getRange;

@end

@interface sensorMAG3110 : NSObject
/*
{
	float lastX,lastY,lastZ;
	float calX,calY,calZ;
}

@property float lastX,lastY,lastZ;
@property float calX,calY,calZ;
*/

#define MAG3110_RANGE 2000.0

-(id) init;
-(void) calibrate;
-(float) calcXValue:(NSData *)data;
-(float) calcYValue:(NSData *)data;
-(float) calcZValue:(NSData *)data;
+(float) getRange;

@end

@interface sensorTMP006 : NSObject



+(float) calcTAmb:(NSData *)data;
+(float) calcTAmb:(NSData *)data offset:(int)offset;
+(float) calcTObj:(NSData *)data;
@end

@interface sensorSHT21 : NSObject

+(float) calcPress:(NSData *)data;
+(float) calcTemp:(NSData *)data;

@end



@interface sensorTagValues : NSObject

@property float tAmb;
@property float tIR;
@property float press;
@property float humidity;
@property float accX;
@property float accY;
@property float accZ;
@property float gyroX;
@property float gyroY;
@property float gyroZ;
@property float magX;
@property float magY;
@property float magZ;
@property NSString *timeStamp;

@end

@interface SensorTag : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate> 
{
	CBCentralManager *manager;
	struct _ostag *maxobj;
}

// max object
typedef struct _ostag
{
	t_object o;
	SensorTag *st;
	void *outlet;
} t_ostag;

// max object forward decls
void ostag_outputOSCBundle(t_ostag *x, t_symbol *msg, int argc, t_atom *argv);

@property (retain) CBCentralManager *manager;

- (void) startScan;
- (void) stopScan;
- (BOOL) isLECapableHardware;
- (void) computeHeartRate:(NSData *)data peripheral:(CBPeripheral *)p OSCBundle:(t_osc_bndl_u *)b;
- (long) makeOSCAddressFromPeripheral:(CBPeripheral *)p withPrefix:(const char *)prefix withPostfix:(const char *)postfix buf:(char *)buf buflen:(long)buflen;
- (void)ostag_init:(struct _ostag *)x;


@end

@implementation sensorC953A
@synthesize c1,c2,c3,c4,c5,c6,c7,c8;


-(id) initWithCalibrationData:(NSData *)data {
    self = [[sensorC953A alloc] init];
    if (self) {
        unsigned char scratchVal[16];
        [data getBytes:&scratchVal length:16];
        self.c1 = ((scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00));
        self.c2 = ((scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00));
        self.c3 = ((scratchVal[4] & 0xff) | ((scratchVal[5] << 8) & 0xff00));
        self.c4 = ((scratchVal[6] & 0xff) | ((scratchVal[7] << 8) & 0xff00));
        self.c5 = ((scratchVal[8] & 0xff) | ((scratchVal[9] << 8) & 0xff00));
        self.c6 = ((scratchVal[10] & 0xff) | ((scratchVal[11] << 8) & 0xff00));
        self.c7 = ((scratchVal[12] & 0xff) | ((scratchVal[13] << 8) & 0xff00));
        self.c8 = ((scratchVal[14] & 0xff) | ((scratchVal[15] << 8) & 0xff00));
    }
    return self;
}
-(int) calcPressure:(NSData *)data {
    if (data.length < 4) return -0.0f;
    char scratchVal[4];
    [data getBytes:&scratchVal length:4];
    int16_t temp;
    uint16_t pressure;

    temp = (scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00);
    pressure = (scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00);
    
    long long tempTemp = (long long)temp;
    // Temperature calculation
    long temperature = ((((long)self.c1 * (long)tempTemp)/(long)1024) + (long)((self.c2) / (long)4 - (long)16384));
    NSLog(@"Calculation of Barometer Temperature : temperature = %ld(%lx)",temperature,temperature);
    // Barometer calculation
    
    long long S = self.c3 + ((self.c4 * (long long)tempTemp)/((long long)1 << 17)) + ((self.c5 * ((long long)tempTemp * (long long)tempTemp))/(long long)((long long)1 << 34));
    long long O = (self.c6 * ((long long)1 << 14)) + (((self.c7 * (long long)tempTemp)/((long long)1 << 3))) + ((self.c8 * ((long long)tempTemp * (long long)tempTemp))/(long long)((long long)1 << 19));
    long long Pa = (((S * (long long)pressure) + O) / (long long)((long long)1 << 14));
    
    
    return (int)((int)Pa/(int)100);
    
}

@end


@implementation sensorIMU3000
/*
@synthesize lastX,lastY,lastZ;
@synthesize calX,calY,calZ;

-(id) init {
    self = [super init];
    if (self) {
        self.calX = 0.0f;
        self.calY = 0.0f;
        self.calZ = 0.0f;
    }
    return self;
}

-(void) calibrate {
    self.calX = self.lastX;
    self.calY = self.lastY;
    self.calZ = self.lastZ;
    
}
*/
+(float) calcXValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap X (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawX = (scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00);
    return (((float)rawX * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    /*
    self.lastX = (((float)rawX * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    return (self.lastX - self.calX);
    */
}
+(float) calcYValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap Y (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawY = ((scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00));
    return (((float)rawY * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    /*
    self.lastY = (((float)rawY * 1.0) / ( 65536 / IMU3000_RANGE )) * -1;
    return (self.lastY - self.calY);
    */
}
+(float) calcZValue:(NSData *)data {
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawZ = (scratchVal[4] & 0xff) | ((scratchVal[5] << 8) & 0xff00);
    return ((float)rawZ * 1.0) / ( 65536 / IMU3000_RANGE );
    /*
    self.lastZ = ((float)rawZ * 1.0) / ( 65536 / IMU3000_RANGE );
    return (self.lastZ - self.calZ);
    */
}
+(float) getRange {
    return IMU3000_RANGE;
}

@end


@implementation sensorKXTJ9

+(float) calcXValue:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[0] * 1.0) / (256 / KXTJ9_RANGE));
}
+(float) calcYValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap Y (multiplying with -1)
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[1] * 1.0) / (256 / KXTJ9_RANGE)) * -1;
}
+(float) calcZValue:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:3];
    return ((scratchVal[2] * 1.0) / (256 / KXTJ9_RANGE));
}
+(float) getRange {
    return KXTJ9_RANGE;
}


@end


@implementation sensorMAG3110

//@synthesize lastX,lastY,lastZ;
//@synthesize calX,calY,calZ;
/*
-(id) init {
    self = [super init];
    if (self) {
        self.calX = 0.0f;
        self.calY = 0.0f;
        self.calZ = 0.0f;
    }
    return self;
}
*/

/*
-(void) calibrate {
    self.calX = self.lastX;
    self.calY = self.lastY;
    self.calZ = self.lastZ;
 
}
*/

+(float) calcXValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap X (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawX = (scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00);
    return (((float)rawX * 1.0) / ( 65536 / MAG3110_RANGE )) * -1;
    /* we'll let the user do this in max
    self.lastX = (((float)rawX * 1.0) / ( 65536 / MAG3110_RANGE )) * -1;
    return (self.lastX - self.calX);
    */
}
+(float) calcYValue:(NSData *)data {
    //Orientation of sensor on board means we need to swap Y (multiplying with -1)
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawY = ((scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00));
    return (((float)rawY * 1.0) / ( 65536 / MAG3110_RANGE )) * -1;
    /*
    self.lastY = (((float)rawY * 1.0) / ( 65536 / MAG3110_RANGE )) * -1;
    return (self.lastY - self.calY);
    */
}
+(float) calcZValue:(NSData *)data {
    char scratchVal[6];
    [data getBytes:&scratchVal length:6];
    int16_t rawZ = (scratchVal[4] & 0xff) | ((scratchVal[5] << 8) & 0xff00);
    return ((float)rawZ * 1.0) / ( 65536 / MAG3110_RANGE );
    /*
    self.lastZ =  ((float)rawZ * 1.0) / ( 65536 / MAG3110_RANGE );
    return (self.lastZ - self.calZ);
    */
}
+(float) getRange {
    return 60.0;
}
@end

@implementation sensorTMP006

+(float) calcTAmb:(NSData *)data {
    char scratchVal[data.length];
    int16_t ambTemp;
    [data getBytes:&scratchVal length:data.length];
    ambTemp = ((scratchVal[2] & 0xff)| ((scratchVal[3] << 8) & 0xff00));
    
    return (float)((float)ambTemp / (float)128);
}

+(float) calcTAmb:(NSData *)data offset:(int)offset {
    char scratchVal[data.length];
    int16_t ambTemp;
    [data getBytes:&scratchVal length:data.length];
    ambTemp = ((scratchVal[offset] & 0xff)| ((scratchVal[offset + 1] << 8) & 0xff00));
    
    return (float)((float)ambTemp / (float)128);
}


+(float) calcTObj:(NSData *)data {
    char scratchVal[data.length];
    int16_t objTemp;
    int16_t ambTemp;
    [data getBytes:&scratchVal length:data.length];
    objTemp = (scratchVal[0] & 0xff)| ((scratchVal[1] << 8) & 0xff00);
    ambTemp = ((scratchVal[2] & 0xff)| ((scratchVal[3] << 8) & 0xff00));
    
    float temp = (float)((float)ambTemp / (float)128);
    long double Vobj2 = (double)objTemp * .00000015625;
    long double Tdie2 = (double)temp + 273.15;
    long double S0 = 6.4*pow(10,-14);
    long double a1 = 1.75*pow(10,-3);
    long double a2 = -1.678*pow(10,-5);
    long double b0 = -2.94*pow(10,-5);
    long double b1 = -5.7*pow(10,-7);
    long double b2 = 4.63*pow(10,-9);
    long double c2 = 13.4f;
    long double Tref = 298.15;
    long double S = S0*(1+a1*(Tdie2 - Tref)+a2*pow((Tdie2 - Tref),2));
    long double Vos = b0 + b1*(Tdie2 - Tref) + b2*pow((Tdie2 - Tref),2);
    long double fObj = (Vobj2 - Vos) + c2*pow((Vobj2 - Vos),2);
    long double Tobj = pow(pow(Tdie2,4) + (fObj/S),.25);
    Tobj = (Tobj - 273.15);
    return (float)Tobj;
}

@end

@implementation sensorSHT21

+(float) calcPress:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:data.length];
    UInt16 hum;
    float rHVal;
    hum = (scratchVal[2] & 0xff) | ((scratchVal[3] << 8) & 0xff00);
    rHVal = -6.0f + 125.0f * (float)((float)hum/(float)65535);
    return rHVal;
}
+(float) calcTemp:(NSData *)data {
    char scratchVal[data.length];
    [data getBytes:&scratchVal length:data.length];
    UInt16 temp;
    temp = (scratchVal[0] & 0xff) | ((scratchVal[1] << 8) & 0xff00);
    return (float)temp;
}


@end


@implementation sensorTagValues

@end


@implementation SensorTag
@synthesize manager;

- (void) dealloc
{
	[self stopScan];
	[manager release];
	[super dealloc];
}

- (long) makeOSCAddressFromPeripheral:(CBPeripheral *)p withPrefix:(const char *)prefix withPostfix:(const char *)postfix buf:(char *)buf buflen:(long)buflen
{
	const char *name = [p.name UTF8String];

	CFStringRef uuidsr = CFUUIDCreateString(NULL, [p UUID]);
	long len = CFStringGetLength(uuidsr) + 1;
	char uuidstring[len];
	CFStringGetCString(uuidsr, uuidstring, len, kCFStringEncodingUTF8);
	CFRelease(uuidsr);

	long i = 0;

	if(prefix && postfix){
		i += snprintf(buf, buflen, "%s/%s/%s%s", prefix, name, uuidstring, postfix);
	}else if(prefix){
		i += snprintf(buf, buflen, "%s/%s/%s", prefix, name, uuidstring);
	}else if(postfix){
		i += snprintf(buf, buflen, "/%s/%s%s", name, uuidstring, postfix);
	}else{
		i += snprintf(buf, buflen, "/%s/%s", name, uuidstring);
	}
	if(buf){
		char *ptr = buf;
		while(*ptr != '\0' && ptr - buf < sizeof(buf)){
			if(*ptr == ' '){
				*ptr = '/';
			}
			ptr++;
		}
	}
	return i;
}

- (void) sendOSCStatusBundle:(CBPeripheral *)p status:(const char *)status
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *m = osc_message_u_alloc();
	long statuslen = [self makeOSCAddressFromPeripheral:p withPrefix:NULL withPostfix:"/status" buf:NULL buflen:0] + 1;
	char statusaddress[statuslen];
	[self makeOSCAddressFromPeripheral:p withPrefix:NULL withPostfix:"/status" buf:statusaddress buflen:statuslen];
	osc_message_u_setAddress(m, statusaddress);
	osc_message_u_appendString(m, "disconnected");
	osc_bundle_u_addMsg(b, m);
	t_osc_msg_u *mself = osc_message_u_alloc();
	osc_message_u_setAddress(mself, "/self");
	long selflen = [self makeOSCAddressFromPeripheral:p withPrefix:NULL withPostfix:NULL buf:NULL buflen:0] + 1;
	char selfaddress[selflen];
	[self makeOSCAddressFromPeripheral:p withPrefix:NULL withPostfix:NULL buf:selfaddress buflen:selflen];
	osc_message_u_appendString(mself, selfaddress);
	osc_bundle_u_addMsg(b, mself);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf){
		t_atom a[2];
		atom_setlong(a, len);
		atom_setlong(a + 1, (long)buf);
		schedule_delay(maxobj, (method)ostag_outputOSCBundle, 0, ps_FullPacket, 2, a);
		osc_bundle_u_free(b);
		// don't free buf here!!!
	}
}

#pragma mark - Start/Stop Scan methods

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
    
	//NSLog(@"Central manager state: %@", state);
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
    
- (void) centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)aPeripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI 
{    
	//NSLog(@"peripheral UUID: %@", [aPeripheral UUID]);
	NSString *st = [advertisementData objectForKey:CBAdvertisementDataLocalNameKey];
	//NSLog(@"name: %@", st);
	if([st compare:@"SensorTag"] == NSOrderedSame){
		[aPeripheral retain];
		[manager connectPeripheral:aPeripheral options: nil];
	}
	[self startScan];
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
	[aPeripheral setDelegate:self];
	[aPeripheral discoverServices:nil];
}

// Invoked whenever an existing connection with the peripheral is torn down. 
// Reset local variables
- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	[self sendOSCStatusBundle:aPeripheral status:"disconnected"];
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
}

// Invoked whenever the central manager fails to create a connection with the peripheral.
- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
}

#pragma mark - CBPeripheral delegate methods
// Invoked upon completion of a -[discoverServices:] request.
// Discover available characteristics on interested services
- (void) peripheral:(CBPeripheral *)aPeripheral didDiscoverServices:(NSError *)error 
{
	/*
2013-10-02 14:57:14.928 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Generic Access Profile 1800
2013-10-02 14:57:14.928 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Generic Attribute Profile 1801
2013-10-02 14:57:14.929 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<180a>) Device Information Service
2013-10-02 14:57:14.929 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa00 04514000 b0000000 00000000>)
2013-10-02 14:57:14.929 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa10 04514000 b0000000 00000000>)
2013-10-02 14:57:14.930 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa20 04514000 b0000000 00000000>)
2013-10-02 14:57:14.930 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa30 04514000 b0000000 00000000>)
2013-10-02 14:57:14.930 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa40 04514000 b0000000 00000000>)
2013-10-02 14:57:14.930 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa50 04514000 b0000000 00000000>)
2013-10-02 14:57:14.931 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<ffe0>)
2013-10-02 14:57:14.931 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000aa60 04514000 b0000000 00000000>)
2013-10-02 14:57:14.931 Max[24179:707] -[SensorTag peripheral:didDiscoverServices:]: Unknown (<f000ffc0 04514000 b0000000 00000000>)
	 */
	for(CBService *aService in aPeripheral.services)
		{
			NSLog(@"%s: %@\n", __func__, aService.UUID);
			/*
			if([aService.UUID isEqual:[CBUUID UUIDWithString:@"1800"]] ||
			   //[aService.UUID isEqual:[CBUUID UUIDWithString:@"1801"]] ||
			   [aService.UUID isEqual:[CBUUID UUIDWithString:@"180a"]] ||
			   [aService.UUID isEqual:[CBUUID UUIDWithString:@"ffe0"]])// ||
				//[aService.UUID isEqual:[CBUUID UUIDWithString:@"f000aa00-04514000-b0000000-00000000"]])
				*/
				{
					[aPeripheral discoverCharacteristics:nil forService:aService];
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
					if([aService.UUID isEqual:[CBUUID UUIDWithString:CBUUIDGenericAccessProfileString]]){
					[aPeripheral discoverCharacteristics:nil forService:aService];
					}
					*/
				}
		}
}

// Invoked upon completion of a -[discoverCharacteristics:forService:] request.
// Perform appropriate operations on interested characteristics
- (void) peripheral:(CBPeripheral *)aPeripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error 
{    
	if([service.UUID isEqual:[CBUUID UUIDWithString:@"180a"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			//if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A29"]] || // manufacturer name
				//[aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A24"]] || // model number
				//[aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A25"]]){ // serial number
				[aPeripheral readValueForCharacteristic:aChar];
				//}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"1800"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			//if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A00"]]){ // device name
				[aPeripheral readValueForCharacteristic:aChar];
				//}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"ffe0"]]){
		for(CBCharacteristic *aChar in service.characteristics){
			[aPeripheral readValueForCharacteristic:aChar];
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA00-0451-4000-B000-000000000000"]]){
		// temperature 
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA01-0451-4000-B000-000000000000"]]){
				// set up notification for temperature data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA02-0451-4000-B000-000000000000"]]){
				// turn it on
				uint8_t val = 1;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA10-0451-4000-B000-000000000000"]]){
		// accelerometer
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA11-0451-4000-B000-000000000000"]]){
				// set up notification for accelerometer data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA12-0451-4000-B000-000000000000"]]){
				// turn it on
				uint8_t val = 1;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA13-0451-4000-B000-000000000000"]]){
				// set the update rate to 100 ms (val * 10)
				uint8_t val = 10;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA20-0451-4000-B000-000000000000"]]){
		// humidity
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA21-0451-4000-B000-000000000000"]]){
				// set up notification for humidity data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA22-0451-4000-B000-000000000000"]]){
				// turn it on
				uint8_t val = 1;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA30-0451-4000-B000-000000000000"]]){
		// magnetometer
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA31-0451-4000-B000-000000000000"]]){
				// set up notification for magnetometer data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA32-0451-4000-B000-000000000000"]]){
				// turn it on
				uint8_t val = 1;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA33-0451-4000-B000-000000000000"]]){
				// set the update rate to 100 ms (val * 10)
				uint8_t val = 10;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA40-0451-4000-B000-000000000000"]]){
		// barometer
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA41-0451-4000-B000-000000000000"]]){
				// set up notification for barometer data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA42-0451-4000-B000-000000000000"]]){
				// turn it on
				//uint8_t val = 2;
				//NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				//[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
				//val = 1;
				//valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				//[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA43-0451-4000-B000-000000000000"]]){
				//uint8_t val = 2;
				//NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				//[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
				NSLog(@"%s: barometer calibration: %lu\n", __func__, (unsigned long)[aChar.value length]);
			}
		}
	}else if([service.UUID isEqual:[CBUUID UUIDWithString:@"F000AA50-0451-4000-B000-000000000000"]]){
		// gyro
		for(CBCharacteristic *aChar in service.characteristics){
			if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA51-0451-4000-B000-000000000000"]]){
				// set up notification for gyro data
				[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
			}else if([aChar.UUID isEqual:[CBUUID UUIDWithString:@"F000AA52-0451-4000-B000-000000000000"]]){
				// turn it on and ask for x, y, and z
				uint8_t val = 7;
				NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
				[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
			}
		}
	}else{
		//NSLog(@"%s: service not handled: %@\n", __func__, service.UUID);
		for(CBCharacteristic *aChar in service.characteristics){
			[aPeripheral readValueForCharacteristic:aChar];
		}
	}
}

// Invoked upon completion of a -[readValueForCharacteristic:] request or on the reception of a notification/indication.
- (void) peripheral:(CBPeripheral *)aPeripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error 
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *msg_self = osc_message_u_alloc();
	osc_bundle_u_addMsg(b, msg_self);
	long baseaddresslen = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:NULL buf:NULL buflen:0] + 1;
	char baseaddress[baseaddresslen];
	[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:NULL buf:baseaddress buflen:baseaddresslen];
	osc_message_u_setAddress(msg_self, "/self");
	osc_message_u_appendString(msg_self, baseaddress);

	//NSLog(@"%s: %@", __func__, characteristic.UUID);
	if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A00"]]){
		// Value for serial number received
		NSLog(@"%s: device name: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A01"]]){
		// Value for serial number received
		NSLog(@"%s: appearance: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A02"]]){
		// Value for serial number received
		NSLog(@"%s: peripheral privacy flag: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A03"]]){
		// Value for serial number received
		NSLog(@"%s: reconnection address: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A04"]]){
		// Value for serial number received
		NSLog(@"%s: peripheral preferred connection parameters: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A05"]]){
		// Value for serial number received
		NSLog(@"%s: service changed: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A23"]]){
		// Value for serial number received
		NSLog(@"%s: system id: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A24"]]){
		// Value for model number received
		NSLog(@"%s: model number: %s\n", __func__, [characteristic.value bytes]);
		/*
		t_osc_msg_u *msg_data = osc_message_u_alloc();
		osc_bundle_u_addMsg(b, msg_data);
		char data_address[128];
		sprintf(data_address, "/%s/devicename", name);
		osc_message_u_appendString(msg_data, [characteristic.value bytes]);
		ostag_replaceSpacesWithSlashes(sizeof(data_address), data_address);
		osc_message_u_setAddress(msg_data, data_address);
		*/
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A25"]]){
		// Value for serial number received
		NSLog(@"%s: serial number: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A26"]]){
		// Value for serial number received
		NSLog(@"%s: firmware rev: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A27"]]){
		// Value for serial number received
		NSLog(@"%s: hardware rev: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A28"]]){
		// Value for serial number received
		NSLog(@"%s: software rev: %s\n", __func__, [characteristic.value bytes]);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A29"]]){
		// Value for manufacturer name received
		NSLog(@"%s: manufacturer name: %s\n", __func__, [characteristic.value bytes]);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA01-0451-4000-B000-000000000000"]]){
		// temp in celsius
		float tAmb = [sensorTMP006 calcTAmb:characteristic.value];
		float tObj = [sensorTMP006 calcTObj:characteristic.value];

		char *addresses[] = {"/temperature/ambient/celsius", "/temperature/ir/celsius"};
		float dat[3] = {tAmb, tObj};
		for(int i = 0; i < sizeof(addresses) / sizeof(char*); i++){
			long l = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:NULL buflen:0] + 1;
			char address[l];
			[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:address buflen:l];
			t_osc_msg_u *msgx = osc_message_u_allocWithFloat(address, dat[i]);
			osc_bundle_u_addMsg(b, msgx);
		}
		//NSLog(@"%s: ambient temp = %f", __func__, tAmb);
		//NSLog(@"%s: IR temp = %f", __func__, tObj);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA11-0451-4000-B000-000000000000"]]){
		// acc
		float x = [sensorKXTJ9 calcXValue:characteristic.value];
		float y = [sensorKXTJ9 calcYValue:characteristic.value];
		float z = [sensorKXTJ9 calcZValue:characteristic.value];

		char *addresses[] = {"/accelerometer/x", "/accelerometer/y", "/accelerometer/z"};
		float dat[3] = {x, y, z};
		for(int i = 0; i < 3; i++){
			long l = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:NULL buflen:0] + 1;
			char address[l];
			[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:address buflen:l];
			t_osc_msg_u *msgx = osc_message_u_allocWithFloat(address, dat[i]);
			osc_bundle_u_addMsg(b, msgx);
		}
		//NSLog(@"%s: acc: %f %f %f\n", __func__, x, y, z);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA21-0451-4000-B000-000000000000"]]){
		// humidity
		float rHVal = [sensorSHT21 calcPress:characteristic.value];

		long l = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:"/humidity" buf:NULL buflen:0] + 1;
		char address[l];
		[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:"/humidity" buf:address buflen:l];
		t_osc_msg_u *msgx = osc_message_u_allocWithFloat(address, rHVal);
		osc_bundle_u_addMsg(b, msgx);
		//NSLog(@"%s: hum: %f\n", __func__, rHVal);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA31-0451-4000-B000-000000000000"]]){
		// magnetometer
		float x = [sensorMAG3110 calcXValue:characteristic.value];
		float y = [sensorMAG3110 calcYValue:characteristic.value];
		float z = [sensorMAG3110 calcZValue:characteristic.value];

		char *addresses[] = {"/magnetometer/x", "/magnetometer/y", "/magnetometer/z"};
		float dat[3] = {x, y, z};
		for(int i = 0; i < 3; i++){
			long l = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:NULL buflen:0] + 1;
			char address[l];
			[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:address buflen:l];
			t_osc_msg_u *msgx = osc_message_u_allocWithFloat(address, dat[i]);
			osc_bundle_u_addMsg(b, msgx);
		}
		//NSLog(@"%s: mag: %f %f %f\n", __func__, x, y, z);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA41-0451-4000-B000-000000000000"]]){
		// barometer
		NSLog(@"%s: BAROMETER", __func__);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA43-0451-4000-B000-000000000000"]]){
		// barometer calibration
		NSLog(@"%s: BAROMETER calibration", __func__);
	}else if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"F000AA51-0451-4000-B000-000000000000"]]){
		// gyro
		float x = [sensorIMU3000 calcXValue:characteristic.value];
		float y = [sensorIMU3000 calcYValue:characteristic.value];
		float z = [sensorIMU3000 calcZValue:characteristic.value];

		char *addresses[] = {"/gyro/x", "/gyro/y", "/gyro/z"};
		float dat[3] = {x, y, z};
		for(int i = 0; i < 3; i++){
			long l = [self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:NULL buflen:0] + 1;
			char address[l];
			[self makeOSCAddressFromPeripheral:aPeripheral withPrefix:NULL withPostfix:addresses[i] buf:address buflen:l];
			t_osc_msg_u *msgx = osc_message_u_allocWithFloat(address, dat[i]);
			osc_bundle_u_addMsg(b, msgx);
		}
		//NSLog(@"%s: gyro: %f %f %f\n", __func__, x, y, z);
	}else{
		NSLog(@"%s: not handled: %@", __func__, characteristic.UUID);
	}

	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf){
		t_atom a[2];
		atom_setlong(a, len);
		atom_setlong(a + 1, (long)buf);
		schedule_delay(maxobj, (method)ostag_outputOSCBundle, 0, ps_FullPacket, 2, a);
		osc_bundle_u_free(b);
		// don't free buf here!! it's pointer has been passed to the scheduler and will be freed when
		// the callback executes
	}
}

- (void)ostag_init:(struct _ostag *)x
{
	manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
	[self startScan];
	maxobj = x;
}

@end

// Max object

t_class *ostag_class;

void ostag_outputOSCBundle(t_ostag *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	if(ptr){
		omax_util_outletOSC(x->outlet, len, ptr);
		osc_mem_free(ptr); // scary business...
	}

}

void ostag_bang(t_ostag *x)
{
}

void ostag_assist(t_ostag *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void ostag_doc(t_ostag *x)
{
	omax_doc_outletDoc(x->outlet);
}

void ostag_free(t_ostag *x)
{
	SensorTag *st = x->st;
	[st release];
}

void *ostag_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ostag *x = NULL;
	SensorTag *st = [[SensorTag alloc] init];
	if(st){
		if((x = (t_ostag *)object_alloc(ostag_class))){
			x->outlet = outlet_new((t_object *)x, "FullPacket");
			[st ostag_init:x];
			x->st = st;
		}
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.io.bluetoothle.sensortag", (method)ostag_new, (method)ostag_free, sizeof(t_ostag), 0L, A_GIMME, 0);

	//class_addmethod(c, (method)ostag_fullPacket, "FullPacket", A_GIMME, 0);
	class_addmethod(c, (method)ostag_assist, "assist", A_CANT, 0);
	class_addmethod(c, (method)ostag_doc, "doc", 0);
	//class_addmethod(c, (method)ostag_bang, "bang", 0);
	class_addmethod(c, (method)odot_version, "version", 0);

	ps_FullPacket = gensym("FullPacket");
	
	class_register(CLASS_BOX, c);
	ostag_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
