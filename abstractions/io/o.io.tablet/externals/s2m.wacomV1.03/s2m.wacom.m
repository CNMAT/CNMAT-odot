/**
	============================================================================
    \file s2m.wacom.m
    \version 1.03
    \author Charles Gondre - CNRS-LMA-S2M
    
    \date 24 octobre 2011
    
	----------------------------------------------------------------------------
    
    \brief an external to get the wacom data. Only works with max 6 or newer.
            and with OS 10.6 or newer.

	----------------------------------------------------------------------------
    
    \todo : -  
    
    \known bugs :
            - absolute Z does not output a correct value (-1 everytime)
            - no cursor bug
            
            
    HISTORY : 
        v1 : initial release. distribuee le 2 mars 2012
        v1.01 : 2 juillet 2012. correction of a bug with the trackpad. mouse wheel support added.
        v1.02 : 29 avril 2013. added a test to return faster if not polling
        v1.03 : 23 octobre 2013. fix : transducer index issue
        v1.1 : 29 octobre 2013. support 64bit
    
	----------------------------------------------------------------------------
    
    This code use ObjectiveMax and is also based on some code provided by wacom 
    ( see https://github.com/jamoma/ObjectiveMax and http://www.wacomeng.com )
    
    !! WARNING !!   we use a custom modified version of the objective max framework.
                    it had some bugs and was missing functionnalities I needed...
                    so I modified it just a bit. charles.
 
 ============================================================================
 * This software is governed by the CeCILL license under French law and
 * abiding by the rules of distribution of free software.  You can use,
 * modify and/ or redistribute the software under the terms of the CeCILL
 * license as circulated by CEA, CNRS, and INRIA at the following URL
 * "http://www.cecill.info".
 *
 * As a counterpart to the access to the source code and rights to copy,
 * modify and redistribute granted by the license, users are provided
 * only with a limited warranty and the software's author, the holder of
 * the economic rights, and the successive licensors have only limited
 * liability.
 *
 * In this respect, the user's attention is drawn to the risks associated
 * with loading, using, modifying and/or developing or reproducing the
 * software by the user in light of its specific status of free software,
 * that may mean that it is complicated to manipulate, and that also
 * therefore means that it is reserved for developers and experienced
 * professionals having in-depth computer knowledge. Users are therefore
 * encouraged to load and test the software's suitability as regards
 * their requirements in conditions enabling the security of their
 * systems and/or data to be ensured and, more generally, to use and
 * operate it in the same conditions as regards security.
 *
 * The fact that you are presently reading this means that you have had
 * knowledge of the CeCILL license and that you accept its terms.
 
 ============================================================================
*/

#import <Cocoa/Cocoa.h>
#import <Carbon/Carbon.h>
#import <CoreServices/CoreServices.h>


#import "MaxObject.h"
#import "maxobjectbridge.h"


#import "Wacom/TabletAEDictionary.h"
#import "Wacom/WacomTabletDriver.h"

#define S2MWACOM_VERSION "1.1"

//----------------------------------------------------------------------------//
//                               INTERFACES                                   //
//----------------------------------------------------------------------------//


@interface Transducer : NSObject
{
    @private
    
	NSString *name;
	UInt64	uniqueID;
	UInt32	serialNumber;
}

@property( copy ) NSString *name;
@property(assign) UInt64	uniqueID;
@property(assign) UInt32	serialNumber;

@end

//----------------------------------------------------------------------------//

@interface Tablet : NSObject
{
    @private
    
	NSString *name;
    BOOL    connected;
    
	SInt32	xDimension; // in pixels
	SInt32	yDimension; // in pixels
	float	xDimensionMm; // in mm
	float	yDimensionMm; // in mm
	SInt32	resolution;
	SInt32	tiltLevels;
    
    NSUInteger  menuIndex; // index de la tablette dans le menu
        
    NSUInteger systemTabletID;
    
    UInt32  contextID;
    
	NSMutableArray *transducers;
}

@property( copy ) NSString *name;
@property(assign) BOOL connected;
@property(assign) SInt32 xDimension;
@property(assign) SInt32 yDimension;
@property(assign) float xDimensionMm;
@property(assign) float yDimensionMm;
@property(assign) SInt32 resolution;
@property(assign) SInt32 tiltLevels;
@property(assign) NSUInteger menuIndex;

@property(assign) NSMutableArray *transducers;

@property(assign) NSUInteger systemTabletID;
@property(assign) UInt32 contextID;


@end


//----------------------------------------------------------------------------//

@interface Tool : NSObject
{
    @private
    
    /* this message is valid for mouse events with subtype NSTabletPointEventSubtype
    or NSTabletProximityEventSubtype, and for NSTabletPoint and NSTabletProximity events */
    NSUInteger  deviceID;
    
	UInt64      uniqueID;   // vendor defined unique ID (unsigned long long)
	NSUInteger	systemTabletID; // system assigned unique tablet ID
}

@property(assign) UInt64        uniqueID;
@property(assign) NSUInteger	deviceID;
@property(assign) NSUInteger	systemTabletID;
@end


//----------------------------------------------------------------------------//
@interface S2Mwacom : MaxObject
{
	@private

	NSInteger prevAbsoluteX;
	NSInteger prevAbsoluteY;
	NSInteger prevAbsoluteZ;
	NSUInteger prevButtons;
	float prevPressure;
	NSPoint prevTilt;

	float prevTangentialPressure;
	float prevRotation;
        
    long backgroundEnabledAttribute;
	BOOL polling;
	long nofilterAttribute ;
    long mouseAttribute;
    
    id eventMonLocal;
    id eventMonGlobal;
    NSEventMask observedTypes;
    
    NSInteger selectedMenuIndex; // index choisi dans le menu
    NSInteger selectedTabletIndex; // index de la tablette choisie dans 'tablets'
    NSInteger selectedToolIndex; // index dans le 'transducers' de la tablette du tool choisi
    
    NSInteger wantedTabletSystemID; // selected tablet's uniqueID
    UInt64 wantedToolUniqueID; // selected tool's uniqueID
    
	NSMutableArray *tablets;
    NSMutableArray *knownTools;
    
    long xyrangeAttribute;
    NSInteger lastGesture; // 0, 1, 2, 3 for drag, move, up, down
    
    NSInteger maxMenuIndex;
}

- (NSRect) desktopRect;
- (void) setPortionOfScreen:(NSRect) screenPortion;
- (void) outputValuesFromEvent:(NSEvent *) theEvent;
- (void) manageProximityEvent:(NSEvent *) theEvent;

- (void) useRealAbsoluteCoordinates; 
- (void) movesCursor:(BOOL) moveEnable;
- (void) background:(BOOL) backgroundEnable;

- (t_max_err) pollMessage;
- (t_max_err) nopollMessage;
- (t_max_err) menuMessage;
- (t_max_err) getinfoMessage;
- (void) getTabletsAndTools;
- (t_max_err) postInit;

@property(assign) NSMutableArray *tablets;
@property(assign) NSMutableArray *knownTools;

@end


//----------------------------------------------------------------------------//
t_class *thisClass;
/** Entry Point when loaded by Max */
int main (void)
{
	thisClass = [MaxObject createMaxClassWithName:"s2m.wacom" fromObjcClassWithName:"S2Mwacom"];

    post ("[s2m.wacom] version %s, by Charles Gondre - cnrs lma s2m", S2MWACOM_VERSION); //  - %s , __DATE__
    return 0;
}


//----------------------------------------------------------------------------//
//                             IMPLEMENTATIONS                                //
//----------------------------------------------------------------------------//


@implementation Transducer

@synthesize name, uniqueID, serialNumber;

- (void) dealloc
{
    [name release];
    [super dealloc];
}

@end


//----------------------------------------------------------------------------//

@implementation Tablet

@synthesize name, connected, xDimension, yDimension, xDimensionMm, yDimensionMm, resolution, tiltLevels, menuIndex, transducers;
@synthesize systemTabletID, contextID;

- (void) dealloc
{
    [name release];
    [transducers release];
    [super dealloc];
}

@end

//----------------------------------------------------------------------------//
@implementation Tool

@synthesize deviceID, uniqueID, systemTabletID;

- (void) dealloc
{
    [super dealloc];
}

@end

//----------------------------------------------------------------------------//

@implementation S2Mwacom

@synthesize tablets, knownTools;

- (id) initWithObject:(t_object *)x name:(t_symbol *)s numArgs:(long)argc andValues:(t_atom *)argv;
{
	[super initWithObject:x name:s numArgs:argc andValues:argv];
    
    
	[self createInletWithIndex:0	named:"main_inlet"	withAssistanceMessage:"(int/float) Input"];
     
	[self createOutletWithIndex:0	named:"Coordinates (x, y)"	withAssistanceMessage:"(list) absolute coordinates (x, y)"];
	[self createOutletWithIndex:1	named:"Pressure"	withAssistanceMessage:"(float) Pressure"];
	[self createOutletWithIndex:2	named:"tilts"	withAssistanceMessage:"(list) tiltX, tiltY"];
	[self createOutletWithIndex:3	named:"Buttons"	withAssistanceMessage:"(int) Buttons"];
	[self createOutletWithIndex:4	named:"Rotation"	withAssistanceMessage:"(float) Rotation"];
	[self createOutletWithIndex:5	named:"z"	withAssistanceMessage:"(int) Z axis"];
	[self createOutletWithIndex:6	named:"Tangential Pressure"	withAssistanceMessage:"(float) Tangential Pressure"];
	[self createOutletWithIndex:7	named:"Tablet proximity record"	withAssistanceMessage:"(list) Tablet proximity record"];
	[self createOutletWithIndex:8	named:"to umenu"	withAssistanceMessage:"(message) devices enumeration in umenu format"];
    
    tablets = [[NSMutableArray alloc] init];
    knownTools = [[NSMutableArray alloc] init];
    
    for (Tablet *tab in tablets)
        tab.contextID = 0; // 0 is an invalid context number
            
    selectedMenuIndex = 0; // all tablets
	
    xyrangeAttribute  = 0;
    lastGesture       = -1;
    
    nofilterAttribute = 0;
    backgroundEnabledAttribute = 0;
    mouseAttribute    = 0;
    polling           = NO;
    
    observedTypes =	NSTabletPointMask
                    |	NSTabletProximityMask
											
                    |	NSMouseMovedMask
                    |	NSLeftMouseDraggedMask
                    |	NSRightMouseDraggedMask
                    |	NSOtherMouseDraggedMask
                    
                    |	NSLeftMouseDownMask
                    |	NSRightMouseDownMask
                    |	NSOtherMouseDownMask
                    
                    |	NSLeftMouseUpMask
                    |	NSRightMouseUpMask
                    |	NSOtherMouseUpMask
                    |   NSScrollWheelMask;
                    // | 	NSAnyEventMask;
                                      
    [self getTabletsAndTools];
    [self intMessage:0];
    [self useRealAbsoluteCoordinates];
                                    
                                    
    // check out max version : [s2m.wacom] works with max 6 or newer
    if ((maxversion() & 0x0fff) < 0x0600)
        [self postError:"this version of [s2m.wacom] does not work with max versions prior to max6."];
        
    // check out mac OS version : [s2m.wacom] works with OS 10.6 or newer
    SInt32 major, minor;
    Gestalt (gestaltSystemVersionMajor, &major);
    Gestalt (gestaltSystemVersionMinor, &minor);
    
    if ( (major == 10 && minor < 6) || (major < 10) )
        [self postError:"this version of [s2m.wacom] does not work with mac OS versions prior to 10.6"];
 
#ifdef DEBUG
    NSLog (@"s2m.wacom initialized");
#endif
        
        eventMonLocal = [NSEvent addLocalMonitorForEventsMatchingMask:NSTabletProximityMask
                                          handler:^(NSEvent* theEvent)
                                          {
                                              [self manageProximityEvent:theEvent];
                                              return theEvent;
                                          }];
        eventMonGlobal = [NSEvent addGlobalMonitorForEventsMatchingMask:NSTabletProximityMask
                                      handler:^(NSEvent* theEvent)
                                      {
                                          [self manageProximityEvent:theEvent];
                                      }];
	return self;
}

- (t_max_err) postInit
{
    /* t_maxobject_class	*c;
    t_max_err err = hashtab_lookup(g_maxobject_classes, gensym("s2m.wacom"), (t_object **)&c);
	
    if (!c)
    {
		error("Cannot get class info for s2m.wacom Class");;
		return MAX_ERR_GENERIC;
	}
    */
    
	CLASS_ATTR_STYLE_LABEL (thisClass, "backgroundEnabled", 0, "onoff", "background");
	CLASS_ATTR_STYLE_LABEL (thisClass, "nofilter", 0, "onoff", "allow repetitions");
	CLASS_ATTR_STYLE_LABEL (thisClass, "mouse", 0, "onoff", "mouse");
    
    CLASS_ATTR_STYLE_LABEL (thisClass, "xyrange", 0, "enum", "xyrange");
	CLASS_ATTR_ENUMINDEX (thisClass, "xyrange", 0, "raw \"0-1\" \"0-1 proportionnal\" mm");
    return MAX_ERR_NONE;
}

- (t_max_err) preFree
{
    [NSEvent removeMonitor:eventMonLocal];
    [NSEvent removeMonitor:eventMonGlobal];
    return MAX_ERR_NONE;
}


- (void) dealloc
{                   
    for (Tablet *tab in tablets)
    {
        if ([tab contextID] != 0)
        {
            [WacomTabletDriver destroyContext:[tab contextID]];
            tab.contextID = 0;
        }
    }
    [knownTools release];
    [tablets release];
    [super dealloc];
}


//----------------------------------------------------------------------------//
//                          MESSAGES TO THE OBJECT                            //
//----------------------------------------------------------------------------//


#pragma mark -
#pragma mark MAXMESSAGES
#pragma mark -


/** select a particular tablet (and tool) to use */
- (t_max_err) intMessage:(long) value
{
#ifdef DEBUG
    NSLog (@">-------- menu -------");
#endif
    if (value < 0 || value > maxMenuIndex)
    {
        error ("no tablet found - given value is an incorrect menu index");
#ifdef DEBUG
        NSLog (@"-incorrect menu index-");
#endif
    }
    else
    {
        selectedMenuIndex = value;
        
        if (selectedMenuIndex > 0) // if not "all tablets and tools"
        {
            int i = 0;
        
            for (Tablet *tab in tablets)
            {                
                if (selectedMenuIndex <= ([tab menuIndex] + [[tab transducers] count]) )
                {
                    selectedTabletIndex = i;
                    selectedToolIndex = selectedMenuIndex - [tab menuIndex] - 1 ; // so -1 is "all tools"
#ifdef DEBUG
                    NSLog (@"-selectedMenuIndex = %i-", selectedMenuIndex);
                    NSLog (@"-selectedTabletIndex = %i-", i);
                    NSLog (@"-selectedToolIndex = %i-", selectedToolIndex);
                    NSLog (@"-[tab menuIndex] = %i-", [tab menuIndex]);
#endif
                    break;
                }
                ++i;
            }
            
            wantedTabletSystemID = selectedTabletIndex + 1;
            wantedToolUniqueID = (selectedToolIndex == -1) ? -1 : [(Transducer *) [[(Tablet *) [tablets objectAtIndex:selectedTabletIndex] transducers] objectAtIndex:selectedToolIndex] uniqueID];
#ifdef DEBUG
    NSLog (@"-wantedTabletSystemID = %i-", wantedTabletSystemID);
    NSLog (@"-wantedToolUniqueID = %i-", wantedToolUniqueID);
    
    NSLog (@"<------- menu -------");
#endif
        }
    }
    return MAX_ERR_NONE;
}

/** Start polling */
- (t_max_err) pollMessage
{
    if (!polling)
    {
        polling = YES;
        // We will watch and log all these events as they come to us.
        //
        // Note: This is a 10.6-only API. Prior to 10.6, you get the same 
        //			functionality by overriding -[NSApplication sendEvent:]. 
        //
        //			If you were interested in events in the background, you can use 
        //			+addGlobalMonitorForEventsMatchingMask. To support systems prior to 
        //			10.6, register with the Carbon Event Monitor. (See 
        //			GetEventMonitorTarget().) That portion of the Carbon Events API is 
        //			also available in 64-bit applications. 
        //
        //			You may also use Quartz Event Taps.
        //
        [NSEvent removeMonitor:eventMonLocal];
        eventMonLocal = [NSEvent addLocalMonitorForEventsMatchingMask:observedTypes
                                          handler:^(NSEvent* theEvent)
                                          {
                                              [self outputValuesFromEvent:theEvent];
                                              return theEvent;
                                          }];
        
        if (backgroundEnabledAttribute)
        {
            [NSEvent removeMonitor:eventMonGlobal];
            eventMonGlobal = [NSEvent addGlobalMonitorForEventsMatchingMask:observedTypes
                                          handler:^(NSEvent* theEvent)
                                          {
                                              [self outputValuesFromEvent:theEvent];
                                          }];
        }
    }    
    return MAX_ERR_NONE;
}

/** Stop polling */
- (t_max_err) nopollMessage
{
    if (polling)
    {
        polling = NO;
        [NSEvent removeMonitor:eventMonLocal];
        eventMonLocal = [NSEvent addLocalMonitorForEventsMatchingMask:NSTabletProximityMask
                                handler:^(NSEvent* theEvent)
                                {
                                    [self manageProximityEvent:theEvent];
                                    return theEvent;
                                }];
        
        if (backgroundEnabledAttribute)
        {
            [NSEvent removeMonitor:eventMonGlobal];
            eventMonGlobal = [NSEvent addGlobalMonitorForEventsMatchingMask:NSTabletProximityMask
                                    handler:^(NSEvent* theEvent)
                                    {
                                        [self manageProximityEvent:theEvent];
                                    }];
        }
    } 
    return MAX_ERR_NONE;
}

/** Get info */
- (t_max_err) getinfoMessage
{
    if (selectedMenuIndex == 0) // all tablets -> print everything
    {
        UInt32 iTablet = 1;
        
        for (Tablet *tab in tablets)
        {
            post ("Tablet %i name : %s", iTablet, [tab.name UTF8String]);
            post ("Connected : %s", tab.connected ? "yes":"no" ); // that info wasn't printed in the former [wacom] object
            post ("X dimension (pixels) : %i", tab.xDimension );
            post ("Y dimension (pixels) : %i", tab.yDimension );
            post ("X dimension (mm) : %f", tab.xDimensionMm );
            post ("Y dimension (mm) : %f", tab.yDimensionMm );
            post ("Resolution (ppi) : %i", tab.resolution );
            post ("Tilt levels : %i", tab.tiltLevels );
            
            ++iTablet;
        }
    }
    else // One tablet selected -> print the infos just for that one
    {
            Tablet *tab = [tablets objectAtIndex:selectedTabletIndex];
            
            post ("Tablet %i name : %s", selectedTabletIndex, [tab.name UTF8String]);
            post ("Connected : %s", tab.connected ? "yes":"no" );
            post ("X dimension (pixels) : %i", tab.xDimension );
            post ("Y dimension (pixels) : %i", tab.yDimension );
            post ("X dimension (mm) : %f", tab.xDimensionMm );
            post ("Y dimension (mm) : %f", tab.yDimensionMm );
            post ("Resolution (ppi) : %i",  tab.resolution );
            post ("Tilt levels : %i", tab.tiltLevels );
    }
    
   return MAX_ERR_NONE;
}


- (t_max_err) menuMessage
{
	t_atom at[32];
	char str[256];
    t_symbol *appendsym = gensym ("append");
    
    [self getTabletsAndTools];    
    
    [self sendMessage:gensym("clear") toOutlet:8];

	A_SETSYM (at, gensym ("All tablets and tools"));
    [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
    
    //----------------------------------------------------------------
	// add tablets to the popup menu
	// note that Apple Events indices are 1 based!
    
	NSUInteger driverTabletCount = 0;
	NSUInteger driverTransducerCount = 0;
	int iTablet = 0;
	int iTrans = 0;
    
	driverTabletCount = [WacomTabletDriver tabletCount];
    
    for (iTablet = 0 ; iTablet < driverTabletCount ; ++iTablet)
	{
        A_SETSYM (at, gensym ("<separator>"));
        [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
    
		// Count the number of transducers for a tablet. Not displayed.
		driverTransducerCount = [WacomTabletDriver transducerCountForTablet:(iTablet+1)];
        
        NSString *tabletName = [NSString stringWithFormat:@"%d: %@", iTablet, [[tablets objectAtIndex:iTablet] name]];
        
		// Only display tablets which are physically connected right now. (The
		// Wacom driver returns an entry for every tablet the user has ever 
		// plugged in, even if it is not currently connected.) 
		if ([[tablets objectAtIndex:iTablet] connected])
		{
            sprintf (str,"%s / all tools", [tabletName UTF8String]);
            A_SETSYM (at, gensym (str));
            
            [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
                    
            for (iTrans = 1 ; iTrans <= driverTransducerCount ; ++iTrans)
            {
                NSAppleEventDescriptor *routingDesc = [WacomTabletDriver routingTableForTablet:(iTablet+1) transducer:iTrans];
        
                NSAppleEventDescriptor *transNameReply = [WacomTabletDriver dataForAttribute:pName
                                                                                ofType:typeUTF8Text
                                                                                routingTable:routingDesc];
                
                NSString *transName = [NSString stringWithFormat:@"%d: %@", iTrans, [transNameReply stringValue]];
                sprintf (str,"%s / %s", [tabletName UTF8String], [transName UTF8String]);

                A_SETSYM (at, gensym (str));
                [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
            }
		}
        else
        {
            sprintf (str,"(%s / all tools)", [tabletName UTF8String]);
            A_SETSYM (at, gensym (str));
            [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
        
            for (iTrans = 1 ; iTrans <= driverTransducerCount ; ++iTrans)
            {
                NSAppleEventDescriptor *routingDesc = [WacomTabletDriver routingTableForTablet:(iTablet+1) transducer:iTrans];
                
                NSAppleEventDescriptor *transNameReply = [WacomTabletDriver dataForAttribute:pName
                                                                                ofType:typeUTF8Text
                                                                                routingTable:routingDesc];
                NSString *transName = [NSString stringWithFormat:@"%d: %@", iTrans, [transNameReply stringValue]];
                sprintf (str,"(%s / %s)", [tabletName UTF8String], [transName UTF8String]);
                A_SETSYM (at, gensym(str));
                [self sendMessage:appendsym withNumArgs:1 andValues:at toOutlet:8];
            }
        }
	}
    return MAX_ERR_NONE;
}

/** Remove the pointer */
- (t_max_err) nopointerTypedMessage:(t_symbol *)s withNumArgs:(long)argc andValues:(t_atom *)argv
{
    if (argc == 1)
    {
		const BOOL nopointer = (1 == atom_getlong (argv));
        [self movesCursor:(!nopointer)];
        return MAX_ERR_NONE;
	}

	[self postError:"wrong number of args for nopointer: received %ld, only one is expected (0/1)", argc];
	return MAX_ERR_GENERIC;
}

/** To receive the tablets events even when max is in background */
- (t_max_err) backgroundTypedMessage:(t_symbol *)s withNumArgs:(long)argc andValues:(t_atom *)argv
{
    if (argc == 1)
    {
		const BOOL bgEn = (1 == atom_getlong (argv));
        [self background:(bgEn)];
        return MAX_ERR_NONE;
	}

	[self postError:"wrong number of args for background: received %ld, only one is expected (0/1)", argc];
	return MAX_ERR_GENERIC;
}

/** Set mouse coalescing */
- (t_max_err) coalescingTypedMessage:(t_symbol *)s withNumArgs:(long)argc andValues:(t_atom *)argv
{
    // Enable or disable coalescing of mouse movement events, including mouse moved, mouse dragged, and tablet events.  Coalescing is enabled by default.
    if (argc == 1)
    {
		[NSEvent setMouseCoalescingEnabled: (1 == atom_getlong (argv)) ];
        return MAX_ERR_NONE;
	}

	[self postError:"wrong number of args for coalescing: received %ld, only one is expected (0/1)", argc];
	return MAX_ERR_GENERIC;
}


/** Set XY range mode */

// An attribute setter...
- (void) setXyrangeAttribute:(long) value
{
    xyrangeAttribute = value;

    if (xyrangeAttribute < 0)
        xyrangeAttribute = 0;
    else if (xyrangeAttribute > 3)
        xyrangeAttribute = 3;
}

// And an attribute getter...
- (long) xyrangeAttribute
{
	return xyrangeAttribute;
}

//----------------------------------------------------------------------------//


#pragma mark -
#pragma mark ACTIONS
#pragma mark -


/**
 * \brief Tells the Wacom driver to turn cursor movement on or off.	
 */
- (void) movesCursor:(BOOL) moveEnable
{	
    Boolean newMovesCursor = moveEnable;
    
    if (selectedMenuIndex == 0 ) // "all tablets" selected
    {
        for (Tablet *tab in tablets)
        {
            NSAppleEventDescriptor *routingDesc = [WacomTabletDriver routingTableForContext:tab.contextID];
        
            [WacomTabletDriver setBytes:&newMovesCursor
                                    ofSize:sizeof (Boolean)
                                    ofType:typeBoolean
                                    forAttribute:pContextMovesSystemCursor
                                    routingTable:routingDesc];
        }
    }
    else
    {
        UInt32 currentContextID = [[tablets objectAtIndex:(wantedTabletSystemID-1)] contextID];
        NSAppleEventDescriptor *routingDesc = [WacomTabletDriver routingTableForContext:currentContextID];
        
        [WacomTabletDriver setBytes:&newMovesCursor
								ofSize:sizeof (Boolean)
								ofType:typeBoolean
                                forAttribute:pContextMovesSystemCursor
                                routingTable:routingDesc];
    }						
}//end movesCursor:

/**
 * \brief To receive the tablets events even when max is in background
 */
- (void) background:(BOOL) backgroundEn
{
    backgroundEnabledAttribute = (backgroundEn == YES) ? 1 : 0;
    
    if (!backgroundEnabledAttribute || !polling)
    {
        [NSEvent removeMonitor:eventMonGlobal];
        eventMonGlobal = [NSEvent addGlobalMonitorForEventsMatchingMask:NSTabletProximityMask
                                    handler:^(NSEvent* theEvent)
                                    {
                                        [self manageProximityEvent:theEvent];
                                            
                                    }];
    }
    else
    {
        [NSEvent removeMonitor:eventMonGlobal];
        eventMonGlobal = [NSEvent addGlobalMonitorForEventsMatchingMask:observedTypes
                                    handler:^(NSEvent* theEvent)
                                    {
                                        [self outputValuesFromEvent:theEvent];
                                            
                                    }];
    }
    [self useRealAbsoluteCoordinates];
}//end background:


// An attribute setter...
- (void) setBackgroundEnabledAttribute:(long)value
{
    [self background:(value == 1) ];
}

// And an attribute getter...
- (long) backgroundEnabledAttribute
{
	return backgroundEnabledAttribute;
}

/**
 * \brief The values returned for -[NSEvent absoluteX] and -[NSEvent absoluteY]
 * aren't what they claim to be. This method fixes that.
 */
- (void) useRealAbsoluteCoordinates
{
	// For an application which has not opened a context to the Wacom driver, the 
	// values of absoluteX/Y are numbers used internally by the driver which are 
	// not useful to Mac OS applications. 
	//
	// When you create a context of pContextTypeDefault, the driver stops 
	// returning its internal numbers for *most* tablets, and starts returning 
	// the expected values.
	
	// Creating a context is not enough for integrated display tablets (like 
	// Cintiqs), which will still return the internal numbers by default. 
	//
	// To force display tablets to *also* use absolute coordinates, you must 
	// explicitly tell the tablet to map to the full desktop. 
	//
	// Note:	Display tablets don't actually support custom portion-of-screen 
	//			settings. Passing the desktop rect here actually serves as a special 
	//			flag to enable corrected absoluteXY mapping. You should ONLY pass 
	//			the full desktop rect, which Cintiqs will interpret specially. 
	//			Passing any other value is undefined. 
	[self setPortionOfScreen:[self desktopRect]];
	
	// You now have numbers which are calculated by transforming the tablet input 
	// area into the tablet output area. So to retrieve the ranges for 
	// absoluteX/Y, you must request the tablet's output area.
    for (Tablet *tab in tablets)
    {            
        NSAppleEventDescriptor  *routingDesc      = [WacomTabletDriver routingTableForContext:tab.contextID];
        NSAppleEventDescriptor  *outputAreaDesc   = nil;
        LongRect                outputArea        = {0, 0, 0, 0};
	
        outputAreaDesc = [WacomTabletDriver dataForAttribute:pContextMapTabletOutputArea
                                                        ofType:typeLongRectangle
                                                        routingTable:routingDesc];
                                                         
        [[outputAreaDesc data] getBytes:&outputArea];
        // post("outputArea T L B R = %i - %i - %i - %i", outputArea);
    }
	
	// And there you have it. The numbers from absoluteX and absoluteY should 
	// fall within outputArea, with (outputArea.left, outputArea.top) 
	// corresponding to the upper-left corner of the tablet, and 
	// (outputArea.right, outputArea.bottom) corresponding to the rightmost point 
	// on the tablet.

	// The values fall within this range as long as the context persists.

}//end useRealAbsoluteCoordinates:


//----------------------------------------------------------------------------//


#pragma mark -
#pragma mark UTILITIES
#pragma mark -


/**
 * \brief Returns the union of all screen rectangles.
 */
- (NSRect) desktopRect
{
	NSRect         desktop           = NSZeroRect;
	NSEnumerator   *screenIterator   = [[NSScreen screens] objectEnumerator];
	NSScreen       *screen           = NULL;
	
	// Make the menu window (and the menu control!) cover the entire desktop.
	// This allows us to track clicks "outside" the menu.
	while (screen = [screenIterator nextObject])
	{
		desktop = NSUnionRect (desktop, [screen frame]);
	}
	return desktop;
	
}//end desktopRect


/**
\brief Sets the portion of the desktop the current tablet context maps to. 
 */
- (void) setPortionOfScreen:(NSRect) screenPortion
{
	for (Tablet *tab in tablets)
    {
		NSRect desktopRect = [self desktopRect];
        
        NSAppleEventDescriptor  *routingDesc   = [WacomTabletDriver routingTableForContext:tab.contextID];
		Rect                    screenArea     = {0, 0, 0, 0};
        
		// Convert Cocoa rect to old QuickDraw rect.
		screenArea.left	  = NSMinX (screenPortion);
		screenArea.top	  = NSMaxY (desktopRect) - NSMaxY (screenPortion);
		screenArea.right  = NSMaxX (screenPortion);
		screenArea.bottom = NSMaxY (desktopRect) - NSMinY (screenPortion);

        [WacomTabletDriver setBytes:&screenArea
                            ofSize:sizeof (Rect)
                            ofType:typeQDRectangle
							forAttribute:pContextMapScreenArea
							routingTable:routingDesc];
	}
} //end setPortionOfScreen:



/**
 * \brief send out the parameters from the event.
 */
- (void) outputValuesFromEvent:(NSEvent *)theEvent
{
    if (!polling)
        return;
    
	const NSEventType eventType = [theEvent type];
	BOOL isMouseEvent = NO;
    NSPoint s2mMouseLoc;
    
	t_atom at[32];
    
	// Establish which events we may safely query for subtype
    if ( eventType == NSMouseMoved
		||	eventType == NSLeftMouseDragged
		||	eventType == NSRightMouseDragged
		||	eventType == NSOtherMouseDragged
		
		||	eventType == NSLeftMouseDown
		||	eventType == NSRightMouseDown
		||	eventType == NSOtherMouseDown
		
		||	eventType == NSLeftMouseUp
		||	eventType == NSRightMouseUp
		||	eventType == NSOtherMouseUp
        ) //||  (eventType == NSScrollWheel ) && ([theEvent subtype] == NSMouseEventSubtype) ) // attention, le track pad renvoit un NSTabletPointEventSubtype ! mais la magic mouse aussi
	{
		isMouseEvent = YES;
	}
    
	// Find tablet point events (both pure and embedded)
	if ( eventType == NSTabletPoint
		||	( isMouseEvent == YES
			 &&	[theEvent subtype] == NSTabletPointEventSubtype
			)
	   )
	{
		// this is a isTabletPointEvent !    
        // Send out Tablet Point events
        SInt32 tabletXdimension, tabletYdimension;
        float tabletXdimensionMm, tabletYdimensionMm;
        
        // filter out selected tablet and tool        
        BOOL outputThatEvent = NO;
        const NSUInteger eventDeviceID = [theEvent deviceID];
        
        for (Tool * tool in knownTools)
        {
            if (tool.deviceID == eventDeviceID )
            {
                if ( selectedMenuIndex == 0 // all tablets and all tools
                        || ( (tool.systemTabletID == wantedTabletSystemID)
                             && (wantedToolUniqueID == -1 || wantedToolUniqueID == tool.uniqueID)))
                {
                    outputThatEvent = YES;
                    
                    tabletXdimension   = [[tablets objectAtIndex:tool.systemTabletID-1] xDimension];
                    tabletYdimension   = [[tablets objectAtIndex:tool.systemTabletID-1] yDimension];
                    tabletXdimensionMm = [[tablets objectAtIndex:tool.systemTabletID-1] xDimensionMm];
                    tabletYdimensionMm = [[tablets objectAtIndex:tool.systemTabletID-1] yDimensionMm];
                }
            }
        }
        
        if ( outputThatEvent )
        {
            const NSInteger absoluteX = [theEvent absoluteX];
            const NSInteger absoluteY = [theEvent absoluteY];
            const NSInteger absoluteZ = [theEvent absoluteZ];
                    
            const NSUInteger buttons = [theEvent buttonMask];
            
            const float pressure            = [theEvent pressure];
            const float tangentialPressure  = [theEvent tangentialPressure];
            
            const NSPoint tilt      = [theEvent tilt];
            const float rotation    = [theEvent rotation];
            
            if (nofilterAttribute)
            {
                [self sendFloat:(tangentialPressure) toOutlet:6];
                [self sendInt:((long) absoluteZ) toOutlet:5];
                [self sendFloat:(rotation) toOutlet:4];
                [self sendInt:((long) buttons) toOutlet:3];
                
                atom_setfloat (at, tilt.x);
                atom_setfloat (at+1, tilt.y);
                
                [self sendList:NULL withNumArgs:2 andValues:at toOutlet:2];
                
                [self sendFloat:pressure toOutlet:1];            
                
                if (xyrangeAttribute == 0)
                {
                    atom_setlong (at, absoluteX);
                    atom_setlong (at+1, absoluteY);
                }
                else if (xyrangeAttribute == 1)
                {
                    atom_setfloat (at, absoluteX / (float) tabletXdimension);
                    atom_setfloat (at+1, absoluteY / (float) tabletYdimension);
                }
                else if (xyrangeAttribute == 2)
                {
                    atom_setfloat (at, absoluteX / (float) tabletXdimension);
                    atom_setfloat (at+1, absoluteY / (float) tabletXdimension);
                }
                else if (xyrangeAttribute == 3)
                {
                    atom_setfloat (at, absoluteX  * tabletXdimensionMm / (float) tabletXdimension);
                    atom_setfloat (at+1, absoluteY * tabletYdimensionMm / (float) tabletYdimension);
                }
                [self sendList:NULL withNumArgs:2 andValues:at toOutlet:0];
                
            }
            else
            {
                if (tangentialPressure != prevTangentialPressure)
                {
                    prevTangentialPressure = tangentialPressure;
                    [self sendFloat:(tangentialPressure) toOutlet:6];
                }

                if (absoluteZ != prevAbsoluteZ)
                {
                    prevAbsoluteZ = absoluteZ;
                    [self sendInt:((long) absoluteZ) toOutlet:5];
                }
                
                if (rotation != prevRotation)
                {
                    prevRotation = rotation;
                    [self sendFloat:(rotation) toOutlet:4];
                }
                
                if (buttons != prevButtons)
                {
                    prevButtons = buttons;
                    [self sendInt:((long) buttons) toOutlet:3];
                }
                
                if ( ! NSEqualPoints (tilt, prevTilt))
                {
                    prevTilt.x = tilt.x;
                    prevTilt.y = tilt.y;
                    
                    atom_setfloat (at, tilt.x);
                    atom_setfloat (at+1, tilt.y);
                    [self sendList:NULL withNumArgs:2 andValues:at toOutlet:2]; // could use _sym_list instead of NULL
                }
                
                if (pressure != prevPressure)
                {
                    prevPressure = pressure;
                    [self sendFloat:pressure toOutlet:1];            
                }
                
                if (absoluteX != prevAbsoluteX || absoluteY != prevAbsoluteY)
                {
                    prevAbsoluteX = absoluteX;
                    prevAbsoluteY = absoluteY;
                    
                    if (0 == xyrangeAttribute)
                    {
                        atom_setlong (at, absoluteX);
                        atom_setlong (at+1, absoluteY);
                    }
                    else if (1 == xyrangeAttribute)
                    {
                        atom_setfloat (at, absoluteX / (float) tabletXdimension);
                        atom_setfloat (at+1, absoluteY / (float) tabletYdimension);
                    }
                    else if (2 == xyrangeAttribute)
                    {
                        atom_setfloat (at, absoluteX / (float) tabletXdimension);
                        atom_setfloat (at+1, absoluteY / (float) tabletXdimension);
                    }
                    else if (3 == xyrangeAttribute)
                    {
                        atom_setfloat (at, absoluteX * tabletXdimensionMm / (float) tabletXdimension);
                        atom_setfloat (at+1, absoluteY * tabletYdimensionMm / (float) tabletYdimension);
                    }
                    
                    [self sendList:NULL withNumArgs:2 andValues:at toOutlet:0];
                }
            }
        }
    }
    else if (mouseAttribute && (isMouseEvent || (eventType == NSScrollWheel ) ) )
    {       
        s2mMouseLoc = [NSEvent mouseLocation];
        
        // if (repetitionEnabled)
        {
            // devrait-on faire le scale en mouse mode ?
            
            [self sendInt:((long) [NSEvent pressedMouseButtons]) toOutlet:3];
            
            if (eventType == NSScrollWheel)
            {
                atom_setfloat (at, (float) [theEvent deltaX]);
                atom_setfloat (at+1, [theEvent deltaY]);
                [self sendList:NULL withNumArgs:2 andValues:at toOutlet:2]; // could use _sym_list instead of NULL
            }
            
            atom_setlong (at, s2mMouseLoc.x);
            atom_setlong (at+1, s2mMouseLoc.y);
            [self sendList:NULL withNumArgs:2 andValues:at toOutlet:0];
        } 
    }
    
    if (eventType == NSTabletProximity)
        [self manageProximityEvent:theEvent];
}

/** \brief manage proximity events. */
- (void) manageProximityEvent:(NSEvent *) theEvent
{
	const NSEventType eventType = [theEvent type];
	t_atom at[32];
    char str[256];
    
    if (eventType == NSTabletProximity)
    {        
        // 'referencement' du device
        if ([theEvent isEnteringProximity])
        {
            BOOL known = NO;
            // check if we already registered that tool
            for (Tool * tool in knownTools)
            {
                if (tool.uniqueID == [theEvent uniqueID])
                {
                    known = YES;
                    
                    tool.deviceID = [theEvent deviceID]; // update deviceID in case it as change
                    tool.systemTabletID = [theEvent systemTabletID];
                    
                    if (tool.systemTabletID > ([tablets count]+1))
                        [self getTabletsAndTools];
                }
            }
            
            // if not, register it
            if (!known)
            {
                Tool *tool = [[Tool alloc] init];
                tool.uniqueID = [theEvent uniqueID];
                tool.deviceID = [theEvent deviceID];
                tool.systemTabletID = [theEvent systemTabletID];
                
                if (tool.systemTabletID > ([tablets count]+1))
                    [self getTabletsAndTools];
                        
                [knownTools addObject:tool];
                [tool release];      
            }
        }
        
        if (polling)
        {
            atom_setlong (at,   [theEvent vendorID] );
            atom_setlong (at+1, [theEvent tabletID] );
            atom_setlong (at+2, [theEvent pointingDeviceID] );
            atom_setlong (at+3, [theEvent deviceID] );
            atom_setlong (at+4, [theEvent systemTabletID] );
            atom_setlong (at+5, [theEvent vendorPointingDeviceType] );
            atom_setlong (at+6, [theEvent pointingDeviceSerialNumber] );
            
            // uniqueID is a 64 bits integer (unsigned long long)
            // so we can't simply do : atom_setlong(at+7, [theEvent uniqueID] );
            // so I output it as a symbol :
            NSString *uidString = [NSString stringWithFormat:@"%lld", [theEvent uniqueID]];
            sprintf (str, "%s", [uidString UTF8String]);
            atom_setsym (at+7, gensym(str));
            
            atom_setlong (at+8, [theEvent capabilityMask] );
            atom_setlong (at+9, [theEvent pointingDeviceType] );
            atom_setlong (at+10, [theEvent isEnteringProximity] );
                
            [self sendList:NULL withNumArgs:11 andValues:at toOutlet:7];
        }
    }
}//end outputValuesFromEvent:


/**
 * \brief get tablets and transducers
 * Apple Events indices are 1 based!
 * The Wacom driver returns an entry for every tablet the user has ever
 * plugged in, even if it is not currently connected.)
 */
- (void) getTabletsAndTools
{
	UInt32 driverTabletCount = 0;
	UInt32 driverTransducerCount = 0;
	UInt32 iTablet = 0;
	UInt32 iTrans = 0;
    
    UInt32 tempMenuIndex = 2; // (car 0=all, puis separator)
    
	driverTabletCount = [WacomTabletDriver tabletCount];
    
    const NSUInteger registeredTabletsCount = [tablets count];
    
    // les tablets qu'on connait deja.....
    for (iTablet = 1 ; iTablet <= registeredTabletsCount ; ++iTablet, tempMenuIndex+=2)
	{  
#ifdef DEBUG   
        NSLog (@"ART %i", iTablet);
#endif
		driverTransducerCount = [WacomTabletDriver transducerCountForTablet:iTablet];
        
        Tablet *tab = [tablets objectAtIndex:iTablet-1];
        tab.menuIndex = tempMenuIndex;

        // ...peuvent avoir change de statut
		NSAppleEventDescriptor  *routingTabletDesc = [WacomTabletDriver routingTableForTablet:iTablet];
        tab.connected = [[WacomTabletDriver dataForAttribute:pIsConnected ofType:typeBoolean routingTable:routingTabletDesc] booleanValue];
        
        NSUInteger registeredTransCount = [tab.transducers count];
        tempMenuIndex += registeredTransCount;
        // ...et peuvent avoir des tools qu'on ne connaissait pas
        for (iTrans = registeredTransCount+1 ; iTrans <= driverTransducerCount ; ++iTrans, ++tempMenuIndex)
        {
            NSAppleEventDescriptor *routingTransDesc = [WacomTabletDriver routingTableForTablet:iTablet transducer:iTrans];

            Transducer *transducer = [[Transducer alloc] init];
            transducer.name = [[WacomTabletDriver dataForAttribute:pName ofType:typeUTF8Text routingTable:routingTransDesc] stringValue];
            
            // whaa... this is tricky..! :)
            transducer.uniqueID = *(UInt64 *) [[ [WacomTabletDriver dataForAttribute:pUniqueID ofType:typeLongPoint routingTable:routingTransDesc] data] bytes];
            
            transducer.serialNumber = [[WacomTabletDriver dataForAttribute:pSerialNumber ofType:typeUInt32 routingTable:routingTransDesc] int32Value];
            /*  NSAppleEventDescriptor  *transConnectedReply= [WacomTabletDriver dataForAttribute:pIsConnected
                ofType:typeBoolean
                routingTable:routingDesc];
                */
            [tab.transducers addObject:transducer];
            [transducer release];
        }
	}
    
    // les tablettes qu'on ne connaissait pas doivent etre registrees..
    for (iTablet = registeredTabletsCount+1 ; iTablet <= driverTabletCount ; ++iTablet, tempMenuIndex += 2)
	{
    
#ifdef DEBUG   
        NSLog (@"NRT %i", iTablet);
#endif
		NSAppleEventDescriptor *routingTabletDesc = [WacomTabletDriver routingTableForTablet:iTablet];
        
        Tablet *tab = [[Tablet alloc] init];
        
        tab.menuIndex = tempMenuIndex;

        tab.name       = [[WacomTabletDriver dataForAttribute:pName ofType:typeUTF8Text routingTable:routingTabletDesc] stringValue];
        tab.connected  = [[WacomTabletDriver dataForAttribute:pIsConnected ofType:typeBoolean routingTable:routingTabletDesc] booleanValue];
        tab.xDimension = [[WacomTabletDriver dataForAttribute:pXDimension ofType:typeSInt32 routingTable:routingTabletDesc] int32Value];
        tab.yDimension = [[WacomTabletDriver dataForAttribute:pYDimension ofType:typeSInt32 routingTable:routingTabletDesc] int32Value];
        tab.resolution = [[WacomTabletDriver dataForAttribute:pResolution ofType:typeSInt32 routingTable:routingTabletDesc] int32Value];
        tab.xDimensionMm = tab.xDimension * 25.4 / (float) tab.resolution; // 25.4 est la conversion d'un inch en millimetres
        tab.yDimensionMm = tab.yDimension * 25.4 / (float) tab.resolution;

        tab.tiltLevels = [[WacomTabletDriver dataForAttribute:pTiltLevels ofType:typeSInt16 routingTable:routingTabletDesc] int32Value];
        
        tab.transducers = [[NSMutableArray alloc] init];
        
		driverTransducerCount = [WacomTabletDriver transducerCountForTablet:iTablet];

        // ...de meme que tous les transducers
        for (iTrans = 1 ; iTrans <= driverTransducerCount ; ++iTrans, ++tempMenuIndex)
        {
#ifdef DEBUG   
            NSLog (@"NT %i", iTrans);
#endif
            NSAppleEventDescriptor *routingTransDesc = [WacomTabletDriver routingTableForTablet:iTablet transducer:iTrans];

            Transducer *transducer = [[Transducer alloc] init];
            transducer.name = [[WacomTabletDriver dataForAttribute:pName ofType:typeUTF8Text routingTable:routingTransDesc] stringValue];;
            
            // whaa... this is tricky..! :)
            transducer.uniqueID = *(UInt64 *) [[ [WacomTabletDriver dataForAttribute:pUniqueID ofType:typeLongPoint routingTable:routingTransDesc] data] bytes];
                
            transducer.serialNumber = [[WacomTabletDriver dataForAttribute:pSerialNumber ofType:typeUInt32 routingTable:routingTransDesc] int32Value];
            
            [tab.transducers addObject:transducer];
            [transducer release];
        }
        
        // create a contecxt for that tablet
        tab.contextID = [WacomTabletDriver createContextForTablet:iTablet type:pContextTypeDefault];
        [tablets addObject:tab];
        [tab release];
    }
    
    maxMenuIndex = tempMenuIndex;
    
    [self useRealAbsoluteCoordinates];
        
} // end getTabletsAndTools:

@end // S2Mwacom implementation

