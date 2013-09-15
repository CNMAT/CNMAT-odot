#define OMAX_DOC_NAME "o.io.bluetoothle.hrm"
#define OMAX_DOC_SHORT_DESC "Outputs OSC data from a Bluetooth LE heart rate monitor."
#define OMAX_DOC_LONG_DESC "Reports OSC data from a Bluetooth LE heart rate monitor."
#define OMAX_DOC_INLETS_DESC (char *[]){""}
#define OMAX_DOC_OUTLETS_DESC (char *[]){"OSC packet."}
#define OMAX_DOC_SEEALSO (char *[]){""}

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>
#import <IOBluetooth/IOBluetooth.h>
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

void ohrm_replaceSpacesWithSlashes(long len, char *buf)
{
	char *ptr = buf;
	while(ptr - buf < len && *ptr != '\0'){
		if(*ptr == ' '){
			*ptr = '/';
		}
		ptr++;
	}
}

//@interface HeartRateMonitorAppDelegate : NSObject <NSApplicationDelegate, CBCentralManagerDelegate, CBPeripheralDelegate> 
@interface HeartRateMonitor : NSObject <CBCentralManagerDelegate, CBPeripheralDelegate> 
{
	//NSWindow *window;
	//NSWindow *scanSheet;
	//NSView *heartView;
	//NSTimer *pulseTimer;
	//NSArrayController *arrayController;
    
	CBCentralManager *manager;
	//CBPeripheral *peripheral;
    
	//NSMutableArray *heartRateMonitors;
    
	//NSString *manufacturer;
    
	//uint16_t heartRate;
    
	//IBOutlet NSButton* connectButton;
	//BOOL autoConnect;
	//NSString *connected;

	struct _ohrm *maxobj;
    
	// Progress Indicator
	//IBOutlet NSButton * indicatorButton;
	//IBOutlet NSProgressIndicator *progressIndicator;    
}

// max object
typedef struct _ohrm
{
	t_object o;
	HeartRateMonitor *hrm;
	void *outlet;
} t_ohrm;

// max object forward decls
void ohrm_outputOSCBundle(t_ohrm *x, t_symbol *msg, int argc, t_atom *argv);

//@property (assign) IBOutlet NSWindow *window;
//@property (assign) IBOutlet NSWindow *scanSheet;
//@property (assign) IBOutlet NSView *heartView;
//@property (assign) IBOutlet NSArrayController *arrayController;
//@property (assign) uint16_t heartRate;
//@property (retain) NSTimer *pulseTimer;
//@property (retain) NSMutableArray *heartRateMonitors;
//@property (copy) NSString *manufacturer;
//@property (copy) NSString *connected;
@property (retain) CBCentralManager *manager;

//- (IBAction) openScanSheet:(id) sender;
//- (IBAction) closeScanSheet:(id)sender;
//- (IBAction) cancelScanSheet:(id)sender;
//- (IBAction) connectButtonPressed:(id)sender;

- (void) startScan;
- (void) stopScan;
- (BOOL) isLECapableHardware;

//- (void) pulse;
- (uint16_t) computeHeartRate:(NSData *)data;
- (t_symbol *) makeOSCAddressFromPeripheral:(CBPeripheral *)p withPrefix:(const char *)prefix withPostfix:(const char *)postfix;

- (void)ohrm_init:(struct _ohrm *)x;


@end

@implementation HeartRateMonitor

//@synthesize window;
//@synthesize heartRate;
//@synthesize heartView;
//@synthesize pulseTimer;
//@synthesize scanSheet;
//@synthesize heartRateMonitors;
//@synthesize arrayController;
//@synthesize manufacturer;
//@synthesize connected;
@synthesize manager;

#define PULSESCALE 1.2
#define PULSEDURATION 0.2

// relevant stuff moved to Max's new instance routine
/*
  - (void)applicationDidFinishLaunching:(NSNotification *)aNotification
  {
  self.heartRate = 0;
  // autoConnect = TRUE; uncomment this line if you want to automatically connect to previosly known peripheral 
  self.heartRateMonitors = [NSMutableArray array];
       
  [NSAnimationContext beginGrouping];
  [[NSAnimationContext currentContext] setDuration:0.];
  [self.heartView layer].position = CGPointMake( [[self.heartView layer] frame].size.width / 2, [[self.heartView layer] frame].size.height / 2 );
  [self.heartView layer].anchorPoint = CGPointMake(0.5, 0.5);
  [NSAnimationContext endGrouping];

  manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
  if( autoConnect )
  {
  [self startScan];
  }
  }
*/

- (void) dealloc
{
	[self stopScan];

	//if(peripheral){
	//[manager cancelPeripheralConnection:peripheral];        
	//}    
	//[peripheral setDelegate:nil];
	//[peripheral release];
    
	//[heartRateMonitors release];

	[manager release];
    
	[super dealloc];
}

/* 
   Disconnect peripheral when application terminate 
   - (void) applicationWillTerminate:(NSNotification *)notification
   {
   if(peripheral)
   {
   [manager cancelPeripheralConnection:peripheral];
   }
   }
*/

#pragma mark - Scan sheet methods

/* 
   Open scan sheet to discover heart rate peripherals if it is LE capable hardware 
   - (IBAction)openScanSheet:(id)sender 
   {
   if( [self isLECapableHardware] )
   {
   autoConnect = FALSE;
   [arrayController removeObjects:heartRateMonitors];
   [NSApp beginSheet:self.scanSheet modalForWindow:self.window modalDelegate:self didEndSelector:@selector(sheetDidEnd:returnCode:contextInfo:) contextInfo:nil];
   [self startScan];
   }
   }
*/

/*
  Close scan sheet once device is selected
  - (IBAction)closeScanSheet:(id)sender 
  {
  [NSApp endSheet:self.scanSheet returnCode:NSAlertDefaultReturn];
  [self.scanSheet orderOut:self];    
  }
*/

/*
  Close scan sheet without choosing any device
  - (IBAction)cancelScanSheet:(id)sender 
  {
  [NSApp endSheet:self.scanSheet returnCode:NSAlertAlternateReturn];
  [self.scanSheet orderOut:self];
  }
*/

/* 
   This method is called when Scan sheet is closed. Initiate connection to selected heart rate peripheral
   - (void)sheetDidEnd:(NSWindow *)sheet returnCode:(NSInteger)returnCode contextInfo:(void *)contextInfo 
   {
   [self stopScan];
   if( returnCode == NSAlertDefaultReturn )
   {
   NSIndexSet *indexes = [self.arrayController selectionIndexes];
   if ([indexes count] != 0) 
   {
   NSUInteger anIndex = [indexes firstIndex];
   peripheral = [self.heartRateMonitors objectAtIndex:anIndex];
   [peripheral retain];
   [indicatorButton setHidden:FALSE];
   [progressIndicator setHidden:FALSE];
   [progressIndicator startAnimation:self];
   [connectButton setTitle:@"Cancel"];
   [manager connectPeripheral:peripheral options:nil];
   }
   }
   }
*/

#pragma mark - Connect Button

/*
  This method is called when connect button pressed and it takes appropriate actions depending on device connection state
  - (IBAction)connectButtonPressed:(id)sender
  {
  if(peripheral && ([peripheral isConnected]))
  { 
  //Disconnect if it's already connected
  [manager cancelPeripheralConnection:peripheral]; 
  }
  else if (peripheral)
  {
  //Device is not connected, cancel pendig connection 
  [indicatorButton setHidden:TRUE];
  [progressIndicator setHidden:TRUE];
  [progressIndicator stopAnimation:self];
  [connectButton setTitle:@"Connect"];
  [manager cancelPeripheralConnection:peripheral];
  [self openScanSheet:nil];
  }
  else
  {   //No outstanding connection, open scan sheet 
  [self openScanSheet:nil];
  }
  }
*/

#pragma mark - Heart Rate Data

/* 
   Update UI with heart rate data received from device
*/
- (uint16_t) computeHeartRate:(NSData *)data 
{
	const uint8_t *reportData = [data bytes];
	uint16_t bpm = 0;
    
	if ((reportData[0] & 0x01) == 0) 
		{
			/* uint8 bpm */
			bpm = reportData[1];
		} 
	else 
		{
			/* uint16 bpm */
			bpm = CFSwapInt16LittleToHost(*(uint16_t *)(&reportData[1]));
		}
    
	//uint16_t oldBpm = self.heartRate;
	//self.heartRate = bpm;
	return bpm;
	//if (oldBpm == 0) 
	//{
	//[self pulse];
	//self.pulseTimer = [NSTimer scheduledTimerWithTimeInterval:(60. / heartRate) target:self selector:@selector(pulse) userInfo:nil repeats:NO];
	//}
}

- (t_symbol *) makeOSCAddressFromPeripheral:(CBPeripheral *)p withPrefix:(const char *)prefix withPostfix:(const char *)postfix
{
	const char *name = [p.name UTF8String];
	char buf[128];
	if(prefix && postfix){
		sprintf(buf, "%s/%s%s", prefix, name, postfix);
	}else if(prefix){
		sprintf(buf, "%s/%s", prefix, name);
	}else if(postfix){
		sprintf(buf, "/%s%s", name, postfix);
	}else{
		sprintf(buf, "/%s", name);
	}
	char *ptr = buf;
	while(*ptr != '\0' && ptr - buf < sizeof(buf)){
		if(*ptr == ' '){
			*ptr = '/';
		}
		ptr++;
	}
	return gensym(buf);
}

- (t_osc_msg_u *) makeOSCSelfMessage:(CBPeripheral *)p
{
	t_osc_msg_u *m = osc_message_u_alloc();
	osc_message_u_setAddress(m, "/self");
	t_symbol *s = [self makeOSCAddressFromPeripheral:p withPrefix:NULL withPostfix:NULL];
	osc_message_u_appendString(m, s->s_name);
	return m;
}

/*
  Update pulse UI
  - (void) pulse 
  {
  CABasicAnimation *pulseAnimation = [CABasicAnimation animationWithKeyPath:@"transform.scale"];
    
  pulseAnimation.toValue = [NSNumber numberWithFloat:PULSESCALE];
  pulseAnimation.fromValue = [NSNumber numberWithFloat:1.0];
    
  pulseAnimation.duration = PULSEDURATION;
  pulseAnimation.repeatCount = 1;
  pulseAnimation.autoreverses = YES;
  pulseAnimation.timingFunction = [CAMediaTimingFunction functionWithName:kCAMediaTimingFunctionEaseIn];
    
  [[heartView layer] addAnimation:pulseAnimation forKey:@"scale"];
    
  self.pulseTimer = [NSTimer scheduledTimerWithTimeInterval:(60. / heartRate) target:self selector:@selector(pulse) userInfo:nil repeats:NO];
  }
*/

#pragma mark - Start/Stop Scan methods

/*
  Uses CBCentralManager to check whether the current platform/hardware supports Bluetooth LE. An alert is raised if Bluetooth LE is not enabled or is not supported.
*/
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
    
	NSLog(@"Central manager state: %@", state);
    
	//[self cancelScanSheet:nil];
    
	//NSAlert *alert = [[[NSAlert alloc] init] autorelease];
	//[alert setMessageText:state];
	//[alert addButtonWithTitle:@"OK"];
	//[alert setIcon:[[[NSImage alloc] initWithContentsOfFile:@"AppIcon"] autorelease]];
	//[alert beginSheetModalForWindow:[self window] modalDelegate:self didEndSelector:nil contextInfo:nil];
	return FALSE;
}

/*
  Request CBCentralManager to scan for heart rate peripherals using service UUID 0x180D
*/
- (void) startScan 
{
	[manager scanForPeripheralsWithServices:[NSArray arrayWithObject:[CBUUID UUIDWithString:@"180D"]] options:nil];
}

/*
  Request CBCentralManager to stop scanning for heart rate peripherals
*/
- (void) stopScan 
{
	[manager stopScan];
}

#pragma mark - CBCentralManager delegate methods
/*
  Invoked whenever the central manager's state is updated.
*/
- (void) centralManagerDidUpdateState:(CBCentralManager *)central 
{
	[self isLECapableHardware];
}
    
/*
  Invoked when the central discovers heart rate peripheral while scanning.
*/
- (void) centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)aPeripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI 
{    
	[aPeripheral retain];
	[manager connectPeripheral:aPeripheral options: nil];

	//name Polar H7 0055B1, UUID 8E79BD84-88D5-41F4-B8E0-5704A5569027
	//NSMutableArray *peripherals = [self mutableArrayValueForKey:@"heartRateMonitors"];
	//if( ![self.heartRateMonitors containsObject:aPeripheral] )
        //[peripherals addObject:aPeripheral];

	//for(int i = 0; i < [peripherals count]; i++){
	//CBPeripheral *p = [peripherals objectAtIndex:i];
	//NSString *n = p.name;
	//post("name %s\n", [n UTF8String]);
	//if(![p.name compare:@"Polar H7 0055B1"]){
	//post("yay!");
	//[p retain];
	//[manager connectPeripheral:p options:nil];
	//}
	//}
    
	/* Retreive already known devices */
	//if(autoConnect)
	//{


        //[manager retrievePeripherals:[NSArray arrayWithObject:(id)aPeripheral.UUID]];


	//}
	[self startScan];
}

/*
  Invoked when the central manager retrieves the list of known peripherals.
  Automatically connect to first known peripheral
*/
// this method should no longer be called...
- (void)centralManager:(CBCentralManager *)central didRetrievePeripherals:(NSArray *)peripherals
{
	//NSLog(@"Retrieved peripheral: %lu - %@", [peripherals count], peripherals);
    
	//[self stopScan];
    
	/* If there are any known devices, automatically connect to it.*/
	/*
	if([peripherals count] >=1)
		{
			//[indicatorButton setHidden:FALSE];
			//[progressIndicator setHidden:FALSE];
			//[progressIndicator startAnimation:self];
			peripheral = [peripherals objectAtIndex:0];
			[peripheral retain];
			//[connectButton setTitle:@"Cancel"];
			[manager connectPeripheral:peripheral options:[NSDictionary dictionaryWithObject:[NSNumber numberWithBool:YES] forKey:CBConnectPeripheralOptionNotifyOnDisconnectionKey]];
		}
	*/
}

/*
  Invoked whenever a connection is succesfully created with the peripheral. 
  Discover available services on the peripheral
*/
- (void) centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)aPeripheral 
{    
	[aPeripheral setDelegate:self];
	[aPeripheral discoverServices:nil];
	
	//self.connected = @"Connected";
	//[connectButton setTitle:@"Disconnect"];
	//[indicatorButton setHidden:TRUE];
	//[progressIndicator setHidden:TRUE];
	//[progressIndicator stopAnimation:self];
}

/*
  Invoked whenever an existing connection with the peripheral is torn down. 
  Reset local variables
*/
- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	//self.connected = @"Not connected";
	//[connectButton setTitle:@"Connect"];
	//self.manufacturer = @"";
	//self.heartRate = 0;
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
	//if( peripheral )
	//{
			//[peripheral setDelegate:nil];
			//[peripheral release];
			//peripheral = nil;
	//}
}

/*
  Invoked whenever the central manager fails to create a connection with the peripheral.
*/
- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)aPeripheral error:(NSError *)error
{
	//NSLog(@"Fail to connect to peripheral: %@ with error = %@", aPeripheral, [error localizedDescription]);
	//[connectButton setTitle:@"Connect"]; 
	[aPeripheral setDelegate:nil];
	[aPeripheral release];
	//if( peripheral )
	//{
			//[peripheral setDelegate:nil];
			//[peripheral release];
			//peripheral = nil;
	//}
}

#pragma mark - CBPeripheral delegate methods
/*
  Invoked upon completion of a -[discoverServices:] request.
  Discover available characteristics on interested services
*/
- (void) peripheral:(CBPeripheral *)aPeripheral didDiscoverServices:(NSError *)error 
{
	for (CBService *aService in aPeripheral.services) 
		{
			//NSLog(@"Service found with UUID: %@", aService.UUID);
        
			/* Heart Rate Service */
			if ([aService.UUID isEqual:[CBUUID UUIDWithString:@"180D"]]) 
				{
					[aPeripheral discoverCharacteristics:nil forService:aService];
				}
        
			/* Device Information Service */
			if ([aService.UUID isEqual:[CBUUID UUIDWithString:@"180A"]]) 
				{
					[aPeripheral discoverCharacteristics:nil forService:aService];
				}
        
			/* GAP (Generic Access Profile) for Device Name */
			if ( [aService.UUID isEqual:[CBUUID UUIDWithString:CBUUIDGenericAccessProfileString]] )
				{
					[aPeripheral discoverCharacteristics:nil forService:aService];
				}
		}
}

/*
  Invoked upon completion of a -[discoverCharacteristics:forService:] request.
  Perform appropriate operations on interested characteristics
*/
- (void) peripheral:(CBPeripheral *)aPeripheral didDiscoverCharacteristicsForService:(CBService *)service error:(NSError *)error 
{    
	if ([service.UUID isEqual:[CBUUID UUIDWithString:@"180D"]]) 
		{
			for (CBCharacteristic *aChar in service.characteristics) 
				{
					/* Set notification on heart rate measurement */
					if ([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A37"]]) 
						{
							[aPeripheral setNotifyValue:YES forCharacteristic:aChar];
							//NSLog(@"Found a Heart Rate Measurement Characteristic");
						}
					/* Read body sensor location */
					if ([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A38"]]) 
						{
							[aPeripheral readValueForCharacteristic:aChar];
							//NSLog(@"Found a Body Sensor Location Characteristic");
						} 
            
					/* Write heart rate control point */
					if ([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A39"]])
						{
							uint8_t val = 1;
							NSData* valData = [NSData dataWithBytes:(void*)&val length:sizeof(val)];
							[aPeripheral writeValue:valData forCharacteristic:aChar type:CBCharacteristicWriteWithResponse];
						}
				}
		}
    
	if ( [service.UUID isEqual:[CBUUID UUIDWithString:CBUUIDGenericAccessProfileString]] )
		{
			for (CBCharacteristic *aChar in service.characteristics) 
				{
					/* Read device name */
					if ([aChar.UUID isEqual:[CBUUID UUIDWithString:CBUUIDDeviceNameString]]) 
						{
							[aPeripheral readValueForCharacteristic:aChar];
							//NSLog(@"Found a Device Name Characteristic");
						}
				}
		}
    
	if ([service.UUID isEqual:[CBUUID UUIDWithString:@"180A"]]) 
		{
			for (CBCharacteristic *aChar in service.characteristics) 
				{
					/* Read manufacturer name */
					if ([aChar.UUID isEqual:[CBUUID UUIDWithString:@"2A29"]]) 
						{
							[aPeripheral readValueForCharacteristic:aChar];
							//NSLog(@"Found a Device Manufacturer Name Characteristic");
						}
				}
		}
}

/*
  Invoked upon completion of a -[readValueForCharacteristic:] request or on the reception of a notification/indication.
*/
- (void) peripheral:(CBPeripheral *)aPeripheral didUpdateValueForCharacteristic:(CBCharacteristic *)characteristic error:(NSError *)error 
{
	t_osc_bndl_u *b = osc_bundle_u_alloc();
	t_osc_msg_u *msg_self = [self makeOSCSelfMessage:aPeripheral];
	osc_bundle_u_addMsg(b, msg_self);
	t_osc_msg_u *msg_data = osc_message_u_alloc();
	osc_bundle_u_addMsg(b, msg_data);
	const char *name = [aPeripheral.name UTF8String];
	char data_address[128];
	if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A37"]]){
		/* Updated value for heart rate measurement received */
		if((characteristic.value)  || !error){
			/* Update UI with heart rate data */
			uint16_t hr = [self computeHeartRate:characteristic.value];
			sprintf(data_address, "/%s/heartrate", name);
			osc_message_u_appendInt32(msg_data, hr);
		}
	}else  if([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A38"]]){
		/* Value for body sensor location received */
		//post("sensor location");
		NSData * updatedValue = characteristic.value;        
		uint8_t* dataPointer = (uint8_t*)[updatedValue bytes];
		if(dataPointer){
			uint8_t location = dataPointer[0];
			char *locationString;
			switch(location)
				{
				case 0:
					locationString = "Other";
					break;
				case 1:
					locationString = "Chest";
					break;
				case 2:
					locationString = "Wrist";
					break;
				case 3:
					locationString = "Finger";
					break;
				case 4:
					locationString = "Hand";
					break;
				case 5:
					locationString = "Ear Lobe";
					break;
				case 6: 
					locationString = "Foot";
					break;
				default:
					locationString = "Reserved";
					break;
				}
			sprintf(data_address, "/%s/location", name);
			osc_message_u_appendString(msg_data, locationString);
			//NSLog(@"Body Sensor Location = %@ (%d)", locationString, location);
		}
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:CBUUIDDeviceNameString]]){
		/* Value for device Name received */
		//NSString *deviceName = [[[NSString alloc] initWithData:characteristic.value encoding:NSUTF8StringEncoding] autorelease];
		sprintf(data_address, "/%s/devicename", name);
		//osc_message_u_appendString(msg_data, [deviceName UTF8String]);
		osc_message_u_appendString(msg_data, [characteristic.value bytes]);
		//NSLog(@"Device Name = %@", deviceName);
	}else if ([characteristic.UUID isEqual:[CBUUID UUIDWithString:@"2A29"]]){
		/* Value for manufacturer name received */
		//self.manufacturer = [[[NSString alloc] initWithData:characteristic.value encoding:NSUTF8StringEncoding] autorelease];
		sprintf(data_address, "/%s/manufacturer", name);
		//osc_message_u_appendString(msg_data, [manufacturer UTF8String]);
		osc_message_u_appendString(msg_data, [characteristic.value bytes]);
		//NSLog(@"Manufacturer Name = %@", self.manufacturer);
	}else{
	}
	ohrm_replaceSpacesWithSlashes(sizeof(data_address), data_address);
	osc_message_u_setAddress(msg_data, data_address);
	long len = 0;
	char *buf = NULL;
	osc_bundle_u_serialize(b, &len, &buf);
	if(buf){
		t_atom a[2];
		atom_setlong(a, len);
		atom_setlong(a + 1, (long)buf);
		schedule_delay(maxobj, (method)ohrm_outputOSCBundle, 0, ps_FullPacket, 2, a);
		osc_bundle_u_free(b);
		// don't free buf here!! it's pointer has been passed to the scheduler and will be freed when
		// the callback executes
	}
}

- (void)ohrm_init:(struct _ohrm *)x
{
	//self.heartRate = 0;
	//autoConnect = TRUE; //uncomment this line if you want to automatically connect to previosly known peripheral 
	//self.heartRateMonitors = [NSMutableArray array];
       
	manager = [[CBCentralManager alloc] initWithDelegate:self queue:nil];
	//if(autoConnect){
		[self startScan];
		//}
	maxobj = x;
}

@end

// Max object

t_class *ohrm_class;

void ohrm_outputOSCBundle(t_ohrm *x, t_symbol *msg, int argc, t_atom *argv)
{
	OMAX_UTIL_GET_LEN_AND_PTR;
	if(ptr){
		omax_util_outletOSC(x->outlet, len, ptr);
		osc_mem_free(ptr); // scary business...
	}

}

void ohrm_bang(t_ohrm *x)
{
}

void ohrm_assist(t_ohrm *x, void *b, long io, long num, char *buf)
{
	omax_doc_assist(io, num, buf);
}

void ohrm_free(t_ohrm *x)
{
	HeartRateMonitor *hrm = x->hrm;
	[hrm release];
}

void *ohrm_new(t_symbol *msg, short argc, t_atom *argv)
{
	t_ohrm *x = NULL;
	HeartRateMonitor *hrm = [[HeartRateMonitor alloc] init];
	if(hrm){
		if((x = (t_ohrm *)object_alloc(ohrm_class))){
			x->outlet = outlet_new((t_object *)x, "FullPacket");
			[hrm ohrm_init:x];
			x->hrm = hrm;
		}
	}
	return x;
}

int main(void)
{
	t_class *c = class_new("o.io.bluetoothle.hrm", (method)ohrm_new, (method)ohrm_free, sizeof(t_ohrm), 0L, A_GIMME, 0);

	//class_addmethod(c, (method)ohrm_fullPacket, "FullPacket", A_GIMME, 0);
	//class_addmethod(c, (method)ohrm_assist, "assist", A_CANT, 0);
	//class_addmethod(c, (method)ohrm_doc, "doc", 0);
	//class_addmethod(c, (method)ohrm_bang, "bang", 0);
	//class_addmethod(c, (method)ohrm_anything, "anything", A_GIMME, 0);

	// remove this if statement when we stop supporting Max 5
	//if(omax_dict_resolveDictStubs()){
	//class_addmethod(c, (method)omax_dict_dictionary, "dictionary", A_GIMME, 0);
	//}
	class_addmethod(c, (method)odot_version, "version", 0);

	ps_FullPacket = gensym("FullPacket");
	
	class_register(CLASS_BOX, c);
	ohrm_class = c;

	common_symbols_init();

	ODOT_PRINT_VERSION;
	return 0;
}
