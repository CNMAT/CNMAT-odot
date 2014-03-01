/**
	============================================================================
    \file s2m.wacomtouch.m
    \version 1
    \author Charles Gondre - CNRS-LMA-S2M
    
    \date 12 janvier 2012 - last modif : octobre 2013
    
    ©copyright 2012 lma-cnrs
    
	----------------------------------------------------------------------------
    
    \brief a external to get the wacom multitouch data. need max 5 or newer.
            and OS 10.6 or newer.
    supported tablet are listed here :
    http://www.wacomeng.com/touch/WacomFeelMulti-TouchFAQ.htm#_Toc331140757
	----------------------------------------------------------------------------
    
    \todo :
    
    
    \fixme :
 
    last modif (beta 4) :
 
    workaround for a wacom driver issue : when a finger was added to a tablet,
    its addition was reported several time. we now filter that.
 
    version 1 : compil avec support 64.
    
	----------------------------------------------------------------------------
    
    (cf http://www.wacomeng.com for information about the wacommultitouch lib)
 
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

// max headers
#include "ext.h"        // standard Max include, always required
#include "ext_obex.h"   // required for new style Max object
#include "jit.common.h"
#include "jit.max.h"
#include "ext_systhread.h"

// wacom multitouch headers
#if defined(MAC_VERSION)
#include <WacomMultiTouch/WacomMultiTouch.h>
#include <CoreServices/CoreServices.h>
#elif defined(WIN_VERSION)
#include "./Wacom_Feel_SDK/inc/WacomMultiTouch.h"
#endif

//==============================================================================

// maximal number of [s2m.wacomtouch] instances that can be created within max
#define S2MWACOMTOUCH_MAXINSTANCES (32)

// maximal number of wacom devices that can be connected at the same time
#define S2MWACOMTOUCH_MAXDEVICES (32)

// maximal number of fingers on one device at the same time
#define S2MWACOMTOUCH_MAXFINGERS (32)

// version number of [s2m.wacomtouch]
#define S2MWACOMTOUCH_VERSION "1"


// #define S2MWACOMTOUCH_BLOBSUPPORT

t_class *wacomtouch_class;

//----------------------- Callback Prototypes --------------------------------//

void MyAttachCallback (WacomMTCapability deviceInfo, void *userInfo);
void MyDetachCallback (int deviceID, void *userInfo);
int MyFingerCallback (WacomMTFingerCollection *fingerPacket, void *userData);
int MyRawCallback (WacomMTRawData *rawPacket, void *userData);
#ifdef S2MWACOMTOUCH_BLOBSUPPORT
int MyBlobCallback (WacomMTBlobAggregate *blobPacket, void *userData);
#endif
//----------------------------------------------------------------------------//

// to change the WMTProcessingMode
// 0 for WMTProcessingModeNone (default); 1 for WMTProcessingModeObserver
long a_observer; // (attribute) 
    
//----------------------------------------------------------------------------//
//                               S2Mwacomtouch                                //
//----------------------------------------------------------------------------//

typedef struct _wacomtouch
{    
    t_object ob; // the object itself (must be first)

    void *outlet0; // bang after each frame
    void *outlet1; // Fingers data
    void *outlet2; // Fingers Collection properties
    void *outlet3; // device infos
    void *outlet4; // to umenu
    
    // for the tablet selection in the umenu
    int selectedMenuIndex;
    
    // to change the xyrange mode ( 0-1 (default), 0-1 proportionnal, mm)
    long a_xyrange; // (attribute)
    
    float coordScaleFactorX;
    float coordScaleFactorY;
    
    // true if raw is possible (if user gave a matrix name as parameter)
    bool    rawMode;
    // true if raw is active (if "raw" message was received and a connected
    // device support raw data
    bool    rawActive;
    
	void        *obex;
	void        *bangout;
	t_symbol    *matrix_name;
    
    t_systhread x_systhread;
    bool        x_systhread_cancel;
    bool        x_systhread_active;
    
    // bool    fingersOutputDone;
    // bool    rawOutputDone;
    
    WacomMTRawData *rawPacket;
    
    // pour un workaround d'un bug de wacom :
    int activeFingersID[S2MWACOMTOUCH_MAXINSTANCES][S2MWACOMTOUCH_MAXFINGERS];
    
} t_wacomtouch;


//----------------------------------------------------------------------------//
//                                WacomDevice                                 //
//----------------------------------------------------------------------------//

/**
    Small struct where we keep the "listeners" and the capabilities of a device.
*/
typedef struct _WacomDevice
{
    WacomMTCapability capabilities;
    t_wacomtouch *fingersListeners[S2MWACOMTOUCH_MAXINSTANCES];
    t_wacomtouch *rawListeners[S2MWACOMTOUCH_MAXINSTANCES];
    #ifdef S2MWACOMTOUCH_BLOBSUPPORT
    t_wacomtouch *blobsListeners[S2MWACOMTOUCH_MAXINSTANCES];
    #endif
    
    int nbFingersListeners;
    int nbRawListeners;
    
    #ifdef S2MWACOMTOUCH_BLOBSUPPORT
    int nbBlobsListeners;
    #endif
    
    int ID;
    int connected;
    
} WacomDevice;

/* UTILS */
WacomDevice* getDeviceFromID (int deviceID);
int getDeviceID (int menuIndex);
int getMenuIndexFromID (int deviceID);
WacomDevice* getDeviceFromMenuIndex (int menuIndex);
int isDeviceConnected (WacomDevice *device);
int isDeviceIDconnected (int deviceID);


//------------------------   global stuff   ---------------------------//

static int isTouchAPIConnected = 0;

/**
    A dictionnary.
    each key is a tablet DeviceID, and each value is a WacomDevice.
    The keys are not ordered. use connectedDevicesIDs to get the right order.
*/
static WacomDevice **connectedDevices;

/**
    deviceIds of the connected devices.
    The order of the IDS is always in the order of the umenu.
*/
static int *connectedDevicesIDs;
/** nombre de devices connectes */
static int nbConnectedDevices;

// we keep the instances in there. utils when attach and dettach callbacks are called
t_wacomtouch **s2mWacomTouchInstances;
int nbWacomtouchInstances;

/** Does the given s2m.wacomtouch instance listens fingers of the device */
int hasFingerListener (WacomDevice *device, t_wacomtouch* wacomTouchInstance)
{
    int i;
    int found = 0;
    
    for (i = 0 ; i < device->nbFingersListeners ; ++i)
    {
        if (device->fingersListeners[i] == wacomTouchInstance)
        {
            found = 1; break;
        }
    }
    return found;
}

#ifdef S2MWACOMTOUCH_BLOBSUPPORT
/** Does the given s2m.wacomtouch instance listens blobs of the device */
int hasBlobListener (WacomDevice *device, t_wacomtouch* wacomTouchInstance)
{
    int i;
    int found = 0;
    
    for (i = 0 ; i < device->nbBlobsListeners ; ++i)
    {
        if (device->blobsListeners[i] == wacomTouchInstance)
        {
            found = 1; break;
        }
    }
    return found;
}
#endif

/** Does the given s2m.wacomtouch instance listens raw of the device */
int hasRawListener (WacomDevice *device, t_wacomtouch* wacomTouchInstance)
{
    int i;
    int found = 0;
    
    for (i = 0 ; i < device->nbRawListeners ; ++i)
    {
        if (device->rawListeners[i] == wacomTouchInstance)
        {
            found = 1; break;
        }
    }
    return found;
}

//==============================================================================

void *wacomtouch_new (t_symbol *s, long argc, t_atom *argv);
void wacomtouch_free (t_wacomtouch *x);
void wacomtouch_assist (t_wacomtouch *x, void *b, long m, long a, char *s);
void wacomtouch_loadbang (t_wacomtouch *x);

// "actions"
void outputFingers (t_wacomtouch *x, WacomMTFingerCollection *fingerCollection);
void outputBlobs (t_wacomtouch *x, WacomMTBlobAggregate *blobPacket);
void outputCapabilities (t_wacomtouch *x, WacomMTCapability *tabCapa);
void fillMatrixWithRawData (t_wacomtouch *x);

// listenners
void listenFingers (t_wacomtouch *x, int shouldListen);
void listenFingersOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device);
void listenBlobs (t_wacomtouch *x, int shouldListen);
void listenBlobsOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device);
void listenRawOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device);

// callbacks :
static void registerWacomCallbacks (void);
void deviceAttached (t_wacomtouch *x, WacomDevice* device);
void deviceDettached (t_wacomtouch *x, WacomDevice* device);
void deviceFingersMoved (t_wacomtouch *x, WacomMTFingerCollection *fingerPacket);
void deviceRawData (t_wacomtouch *x, WacomMTRawData *rawPacket);

// max messages :
void wacomtouch_poll (t_wacomtouch *x);
void wacomtouch_nopoll (t_wacomtouch *x);
void wacomtouch_raw (t_wacomtouch *x);
void wacomtouch_noraw (t_wacomtouch *x);
void wacomtouch_menu (t_wacomtouch *x);
void wacomtouch_getinfo (t_wacomtouch *x);
void wacomtouch_int (t_wacomtouch *x, long n);

t_max_err wacomtouch_xyrange_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av);
t_max_err wacomtouch_xyrange_set (t_wacomtouch *x, void *attr, long ac, t_atom *av);

t_max_err wacomtouch_observer_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av);
t_max_err wacomtouch_observer_set (t_wacomtouch *x, void *attr, long ac, t_atom *av);

//==============================================================================

/**
    Called when maxMsp quits. Desallocating golbal stuff here!
*/
static void S2Mwacomtouch_terminate()
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        int deviceID = connectedDevicesIDs[i];
        WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
        WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
        WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeNone, NULL, NULL);
        WacomMTRegisterFingerReadCallback( deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
        WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
        WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeObserver, NULL, NULL);
        free (connectedDevices[i]);
    }
    free (connectedDevices);
    free (connectedDevicesIDs);
    free (s2mWacomTouchInstances);
    
	if (isTouchAPIConnected == 1 && WacomMTQuit != NULL)
		WacomMTQuit();
}


//==============================================================================

/** Entry Point when loaded by Max */
int C74_EXPORT main(void)
{
    int i;
    t_class *c;
    
	long attrflags;
	void *p, *attr;
    
    connectedDevices = (WacomDevice**) malloc ( S2MWACOMTOUCH_MAXDEVICES * sizeof (WacomDevice*) );
    connectedDevicesIDs = (int*) malloc ( S2MWACOMTOUCH_MAXDEVICES * sizeof (int) );
    
    s2mWacomTouchInstances = (t_wacomtouch**) malloc ( S2MWACOMTOUCH_MAXINSTANCES * sizeof (t_wacomtouch*) );
                
    for (i = 0 ; i < S2MWACOMTOUCH_MAXDEVICES ; ++i)
    {
        connectedDevices[i] = NULL;
        connectedDevicesIDs[i] = -1;
    }
                    
    for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
    {
        s2mWacomTouchInstances[i] = NULL;
    }
    
    c = class_new ("s2m.wacomtouch", (method) wacomtouch_new, (method) wacomtouch_free, (long) sizeof (t_wacomtouch), 0L , A_GIMME, 0);

    class_addmethod (c, (method) wacomtouch_assist, "assist", A_CANT, 0);

    class_addmethod (c, (method) wacomtouch_poll, "poll", 0);
    class_addmethod (c, (method) wacomtouch_nopoll, "nopoll", 0);
    class_addmethod (c, (method) wacomtouch_menu, "menu", 0);
    class_addmethod (c, (method) wacomtouch_loadbang, "loadbang", 0);
    class_addmethod (c, (method) wacomtouch_getinfo, "getinfo", 0);
    class_addmethod (c, (method) wacomtouch_int, "int", A_LONG, 0);
   
    CLASS_METHOD_ATTR_PARSE (c, "loadbang", "undocumented", gensym("long"), 0L, "1");
   
    CLASS_ATTR_LONG (c, "xyrange", 0 , t_wacomtouch, a_xyrange);
	//CLASS_ATTR_CATEGORY(c, "xyrange", 0, "Value"); // define 'Value' category
	CLASS_ATTR_ORDER (c, "xyrange", 0, "1"); // top of the list
	// index-based enumeration style
	CLASS_ATTR_ENUMINDEX (c, "xyrange", 0, "\"logical \" proportionnal \"physical (mm)\"");
	// override default accessors
	CLASS_ATTR_ACCESSORS (c, "xyrange", (method) wacomtouch_xyrange_get, (method) wacomtouch_xyrange_set);
    
    STATIC_ATTR_LONG (c, "observer", 0 , a_observer);
	CLASS_ATTR_STYLE_LABEL (c, "observer", 0, "onoff", "observer");
	// override default accessors
	CLASS_ATTR_ACCESSORS (c, "observer", (method) wacomtouch_observer_get, (method) wacomtouch_observer_set);
    
    class_register (CLASS_BOX, c);
    wacomtouch_class = c;
    post ("[s2m.wacomtouch] version %s, by Charles Gondre - cnrs lma s2m", S2MWACOMTOUCH_VERSION); //, __DATE__);
    //--------------------------------------------------------------------------
    // check out max version : [s2m.wacomtouch] works with max 5 or newer
    if ((maxversion() & 0x0fff) < 0x0500)
    {
        error ("this version of [s2m.wacomtouch] does not work with max versions prior to max5.");
        return 0;
    }
    
    // check out mac OS version : [s2m.wacomtouch] works with OS 10.6 or newer.
#if defined(MAC_VERSION)
    SInt32 major, minor;
    Gestalt (gestaltSystemVersionMajor, &major);
    Gestalt (gestaltSystemVersionMinor, &minor);
    
    if ( (major == 10 && minor < 6) || ( major < 10 ) )
    {
        error ("this version of [s2m.wacomtouch] does not work with mac OS versions prior to 10.6");
        return 0;
    }
#endif

    //--------------------------------------------------------------------------
    if (WacomMTInitialize != NULL)
    {
        WacomMTError err = WacomMTInitialize (WACOM_MULTI_TOUCH_API_VERSION);
        
        if (err == WMTErrorSuccess)
        {
            isTouchAPIConnected = 1;
                            
            quittask_install ((method) S2Mwacomtouch_terminate, NULL);

            registerWacomCallbacks();
            
            //return 1;
        }
        else
        {
            error ("error initializing with wacomTouchAPI: %i", err);
            return 1;
        }
    }
    else
    {
        error ("WacomMultiTouch.framework is not installed.");
        return 1;
    }
    
    // jitter stuff :
    p = max_jit_classex_setup (calcoffset (t_wacomtouch, obex));
    
    attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_DEFER_LOW ;
	attr = jit_object_new (_jit_sym_jit_attr_offset, "matrix_name", _jit_sym_symbol, attrflags,
		(method)0L,(method)0L, calcoffset (t_wacomtouch, matrix_name));
	max_jit_classex_addattr (p, attr);
	
	max_jit_classex_standard_wrap (p, NULL, 0);
        
    a_observer = 0;
    
    /* quand on passe au sdk 6 faudra faire qq chose comme ca plutot :
    
    max_jit_class_obex_setup(c, calcoffset(t_wacomtouch, obex));
    
    attrflags = JIT_ATTR_GET_DEFER_LOW | JIT_ATTR_SET_DEFER_LOW ;
	attr = jit_object_new(_jit_sym_jit_attr_offset,"matrix_name", _jit_sym_symbol, attrflags,
		(method)0L,(method)0L, calcoffset(t_wacomtouch, matrix_name));
	max_jit_class_addattr(c, attr);
	max_jit_class_wrap_standard(c, NULL, 0);
    */
    
    return 0;
}


//==============================================================================


void *wacomtouch_new (t_symbol *s, long argc, t_atom *argv)
{
    t_wacomtouch *x = NULL;
    int i, j;
    long attrstart;
    
    if (nbWacomtouchInstances >= S2MWACOMTOUCH_MAXINSTANCES)
        return NULL;
        
    if ( (x = (t_wacomtouch *) object_alloc ((t_class*) wacomtouch_class)) )
    {        
        for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
        {
            if (s2mWacomTouchInstances[i] == NULL)
            {
                s2mWacomTouchInstances[i] = x;
                nbWacomtouchInstances++;
                break;
            }
        }
        
        
        for (i = 0 ; i < S2MWACOMTOUCH_MAXDEVICES ; ++i)
        {
            for (j = 0 ; j < S2MWACOMTOUCH_MAXFINGERS ; ++j)
            {
                x->activeFingersID[i][j] = -1;
            }
        }
    
        x->selectedMenuIndex = 0; // "all tablets"
        x->a_xyrange = 0; // logical xy (0. to 1.)
        
        x->coordScaleFactorX = 1.;
        x->coordScaleFactorY = 1.;
         // jitter stuff :
        x->matrix_name = _jit_sym_nothing;
        
        
        // si "raw matrixName"
        if (argc > 1 && argv->a_type == A_SYM && argv->a_w.w_sym->s_name[0] // if arg
          && ! strcmp (argv->a_w.w_sym->s_name, "raw"))// compare with "raw"
        {
            attrstart = max_jit_attr_args_offset (argc, argv);
            if (attrstart && argv)
            {
                jit_atom_arg_getsym (&x->matrix_name, 1, attrstart, argv);
            }	
            max_jit_attr_args (x, argc,argv); //handle attribute args
            
            x->outlet4 = listout ((t_object *)x);
            x->outlet3 = listout ((t_object *)x);
            x->outlet2 = listout ((t_object *)x);
            x->outlet0 = bangout ((t_object *)x);
        }
        else
        {
            x->outlet4 = listout ((t_object *)x);
            x->outlet3 = listout ((t_object *)x);
            x->outlet2 = listout ((t_object *)x);
            x->outlet1 = listout ((t_object *)x);
            // x->outlet0 = bangout ((t_object *)x);
        }
        // post("x->matrix_name = %s", x->matrix_name->s_name);
        
        x->x_systhread = NULL;
        x->x_systhread_cancel = false;
        x->x_systhread_active = false;
       
        // do we have a matrix name ?
        if (*(x->matrix_name->s_name) != '\0')
        {
            x->rawMode = true; // raw mode allowed
        }
        else
        {
             x->rawMode = false; // raw mode not allowed
        }
        x->rawActive = false;
    }
        
	return x;
}


void wacomtouch_assist (t_wacomtouch *x, void *b, long m, long a, char *s)
{
    if (m == ASSIST_INLET)  // inlets
    {
        sprintf (s, "messages");
    }
    else    // outlets
    {
        if (x->rawMode)
        {
            switch (a)
            {
                case 0:
                    sprintf (s, "(bang) Bang after each frame");
                    break;
                case 1:
                    sprintf (s,"(list) <deviceMenuIndex> <deviceID>");
                    break;
                case 2:
                    sprintf (s,"(list) device infos");
                    break;
                case 3:
                    sprintf (s,"(message) devices enumeration in umenu format");
                    break;
                break;
            }
        }
        else            
        {
            switch (a)
            {
                case 0:
                    sprintf (s, "(list) Fingers data");
                    break;
                case 1:
                    sprintf (s,"(list) <deviceMenuIndex> <deviceID> <fingerCount>");
                    break;
                case 2:
                    sprintf (s,"(list) device infos");
                    break;
                case 3:
                    sprintf (s,"(message) devices enumeration in umenu format");
                    break;
                break;
            }
 
        }
    }
}

//==============================================================================
void wacomtouch_free (t_wacomtouch *x)
{
    int i;
    unsigned int ret;
    
    if (x->x_systhread)
    {
		x->x_systhread_cancel = true;           // tell the thread to stop		
		systhread_join (x->x_systhread, &ret);   // wait for the thread to stop
		x->x_systhread = NULL;
	}
    
    listenFingers (x, 0);
    
    // fixme : a voir si ligne suivante ok selon menu index...
    wacomtouch_noraw (x);
    
    for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
    {
        if (s2mWacomTouchInstances[i] == x)
        {
            s2mWacomTouchInstances[i] = NULL;
            nbWacomtouchInstances--;
            break;
        }
    }
    for ( ; i < S2MWACOMTOUCH_MAXINSTANCES-1 ; ++i)
    {
        s2mWacomTouchInstances[i] = s2mWacomTouchInstances[i+1];
        s2mWacomTouchInstances[i+1] = NULL;
    }
}


//----------------------------------------------------------------------------//
//                          MESSAGES FROM MAX                                 //
//----------------------------------------------------------------------------//


#pragma mark -
#pragma mark MAXMESSAGES
#pragma mark -


/**
    Select a particular tablet (and tool) to use.
    This typically comes from the umenu.
    We just set selectedMenuIndex accordingly, and we'll use it when the user
    ask to "poll".
*/
void wacomtouch_int (t_wacomtouch *x, long value)
{
    if (value < 0 || value > nbConnectedDevices)
        error ("invalid device index"); // selectedMenuIndex won't change
    else
        x->selectedMenuIndex = value;
}


/** Start 'polling' the tablet in the umenu. */
void wacomtouch_poll (t_wacomtouch *x)
{
    if (!x->rawMode)
    {
        if (x->selectedMenuIndex == 0) // "all tablets" are selected
        {
            listenFingers (x, 1);
        }
        else
        {
            int deviceID = getDeviceID (x->selectedMenuIndex);
            WacomDevice *device = getDeviceFromID (deviceID);
            
            if (device != NULL)
            {
                listenFingersOfDevice (x, 1, device);
            }
        }
    }
    else
    {
        wacomtouch_raw (x);
    }
}


/** Stop 'polling' the tablet in the umenu. */
void wacomtouch_nopoll (t_wacomtouch *x)
{
    if (!x->rawMode)
    {
        if (x->selectedMenuIndex == 0) // "all tablets" are selected
        {
            listenFingers (x, 0);
        }
        else
        {    
            int deviceID = getDeviceID (x->selectedMenuIndex);
            WacomDevice *device = getDeviceFromID (deviceID);
            
            if (device != NULL)
            {
                listenFingersOfDevice (x, 0, device);
            }
        }
    }
    else
    {
        wacomtouch_noraw (x);
    }
}

/** Start receiving rawdata from the tablet in the umenu. */
void wacomtouch_raw (t_wacomtouch *x)
{
    int i;
    
    if (!x->rawMode)
        return;
            
    if (x->selectedMenuIndex == 0) // "all tablets" are selected
    {
        if (x->rawActive)
        {
            wacomtouch_noraw (x);
        }
        
        // we look for the first tablet that got raw data support
        for (i = 0 ; i < nbConnectedDevices ; ++i)
        {
            WacomMTCapability *tabCapa = &connectedDevices[i]->capabilities;
            
            if (tabCapa->CapabilityFlags & WMTCapabilityFlagsRawAvailable)
            {
                listenRawOfDevice (x, 1, connectedDevices[i]);
                x->rawActive = true;
                return;
            }
        }
        error ("No tablet with raw data support was found");
    }
    else
    {
        int deviceID = getDeviceID (x->selectedMenuIndex);
        WacomDevice *device = getDeviceFromID (deviceID);
        
        WacomMTCapability *tabCapa = &device->capabilities;
        
        if (!(tabCapa->CapabilityFlags & WMTCapabilityFlagsRawAvailable))
        {
            error ("Selected tablet does not support raw data");
            return;
        }
        
        if (device != NULL)
        {    
            if (x->rawActive)
            {
                if ( hasRawListener (device, x) )
                {
                    return; // already listening...
                }
                else
                {
                    // stop listenning raw of every tablet
                    for (i = 0 ; i < nbConnectedDevices ; ++i)
                    {
                        if ( hasRawListener (connectedDevices[i], x) )
                        {
                            listenRawOfDevice (x, 0, connectedDevices[i]);
                            break;
                        }
                    }
                    
                    listenRawOfDevice (x, 1, device);
                    x->rawActive = true;
                }
            }
            else
            {
                listenRawOfDevice (x, 1, device);
                x->rawActive = true;
            }
        }
    }
}


/** Stop receiving raw data from the tablet in the umenu. */
void wacomtouch_noraw (t_wacomtouch *x)
{
    int i;
    
    if ( !(x->rawMode || x->rawActive) )
        return;
    
    if (x->selectedMenuIndex == 0) // "all tablets" are selected
    {
        // stop listenning raw data
        for (i = 0 ; i < nbConnectedDevices ; ++i)
        {
            if (hasRawListener (connectedDevices[i], x))
            {
                listenRawOfDevice (x, 0, connectedDevices[i]);
                x->rawActive = false;
                return;
            }
        }
    }
    else
    {    
        int deviceID = getDeviceID (x->selectedMenuIndex);
        WacomDevice *device = getDeviceFromID (deviceID);
        
        if (device != NULL)
        {
            listenRawOfDevice (x, 0, device);
            x->rawActive = false;
        }
    }
}


/** Rebuild the umenu. */
void wacomtouch_menu (t_wacomtouch *x)
{
    int iCheck = 1;
    int i;
	t_atom at[2];
	char str[16];
    t_symbol *appendsym = gensym ("append");
    WacomDevice *device;

    outlet_anything (x->outlet4, gensym ("clear"), 0, NULL);
    
    atom_setsym (at, gensym ("All tablets"));
    
    outlet_anything (x->outlet4, appendsym, 1, at);
    
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {    
        const int deviceID = connectedDevicesIDs[i];
        sprintf (str, "tablet ID %i ", deviceID);
        atom_setsym (at, gensym (str));
        outlet_anything (x->outlet4, appendsym, 1, at);
        
        device = getDeviceFromID (deviceID);
        
        if (device != NULL)
        {
            int checkit = hasFingerListener (device, x) | hasRawListener (device, x);
            atom_setlong (at, iCheck);
            atom_setlong (at+1, checkit);
           
            outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
            
            atom_setlong (&at[0], getMenuIndexFromID (device->ID));
            atom_setlong (&at[1], device->connected ? 1:0);
            outlet_anything (x->outlet4, gensym ("enableitem"), 2, at);
        }
        ++iCheck;
    }
}

/**
    Print information about the selected tablet.
    If "all tablets" are selected, then we print the info of the first tablet.
*/
void wacomtouch_getinfo (t_wacomtouch *x)
{
    int i;
    
    if (nbConnectedDevices == 0)
        return;
    
    if (x->selectedMenuIndex != 0) // one device selected
    {
        WacomDevice *wacomDevice = getDeviceFromMenuIndex (x->selectedMenuIndex);
        
        if (wacomDevice != NULL)
            outputCapabilities(x, &(wacomDevice->capabilities));
    }
    else // 'all tables' selected - print infos of all connected devices
    {
        for (i = 1 ; i <= nbConnectedDevices ; i++)
        {
            WacomDevice *wacomDevice = getDeviceFromMenuIndex (i);
           
             if (wacomDevice != NULL)
                outputCapabilities(x, &(wacomDevice->capabilities));
        }
    }
}


/** Build the umenu after instantiation. */
void wacomtouch_loadbang (t_wacomtouch *x)
{
    wacomtouch_menu (x);
}


//-----------------------     ATTRIBUTES     ---------------------------------//

t_max_err wacomtouch_xyrange_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av)
{
	if (ac && av)
    {
		char alloc;
		
		if (atom_alloc (ac, av, &alloc))
        {
			return MAX_ERR_GENERIC;
		}
		atom_setlong (*av, x->a_xyrange);
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_xyrange_set (t_wacomtouch *x, void *attr, long ac, t_atom *av)
{
	if (ac && av)
    {
		long rangeMode = atom_getlong (av);

		if (rangeMode < 0)
			x->a_xyrange = 0;
		else if (rangeMode > 2)
			x->a_xyrange = 2;
		else
			x->a_xyrange = rangeMode;
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_observer_get (t_wacomtouch *x, void *attr, long *ac, t_atom **av)
{
	if (ac && av)
    {
		char alloc;
		
		if (atom_alloc (ac, av, &alloc))
        {
			return MAX_ERR_GENERIC;
		}
		atom_setlong (*av, a_observer);
	}
	return MAX_ERR_NONE;
}

t_max_err wacomtouch_observer_set (t_wacomtouch *x, void *attr, long ac, t_atom *av)
{
    int i;
    
	if (ac && av)
    {
		long observerMode = atom_getlong (av);
        
        if (a_observer == observerMode)
            return MAX_ERR_NONE;
        
		if (observerMode <= 0)
			a_observer = 0;
		else if (observerMode >= 1)
			a_observer = 1;
                
        for (i = 0 ; i < nbConnectedDevices ; i++)
        {
            // register the finger callback for that device.
            WacomMTError err;
            int deviceID = connectedDevicesIDs[i];
            
            
            if (a_observer == 0)
            {
                err= WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
                err= WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, MyFingerCallback, NULL);
            }
            else
            {
                err= WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
                err= WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, MyFingerCallback, NULL);
            }   
            if (err != WMTErrorSuccess)
            {
                error ("error registering finger callback : %i", err);
            }
            // check if tablet support raw data
            //   if (deviceInfo.CapabilityFlags & WMTCapabilityFlagsRawAvailable)
            {
                // register the raw callback for that device.
                if (a_observer == 0)
                {
                    err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeObserver, NULL, NULL);
                    err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeNone, MyRawCallback, NULL);
                }
                else
                {
                    err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeNone, NULL, NULL);
                    err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeObserver, MyRawCallback, NULL);
                }
                
                if (err != WMTErrorSuccess)
                {
                    error ("error registering raw callback : %i", err);
                }
            }
            
            #ifdef S2MWACOMTOUCH_BLOBSUPPORT
            // check if tablet support blob data
            if (deviceInfo.CapabilityFlags & WMTCapabilityFlagsBlobAvailable)
            {
                // register the raw callback for that device.
                if (a_observer == 0)
                {
                    err = WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
                    err = WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeNone, MyBlobCallback, NULL);
                }
                else
                {
                    err = WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
                    err = WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeObserver, MyBlobCallback, NULL);
                }
                
                if (err != WMTErrorSuccess)
                {
                    error ("error registering blobs callback : %i", err);
                }
            }
            #endif // #ifdef S2MWACOMTOUCH_BLOBSUPPORT  
        }
    }
	return MAX_ERR_NONE;
}

//===========================  UTILS   =================================//

/**
    Return the device corresponding to the given ID.
    If no device is found, NULL is returned.
*/
WacomDevice* getDeviceFromID (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevices[i]->ID == deviceID)
            return connectedDevices[i];
    }
    return NULL;
}

/** 
    Return the deviceID corresponding to the given menuIndex.
    in case menuIndex == 0 ("all tablets" item is selected)
    we return 0.
    in case the menuIndex is out of bounds we return 0;
*/
int getDeviceID (int menuIndex)
{
    if (menuIndex <= 0 || menuIndex > nbConnectedDevices)
        return -1;
    
    return connectedDevicesIDs[menuIndex-1];
}

/** 
    Return the menuIndex corresponding to the given deviceID.
    if no device with the given deviceID is found, we return 0.
*/
int getMenuIndexFromID (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevicesIDs[i] == deviceID)
            return i+1;
    }
    return 0;
}

/**
    Return the device corresponding to the given menuIndex.
    in case menuIndex == 0 ("all tablets" item is selected)
    or if no device is found, NULL is returned.
*/
WacomDevice* getDeviceFromMenuIndex (int menuIndex)
{
    int devID = getDeviceID (menuIndex);
    if (devID == -1)
        return NULL;
    return getDeviceFromID (devID);
}

        
/**
    Return 1 if the given device is currently connected. else return 0.
*/
int isDeviceConnected (WacomDevice *device)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevices[i] == device)
            return 1;
    }
    return 0;
}

/**
    Return 1 if the device corresponding to the given ID is currently connected.
    else return 0.
*/
int isDeviceIDconnected (int deviceID)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        if (connectedDevicesIDs[i] == deviceID)
            return 1;
    }
    return 0;
}

//----------------------------------------------------------------------------//
#pragma mark -
#pragma mark ACTIONS
#pragma mark -
//----------------------------------------------------------------------------//


/**
    Send out the parameters from the event.
 */
void outputFingers (t_wacomtouch *x, WacomMTFingerCollection *fingerCollection)
{
    t_atom at[16];
    int fingerCounter = 0;
    const int nbFingers = fingerCollection->FingerCount;
    const int devID = fingerCollection->DeviceID;
    const int menuIndexOfID = getMenuIndexFromID (devID);
    int i;
    
    // WacomDevice *device = getDeviceFromID (devID);
    
    atom_setlong (at, menuIndexOfID);
    atom_setlong (at+1, devID);
    atom_setlong (at+2, fingerCollection->FingerCount);
    outlet_list (x->outlet2, NULL, 3, at);
    
    float scaleX = x->coordScaleFactorX;
    float scaleY = x->coordScaleFactorY;
    
    for (fingerCounter = 0 ; fingerCounter < nbFingers ; ++fingerCounter)
    {
        WacomMTFinger *finger = &(fingerCollection->Fingers[fingerCounter]);
		
        const int currentFingerID = finger->FingerID;
        
        // wacom bug workaround :
        // the driver sometimes tell us many times that the finger has been
        // added. So we filter that information if we already know that..
        if (finger->TouchState == 1)
        {
            bool fingerIsKnown = false;
            int *knowFingersIDs = &x->activeFingersID[getMenuIndexFromID (devID)-1][0];
            
            for (i = 0 ; i < 32 ; ++i)
            {
                if (knowFingersIDs[i] == currentFingerID)
                {
                    fingerIsKnown = true;
                    break;
                }
            }
            
            if (!fingerIsKnown)
            {
                for (i = 0 ; i < 32 ; ++i)
                {
                    if (knowFingersIDs[i] == -1)
                    {
                        knowFingersIDs[i] = currentFingerID;
                        break;
                    }
                }
            }
                
        }
        else if (finger->TouchState == 3)
        {
            int *knowFingersIDs = &x->activeFingersID[getMenuIndexFromID (devID)-1][0];
            
            for (i = 0 ; i < 32 ; ++i)
            {
                if (knowFingersIDs[i] == currentFingerID)
                    knowFingersIDs[i] = -1;
            }
        }
        
        
        atom_setlong (at, currentFingerID);
        atom_setlong (at+1, (int) finger->TouchState);
        atom_setfloat (at+2, scaleX * finger->X);
        atom_setfloat (at+3, scaleY * finger->Y);
        atom_setfloat (at+4, scaleX * finger->Width);
        atom_setfloat (at+5, scaleY * finger->Height);
        atom_setlong (at+6, finger->Sensitivity);
        atom_setfloat (at+7, finger->Orientation);
        atom_setlong (at+8, ((finger->Confidence) ? 1 : 0));
        
        outlet_list (x->outlet1, NULL, 9, at);
    }
    
    if (nbFingers == 1)
    {
        // we update the finger count to 0 if the only finger is lifted
        WacomMTFinger *finger = &(fingerCollection->Fingers[0]);
        if (finger->TouchState == WMTFingerStateUp)
        {
            atom_setlong (at, menuIndexOfID);
            atom_setlong (at+1, devID);
            atom_setlong (at+2, 0);
            outlet_list (x->outlet2, NULL, 3, at);
        }
    } 
}

#ifdef S2MWACOMTOUCH_BLOBSUPPORT
void outputBlobs (t_wacomtouch *x, WacomMTBlobAggregate *blobPacket) { }
#endif

void outputCapabilities (t_wacomtouch *x, WacomMTCapability *tabCapa)
{
    t_atom at[2];

    if (tabCapa != NULL)
    {     
        atom_setsym (at, gensym ("version"));
        atom_setlong (at+1, tabCapa->Version);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("deviceID"));
        atom_setlong (at+1, tabCapa->DeviceID);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("type"));
        atom_setlong (at+1, tabCapa->Type);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalOriginX"));
        atom_setfloat (at+1, tabCapa->LogicalOriginX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalOriginY"));
        atom_setfloat (at+1, tabCapa->LogicalOriginY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalWidth"));
        atom_setfloat (at+1, tabCapa->LogicalWidth);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("logicalHeight"));
        atom_setfloat (at+1, tabCapa->LogicalHeight);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("physicalSizeX"));
        atom_setfloat (at+1, tabCapa->PhysicalSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("physicalSizeY"));
        atom_setfloat (at+1, tabCapa->PhysicalSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("reportedSizeX"));
        atom_setlong (at+1, tabCapa->ReportedSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("reportedSizeY"));
        atom_setlong (at+1, tabCapa->ReportedSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("scanSizeX"));
        atom_setlong (at+1, tabCapa->ScanSizeX);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("scanSizeY"));
        atom_setlong (at+1, tabCapa->ScanSizeY);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("fingerMax"));
        atom_setlong (at+1, tabCapa->FingerMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("blobMax"));
        atom_setlong (at+1, tabCapa->BlobMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("blobPointsMax"));
        atom_setlong (at+1, tabCapa->BlobPointsMax);
        outlet_list (x->outlet3, NULL, 2, at);
        
        atom_setsym (at, gensym ("capabilityFlags"));
        atom_setlong (at+1, tabCapa->CapabilityFlags);
        outlet_list (x->outlet3, NULL, 2, at);
    }
}

void fillMatrixWithRawData (t_wacomtouch *x)
{
	long savelock;
	t_jit_matrix_info minfo;
	char *bp;
	int i, j;
    // find matrix
    void *matrix = jit_object_findregistered (x->matrix_name);
    
    // ScanSizeX: 129
    // ScanSizeY: 83
    
    // test if we're being asked to die, and if so return before we do the work
    // if (x->x_systhread_cancel) 
    //     goto out;
    
    int elementCount;
    unsigned short *rawData = NULL;
    
    if (x->rawPacket == NULL)
    {
        elementCount = 129 * 83;
    }
    else
    {
        elementCount = x->rawPacket->ElementCount;
        rawData = x->rawPacket->Sensitivity;
    }
    
    if (matrix && jit_object_method (matrix, _jit_sym_class_jit_matrix))
    {
        savelock = (long) jit_object_method (matrix, _jit_sym_lock, 1);
        jit_object_method (matrix, _jit_sym_getinfo, &minfo);
        jit_object_method (matrix, _jit_sym_getdata, &bp);
        
        if ( (!bp) || (minfo.planecount < 1) )
        { 
            jit_error_sym (x, _jit_sym_err_calculate);
            jit_object_method (matrix, _jit_sym_lock, savelock);
            return;
        }
        
        CLIP_ASSIGN (elementCount, 0, minfo.dim[0] * minfo.dim[1]);
        
        if (rawData == NULL)
        {
            if (minfo.type == _jit_sym_long)
            {
                long *out;
                for (i = 0 ; i<minfo.dim[1] ; ++i)
                {
                    out = (long *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = 50 * (j % 4);
                }
            }
            else if (minfo.type == _jit_sym_float32)
            {        
                float *out;
                for (i = 0 ; i < minfo.dim[1] ; ++i)
                {
                    out = (float *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = 50 * (j % 4);
                }
            }
            else if (minfo.type == _jit_sym_float64)
            {  
                double *out;
                for (i = 0 ; i < minfo.dim[1] ; ++i)
                {
                    out = (double *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = 50 * (j % 4);
                }
                /*      
                for (i=0 ; i<elementCount ; i++)
                {
                    p = bp + (i/minfo.dim[0])*minfo.dimstride[1] + (i%minfo.dim[0])*minfo.dimstride[0];
                    *((double *)p) = 50 * (i % 4);
                }
                */
            }
        }
        else
        {
            if (minfo.type == _jit_sym_long)
            {
                long *out;
                for (i = 0 ; i < minfo.dim[1] ; ++i)
                {
                    out = (long *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = (long) *rawData++;
                }
            }
            else if (minfo.type == _jit_sym_float32)
            {        
                float *out;
                for (i = 0 ; i < minfo.dim[1] ; ++i)
                {
                    out = (float *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = (float) *rawData++;
                }
            }
            else if (minfo.type == _jit_sym_float64)
            {        
                double *out;
                for (i = 0 ; i < minfo.dim[1] ; ++i)
                {
                    out = (double *) (bp + i * minfo.dimstride[1]);
                    for (j = 0 ; j < minfo.dim[0] ; ++j)
                        *out++ = (double) *rawData++;
                }
            }
        }
        
        jit_object_method (matrix,_jit_sym_lock, savelock);
    }
    else
    {
        jit_error_sym (x, _jit_sym_err_calculate);
    }
    
// out:
    // x->x_systhread_cancel = false;  // reset cancel flag for next time, in case
    x->x_systhread_active = false;
    // systhread_exit(0);	// this can return a value to systhread_join();    
}



//----------------------------------------------------------------------------//
#pragma mark -
#pragma mark LISTENNERS
#pragma mark -
//----------------------------------------------------------------------------//


/**
  Add/remove this instance as a listener of all the connected devices.
  
  only one callback can be registered per device (see api doc).
  So we globally register a callback, and then add/remove each s2m.wacomtouch
  instance as "listenner" to the devices.
 */
void listenFingers (t_wacomtouch *x, int shouldListen)
{
    int i;
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        listenFingersOfDevice (x, shouldListen, connectedDevices[i]);
    }
}

/**
 Add/remove this instance as a listener of specified devices.
 
 only one callback can be registered per device (see api doc).
 So we globally register a callback, and then add/remove each s2m.wacomtouch
 instance as "listenner" to the devices.
 */
void listenFingersOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device)
{

    int i;
    t_atom at[2];
    
    if (device == NULL)
        return;
    
    t_wacomtouch **selectedDeviceListeners = device->fingersListeners;
    
    if (selectedDeviceListeners != NULL)
    {
        if (shouldListen)
        {
            // check if we're not already listenning
            if (! hasFingerListener (device, x))
            {
                // set this s2m.wacomtouch instance as a listener of that tablet
                for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
                {
                    if (selectedDeviceListeners[i] == NULL)
                    {
                        selectedDeviceListeners[i] = x;
                        device->nbFingersListeners++;
                        break;
                    }
                }
                
                atom_setlong (at, getMenuIndexFromID (device->ID));
                atom_setlong (at+1, 1);
                outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
            }
        }
        else if (hasFingerListener (device, x))
        {
            for (i = 0 ; i < device->nbFingersListeners ; ++i)
            {
                if ( selectedDeviceListeners[i] == x)
                {
                    selectedDeviceListeners[i] = NULL;                    
                    break;
                }
            }
            for ( ; i < device->nbFingersListeners-1 ; ++i)
            {
                selectedDeviceListeners[i] = selectedDeviceListeners[i+1];
                selectedDeviceListeners[i+1] = NULL;
            }
            
            device->nbFingersListeners--;
            
            atom_setlong (at, getMenuIndexFromID (device->ID));
            atom_setlong (at+1, 0);
            outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
        }
    }
}


#ifdef S2MWACOMTOUCH_BLOBSUPPORT

/**
  Add/remove this instance as a listener of all the connected devices.
  
  only one callback can be registered per device (see api doc).
  So we globally register a callback, and then add/remove each s2m.wacomtouch
  instance as "listenner" to the devices.
 */
void listenBlobs (t_wacomtouch *x, int shouldListen)
{
    int i;
    
    for (i = 0 ; i < nbConnectedDevices ; ++i)
    {
        listenBlobsOfDevice (x, shouldListen, connectedDevices[i]);
    }
}

/**
 Add/remove this instance as a listener of specified devices.
 
 only one callback can be registered per device (see api doc).
 So we globally register a callback, and then add/remove each s2m.wacomtouch
 instance as "listenner" to the devices.
 */
void listenBlobsOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device)
{
    int i;
    t_atom at[2];
    
    if (device == NULL)
        return;
    
    t_wacomtouch **selectedDeviceListeners = device->blobsListeners;
    
    if (selectedDeviceListeners != NULL)
    {
        if (shouldListen)
        {
            // check if we're not already listenning
            if (! hasBlobListener(device, x))
            {
                // set this s2m.wacomtouch instance as a listener of that tablet
                for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
                {
                    if (selectedDeviceListeners[i] == NULL)
                    {
                        selectedDeviceListeners[i] = x;
                        device->nbBlobsListeners++;
                        break;
                    }
                }
                
                atom_setlong (at, getMenuIndexFromID (device->ID));
                atom_setlong (at+1, 1);
                outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
            }
        }
        else if (hasBlobListener (device, x))
        {
            for (i = 0 ; i < device->nbBlobsListeners ; ++i)
            {
                if ( selectedDeviceListeners[i] == x)
                {
                    selectedDeviceListeners[i] = NULL;                    
                    break;
                }
            }
            for ( ; i < device->nbBlobsListeners-1 ; ++i)
            {
                selectedDeviceListeners[i] = selectedDeviceListeners[i+1];
                selectedDeviceListeners[i+1] = NULL;
            }
            
            device->nbBlobsListeners--;
            
            atom_setlong (at, getMenuIndexFromID (device->ID));
            atom_setlong (at+1, 0);
            outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
        }
    }
}
#endif // #ifdef S2MWACOMTOUCH_BLOBSUPPORT

/**
 Add/remove this instance as a listener of specified devices.
 
 only one callback can be registered per device (see api doc).
 So we globally register a callback, and then add/remove each s2m.wacomtouch
 instance as "listenner" to the devices.
 */
void listenRawOfDevice (t_wacomtouch *x, int shouldListen, WacomDevice* device)
{
    int i;
    t_atom at[2];
    
    if (device == NULL)
        return;
    
    t_wacomtouch **selectedDeviceListeners = device->rawListeners;
    
    if (selectedDeviceListeners != NULL)
    {
        if (shouldListen)
        {
            // check if we're not already listenning
            if (! hasRawListener (device, x))
            {
                // set this s2m.wacomtouch instance as a listener of that tablet
                for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
                {
                    if (selectedDeviceListeners[i] == NULL)
                    {
                        selectedDeviceListeners[i] = x;
                        device->nbRawListeners++;
                        break;
                    }
                }
                
                atom_setlong (at, getMenuIndexFromID (device->ID));
                atom_setlong (at+1, 1);
                outlet_anything (x->outlet4, gensym("checkitem"), 2, at);
            }
        }
        else if (hasRawListener (device, x))
        {
            for (i = 0 ; i < device->nbRawListeners ; ++i)
            {
                if ( selectedDeviceListeners[i] == x)
                {
                    selectedDeviceListeners[i] = NULL;                    
                    break;
                }
            }
            for ( ; i < device->nbRawListeners - 1 ; ++i)
            {
                selectedDeviceListeners[i] = selectedDeviceListeners[i+1];
                selectedDeviceListeners[i+1] = NULL;
            }
            
            device->nbRawListeners--;
            
            atom_setlong (at, getMenuIndexFromID (device->ID));
            atom_setlong (at+1, 0);
            outlet_anything (x->outlet4, gensym ("checkitem"), 2, at);
        }
    }
}


//----------------------------------------------------------------------------//
#pragma mark -
#pragma mark CALLBACKS
#pragma mark -
//----------------------------------------------------------------------------//

/** Register this class with the Wacom touch API. */
static void registerWacomCallbacks(void)
{
    if (isTouchAPIConnected)
    {
        // Listen for device connect/disconnect
        // Note that the attach callback will be called for each connected device
        // immediately after the callback is registered.
        WacomMTRegisterAttachCallback (MyAttachCallback, NULL);
        WacomMTRegisterDetachCallback (MyDetachCallback, NULL);
    }
}


/*  A device has been attached. */
void deviceAttached (t_wacomtouch *x, WacomDevice* device)
{
    // update the umenu :
    wacomtouch_menu (x);
    // post("new device (id:%i) attached", [[device ID] intValue]);
}

/* A device has been dettached. */
void deviceDettached (t_wacomtouch *x, WacomDevice* device)
{
    // update the umenu :
    t_atom at[2];
 
    atom_setlong (&at[0], getMenuIndexFromID (device->ID));
    atom_setlong (&at[1], 0);
    outlet_anything (x->outlet4, gensym ("enableitem"), 2, at);
    outlet_bang (x->outlet4);
}

/* A device we're listenning got some fingers! */
void deviceFingersMoved (t_wacomtouch *x, WacomMTFingerCollection *fingerPacket)
{
    int devID = fingerPacket->DeviceID;
    WacomDevice *device = getDeviceFromID (devID);
    WacomMTCapability *capa = &(device->capabilities);
    
    if (x->a_xyrange == 0)      // logical (0 to 1)
    {
        x->coordScaleFactorX = 1.;
        x->coordScaleFactorY = 1.;
    }
    else if (x->a_xyrange == 1) // proportionnal (0 - 1)
    {
        x->coordScaleFactorX = 1.;
        x->coordScaleFactorY = capa->ReportedSizeY / (float) capa->ReportedSizeX;
    }
    else if (x->a_xyrange == 2)  // physical (mm)
    {
        x->coordScaleFactorX = capa->PhysicalSizeX;
        x->coordScaleFactorY = capa->PhysicalSizeY;
    }
    
    outputFingers (x, fingerPacket);
}

#ifdef S2MWACOMTOUCH_BLOBSUPPORT
/* A device we're listenning got some fingers! */
void deviceBlobsData (t_wacomtouch *x, WacomMTBlobAggregate *blobPacket)
{
    outputBlobs (x, blobPacket);
}
#endif


/* A device we're listenning got some fingers! */
void deviceRawData (t_wacomtouch *x, WacomMTRawData *rawPacket)
{
    t_atom at[2];
    int devID;
    
    if (false == (x->x_systhread_active))
    {
        x->x_systhread_active = true;
                
        x->rawPacket = rawPacket;
    
        //deviceFingersMovedRaw(devListeners[i], fingerPacket);
       // systhread_create((method) fillMatrixWithRawData, x, 0, 0, 0, &(x->x_systhread));
        fillMatrixWithRawData (x);

        if (rawPacket != NULL)
            devID = rawPacket->DeviceID;
        else
            devID = connectedDevicesIDs[0];
        int menuIndexOfID = getMenuIndexFromID (devID);
    
        atom_setlong (at, menuIndexOfID);
        atom_setlong (at+1, devID);
        outlet_list (x->outlet2, NULL, 2, at);
        
        outlet_bang (x->outlet0);
        // systhread_setpriority 	( &(x->x_systhread), 32 );
    }
}


//----------------------------------------------------------------------------//
#pragma mark -
#pragma mark WACOM TOUCH API C-FUNCTION CALLBACKS
#pragma mark -
//----------------------------------------------------------------------------//

/** A new device was connected. */
void MyAttachCallback (WacomMTCapability deviceInfo, void *userInfo)
{
    int i;
    
    WacomDevice *wacomDevice;
    const int deviceID = deviceInfo.DeviceID;
    
    if (nbConnectedDevices >= S2MWACOMTOUCH_MAXDEVICES)
    {
        error ("no more than %i devices can be connected at the same time", S2MWACOMTOUCH_MAXDEVICES);
        return;
    }
    
    // register the finger callback for that device.
    WacomMTError err;
    
    if (a_observer == 0)
    {
        err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, MyFingerCallback, NULL);
    }
    else
    {
        err = WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, MyFingerCallback, NULL);
    }
    
    if (err != WMTErrorSuccess)
    {
        // NSLog (@"s2m.wacomtouch - error registering : %i", err);
       return;
    }
    // check if tablet support raw data
    if (deviceInfo.CapabilityFlags & WMTCapabilityFlagsRawAvailable)
    {
        // register the raw callback for that device.
        if (a_observer == 0)
            err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeNone, MyRawCallback, NULL);
        if (a_observer == 1)
            err = WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeObserver, MyRawCallback, NULL);
        
        if (err != WMTErrorSuccess)
        {
            // NSLog (@"s2m.wacomtouch - error registering : %i", err);
            return;
        }
    }
    
    #ifdef S2MWACOMTOUCH_BLOBSUPPORT
    // check if tablet support blob data
    if (deviceInfo.CapabilityFlags & WMTCapabilityFlagsBlobAvailable)
    {
        // register the raw callback for that device.
        if (a_observer == 0)
            err = WacomMTRegisterBlobReadCallback (deviceID NULL, WMTProcessingModeNone, MyBlobCallback, NULL);
        else
            err = WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeObserver, MyBlobCallback, NULL);

        if (err != WMTErrorSuccess)
        {
            // NSLog (@"s2m.wacomtouch - error registering : %i", err);
            return;
        }
    }
    #endif // #ifdef S2MWACOMTOUCH_BLOBSUPPORT

    if ( !isDeviceIDconnected (deviceID) )
    {
        connectedDevicesIDs[nbConnectedDevices] = deviceID;
    
        wacomDevice = (WacomDevice*) malloc (sizeof (WacomDevice));
        wacomDevice->ID = deviceID;
        wacomDevice->connected = true;
        WacomMTCapability *capabilities = &wacomDevice->capabilities;
        WacomMTGetDeviceCapabilities (deviceID, capabilities);
        wacomDevice->nbFingersListeners = 0;
        wacomDevice->nbRawListeners = 0;
#ifdef S2MWACOMTOUCH_BLOBSUPPORT
        wacomDevice->nbBlobsListeners = 0;
#endif
        
        for (i = 0 ; i < S2MWACOMTOUCH_MAXINSTANCES ; ++i)
        {
            wacomDevice->fingersListeners[i] = NULL;
            wacomDevice->rawListeners[i] = NULL;
#ifdef S2MWACOMTOUCH_BLOBSUPPORT
            wacomDevice->blobsListeners[i] = NULL;
#endif
        }
        
        connectedDevices[nbConnectedDevices] = wacomDevice;
        nbConnectedDevices++;  
    }
    else
    {
        wacomDevice = getDeviceFromID (deviceID);
        wacomDevice->connected = true;
    }
    
    // tell all [s2m.wacomtouch] instances
    for (i = 0 ; i < nbWacomtouchInstances ; ++i)
    {
        deviceAttached (s2mWacomTouchInstances[i], wacomDevice);
    }
}


/** A device was unplugged. */
void MyDetachCallback (int deviceID, void *userInfo)
{
    int i;
    
    WacomDevice *wacomDevice = getDeviceFromID (deviceID);
    wacomDevice->connected = false;
    
    // tell all [s2m.wacomtouch] instances
    for (i = 0 ; i < nbWacomtouchInstances ; ++i)
    {
        deviceDettached (s2mWacomTouchInstances[i], wacomDevice);
    }
    
    WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
    WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeNone, NULL, NULL);
    WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeNone, NULL, NULL);
    
    WacomMTRegisterFingerReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
    WacomMTRegisterBlobReadCallback (deviceID, NULL, WMTProcessingModeObserver, NULL, NULL);
    WacomMTRegisterRawReadCallback (deviceID, WMTProcessingModeObserver, NULL, NULL);
}


/** Fingers are moving on one of the connected devices!
    
    You should not spend too long responding to touch messages. The touch API 
	will automatically and silently purge hung applications, requiring a 
	re-registration. 
    usleep(0.02 * 1000000);
    make a copy and trigger it from another thread..
 */
int MyFingerCallback (WacomMTFingerCollection *fingerPacket, void *userInfo)
{
    int i;
    int devID = fingerPacket->DeviceID;
    WacomDevice *device = getDeviceFromID (devID);
    
    if (device != NULL)
    {
        t_wacomtouch **devListeners = device->fingersListeners;
        
        for (i = 0 ; i < device->nbFingersListeners ; ++i)
        {
            /*
            if (false == (devListeners[i]->x_systhread_active))
            {
                devListeners[i]->x_systhread_active = true;
                outlet_bang(devListeners[i]->outlet1);
                //deviceFingersMovedRaw(devListeners[i], fingerPacket);
                systhread_create((method) wacomtouch_bang, devListeners[i], 0, 0, 0, &(devListeners[i]->x_systhread));
                systhread_setpriority 	( 	&(devListeners[i]->x_systhread), 32);
            }
            */
            // deviceRawData(devListeners[i], NULL);
            
            deviceFingersMoved (devListeners[i], fingerPacket);
           
        }
    }
	return WMTErrorSuccess;
}


 /**  */
int MyRawCallback (WacomMTRawData *rawPacket, void *userData)
{
    int i;
    int devID = rawPacket->DeviceID;
    WacomDevice *device = getDeviceFromID (devID);
    
    if (device != NULL && device->nbRawListeners != 0)
    {
        t_wacomtouch **devListeners = device->rawListeners;
        
        for (i = 0 ; i < device->nbRawListeners ; ++i)
        {
            deviceRawData (devListeners[i], rawPacket);
        }
    }
	return WMTErrorSuccess;
}

#ifdef S2MWACOMTOUCH_BLOBSUPPORT
int MyBlobCallback (WacomMTBlobAggregate *blobPacket, void *userData)
{
    int i;
    int devID = blobPacket->DeviceID;
    WacomDevice *device = getDeviceFromID (devID);
    
    if (device != NULL)
    {
        t_wacomtouch **devListeners = device->blobsListeners;
        
        for (i = 0 ; i < device->nbBlobsListeners ; ++i)
        {
            deviceBlobsData (devListeners[i], blobPacket);
        }
    }
	return WMTErrorSuccess;
}
#endif


//----------------------------------------------------------------------------//
// eof
