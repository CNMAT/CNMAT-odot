// Wacom Sample Code
//
// WacMTUtils.cpp : Helper module for dynamic linking to wacommt.dll
//


#include <windows.h>
#include "../../inc/WacomMultiTouch.h" //point this to your include path or where it lives

HINSTANCE gpWacomMTLib;
WACOMMTINITIALIZE WacomMTInitializeInternal = NULL;
WACOMMTQUIT WacomMTQuitInternal = NULL;
WACOMMTGETATTACHEDDEVICEIDS WacomMTGetAttachedDeviceIDs = WacomMTGetAttachedDeviceIDsInternal;
WACOMMTGETDEVICECAPABILITIES WacomMTGetDeviceCapabilities = WacomMTGetDeviceCapabilitiesInternal;
WACOMMTREGISTERATTACHCALLBACK WacomMTRegisterAttachCallback = WacomMTRegisterAttachCallbackInternal;
WACOMMTREGISTERDETACHCALLBACK WacomMTRegisterDetachCallback = WacomMTRegisterDetachCallbackInternal;
WACOMMTREGISTERFINGERREADCALLBACK WacomMTRegisterFingerReadCallback = WacomMTRegisterFingerReadCallbackInternal;
WACOMMTREGISTERBLOBREADCALLBACK WacomMTRegisterBlobReadCallback = WacomMTRegisterBlobReadCallbackInternal;
WACOMMTREGISTERRAWREADCALLBACK WacomMTRegisterRawReadCallback = WacomMTRegisterRawReadCallbackInternal;
WACOMMTREGISTERFINGERREADHWND WacomMTRegisterFingerReadHWND = WacomMTRegisterFingerReadHWNDInternal;
WACOMMTREGISTERBLOBREADHWND WacomMTRegisterBlobReadHWND = WacomMTRegisterBlobReadHWNDInternal;
WACOMMTREGISTERRAWREADHWND WacomMTRegisterRawReadHWND = WacomMTRegisterRawReadHWNDInternal;

#define GETPROCADDRESS(type, func) \
	func = (type)GetProcAddress(gpWacomMTLib, #func); \
	if (!func){ err = GetLastError(); UnloadWacomMTLib(); return false; }



///////////////////////////////////////////////////////////////////////////////
bool LoadWacomMTLib( void )
{
	int err = 0;

	gpWacomMTLib = LoadLibraryA("wacommt.dll");
	if ( !gpWacomMTLib )
	{
		err = GetLastError();
		return false;
	}

	WacomMTInitializeInternal = (WACOMMTINITIALIZE)GetProcAddress( gpWacomMTLib, "WacomMTInitialize" );
	WacomMTQuitInternal = (WACOMMTQUIT)GetProcAddress( gpWacomMTLib, "WacomMTQuit" );
	if( !WacomMTInitializeInternal || !WacomMTQuitInternal )
	{
		err = GetLastError();
		UnloadWacomMTLib();
		return false;
	}

	GETPROCADDRESS( WACOMMTGETATTACHEDDEVICEIDS,       WacomMTGetAttachedDeviceIDs );
	GETPROCADDRESS( WACOMMTGETDEVICECAPABILITIES,      WacomMTGetDeviceCapabilities );
	GETPROCADDRESS( WACOMMTREGISTERATTACHCALLBACK,     WacomMTRegisterAttachCallback );
	GETPROCADDRESS( WACOMMTREGISTERDETACHCALLBACK,     WacomMTRegisterDetachCallback );
	GETPROCADDRESS( WACOMMTREGISTERFINGERREADCALLBACK, WacomMTRegisterFingerReadCallback );
	GETPROCADDRESS( WACOMMTREGISTERBLOBREADCALLBACK,   WacomMTRegisterBlobReadCallback );
	GETPROCADDRESS( WACOMMTREGISTERRAWREADCALLBACK,    WacomMTRegisterRawReadCallback );
	GETPROCADDRESS( WACOMMTREGISTERFINGERREADHWND,     WacomMTRegisterFingerReadHWND );
	GETPROCADDRESS( WACOMMTREGISTERBLOBREADHWND,       WacomMTRegisterBlobReadHWND );
	GETPROCADDRESS( WACOMMTREGISTERRAWREADHWND,        WacomMTRegisterRawReadHWND );

	return true;
}



///////////////////////////////////////////////////////////////////////////////
void UnloadWacomMTLib( void )
{
	if ( gpWacomMTLib )
	{
		FreeLibrary( gpWacomMTLib );
	}

	WacomMTInitializeInternal = NULL;
	WacomMTQuitInternal = NULL;
	WacomMTGetAttachedDeviceIDs = WacomMTGetAttachedDeviceIDsInternal;
	WacomMTGetDeviceCapabilities = WacomMTGetDeviceCapabilitiesInternal;
	WacomMTRegisterAttachCallback = WacomMTRegisterAttachCallbackInternal;
	WacomMTRegisterDetachCallback = WacomMTRegisterDetachCallbackInternal;
	WacomMTRegisterFingerReadCallback = WacomMTRegisterFingerReadCallbackInternal;
	WacomMTRegisterBlobReadCallback = WacomMTRegisterBlobReadCallbackInternal;
	WacomMTRegisterRawReadCallback = WacomMTRegisterRawReadCallbackInternal;
	WacomMTRegisterFingerReadHWND = WacomMTRegisterFingerReadHWNDInternal;
	WacomMTRegisterBlobReadHWND = WacomMTRegisterBlobReadHWNDInternal;
	WacomMTRegisterRawReadHWND = WacomMTRegisterRawReadHWNDInternal;

	return;
}



///////////////////////////////////////////////////////////////////////////////
WacomMTError WacomMTInitialize( int libraryAPIVersion )
{
	WacomMTError retVal = WMTErrorSuccess;

	if ( !LoadWacomMTLib() )
	{
		retVal = WMTErrorDriverNotFound;
	}
	else
	{
		retVal = WacomMTInitializeInternal( libraryAPIVersion );
	}

	return retVal;
}



///////////////////////////////////////////////////////////////////////////////
void WacomMTQuit(void)
{
	WacomMTQuitInternal();
	UnloadWacomMTLib();
}



//The rest of these are stubs to prevent a crash if the driver isn't loaded
int WacomMTGetAttachedDeviceIDsInternal(int *deviceArray, size_t bufferSize)
{
	return 0;
}
WacomMTError WacomMTGetDeviceCapabilitiesInternal(int deviceID, WacomMTCapability *capabilityBuffer)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterAttachCallbackInternal(WMT_ATTACH_CALLBACK attachCallback, void *userData)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterDetachCallbackInternal(WMT_DETACH_CALLBACK detachCallback, void *userData)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterFingerReadCallbackInternal(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_FINGER_CALLBACK fingerCallback, void *userData)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterBlobReadCallbackInternal(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_BLOB_CALLBACK blobCallback, void *userData)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterRawReadCallbackInternal(int deviceID, WacomMTProcessingMode mode, WMT_RAW_CALLBACK rawCallback, void *userData)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterFingerReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterBlobReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth)
{
	return WMTErrorSuccess;
}
WacomMTError WacomMTRegisterRawReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth)
{
	return WMTErrorSuccess;
}
