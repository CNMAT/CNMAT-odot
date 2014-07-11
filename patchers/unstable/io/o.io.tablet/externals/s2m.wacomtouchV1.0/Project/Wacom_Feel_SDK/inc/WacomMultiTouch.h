/*----------------------------------------------------------------------------
 
FILE NAME
	WacomMultiTouch.h
 
PURPOSE
	Wacom MultiTouch API
 
COPYRIGHT
	Copyright WACOM Technology, Inc.  2010.
	All rights reserved.
 
 ----------------------------------------------------------------------------*/
#ifndef WacomMultitouch_h
#define WacomMultitouch_h

#include <stdlib.h>   //for size_t
#include "WacomMultiTouchTypes.h"

#ifndef WMT_EXPORT // {
#if defined(_MSC_VER)
	#if defined(WACOMMT_EXPORTS)
		#define WMT_EXPORT __declspec(dllexport)
	#else
		#define WMT_EXPORT 
	#endif
#elif defined(__GNUC__)
	#define WMT_EXPORT __attribute__((visibility("default"), weak_import)) extern
#else
	#error UnknownPlatform
	#define WMT_EXPORT
#endif
#endif // }


#define WM_FINGERDATA  0x6205
#define WM_BLOBDATA    0x6206
#define WM_RAWDATA     0x6207

#if defined(__cplusplus)
extern "C"
{
#endif

	//////////////////////////////////////////////////////////////////////////////
	typedef void (* WMT_ATTACH_CALLBACK)(WacomMTCapability deviceInfo, void *userData);
	typedef void (* WMT_DETACH_CALLBACK)(int deviceID, void *userData);

	typedef int (* WMT_FINGER_CALLBACK)(WacomMTFingerCollection *fingerPacket, void *userData);
	typedef int (* WMT_BLOB_CALLBACK)(WacomMTBlobAggregate *blobPacket, void *userData);
	typedef int (* WMT_RAW_CALLBACK)(WacomMTRawData *blobPacket, void *userData);



	//////////////////////////////////////////////////////////////////////////////
#if defined(WACOMMT_EXPORTS) || defined(__GNUC__)
	WMT_EXPORT WacomMTError WacomMTInitialize(int libraryAPIVersion);
	WMT_EXPORT void         WacomMTQuit(void);
	WMT_EXPORT int          WacomMTGetAttachedDeviceIDs(int *deviceArray, size_t bufferSize);
	WMT_EXPORT WacomMTError WacomMTGetDeviceCapabilities(int deviceID, WacomMTCapability *capabilityBuffer);
	WMT_EXPORT WacomMTError WacomMTRegisterAttachCallback(WMT_ATTACH_CALLBACK attachCallback, void *userData);
	WMT_EXPORT WacomMTError WacomMTRegisterDetachCallback(WMT_DETACH_CALLBACK detachCallback, void *userData);
	WMT_EXPORT WacomMTError WacomMTRegisterFingerReadCallback(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_FINGER_CALLBACK fingerCallback, void *userData);
	WMT_EXPORT WacomMTError WacomMTRegisterBlobReadCallback(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_BLOB_CALLBACK blobCallback, void *userData);
	WMT_EXPORT WacomMTError WacomMTRegisterRawReadCallback(int deviceID, WacomMTProcessingMode mode, WMT_RAW_CALLBACK rawCallback, void *userData);
#if defined(_MSC_VER)
	WMT_EXPORT WacomMTError WacomMTRegisterFingerReadHWND(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
	WMT_EXPORT WacomMTError WacomMTRegisterBlobReadHWND(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
	WMT_EXPORT WacomMTError WacomMTRegisterRawReadHWND(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
#endif
#else
	typedef WacomMTError ( * WACOMMTINITIALIZE )                 ( int );
	typedef void         ( * WACOMMTQUIT )                       ( void );
	typedef int          ( * WACOMMTGETATTACHEDDEVICEIDS )       ( int*, size_t );
	typedef WacomMTError ( * WACOMMTGETDEVICECAPABILITIES )      ( int, WacomMTCapability* );
	typedef WacomMTError ( * WACOMMTREGISTERATTACHCALLBACK )     ( WMT_ATTACH_CALLBACK, void* );
	typedef WacomMTError ( * WACOMMTREGISTERDETACHCALLBACK )     ( WMT_DETACH_CALLBACK, void* );
	typedef WacomMTError ( * WACOMMTREGISTERFINGERREADCALLBACK ) ( int, WacomMTHitRect*, WacomMTProcessingMode, WMT_FINGER_CALLBACK, void* );
	typedef WacomMTError ( * WACOMMTREGISTERBLOBREADCALLBACK )   ( int, WacomMTHitRect*, WacomMTProcessingMode, WMT_BLOB_CALLBACK, void* );
	typedef WacomMTError ( * WACOMMTREGISTERRAWREADCALLBACK )    ( int, WacomMTProcessingMode, WMT_RAW_CALLBACK, void* );
	typedef WacomMTError ( * WACOMMTREGISTERFINGERREADHWND )     ( int, WacomMTProcessingMode, HWND, int );
	typedef WacomMTError ( * WACOMMTREGISTERBLOBREADHWND )       ( int, WacomMTProcessingMode, HWND, int );
	typedef WacomMTError ( * WACOMMTREGISTERRAWREADHWND )        ( int, WacomMTProcessingMode, HWND, int );


	extern WACOMMTINITIALIZE                 WacomMTInitializeInternal;
	extern WACOMMTQUIT                       WacomMTQuitInternal;
	extern WACOMMTGETATTACHEDDEVICEIDS       WacomMTGetAttachedDeviceIDs;
	extern WACOMMTGETDEVICECAPABILITIES      WacomMTGetDeviceCapabilities;
	extern WACOMMTREGISTERATTACHCALLBACK     WacomMTRegisterAttachCallback;
	extern WACOMMTREGISTERDETACHCALLBACK     WacomMTRegisterDetachCallback;
	extern WACOMMTREGISTERFINGERREADCALLBACK WacomMTRegisterFingerReadCallback;
	extern WACOMMTREGISTERBLOBREADCALLBACK   WacomMTRegisterBlobReadCallback;
	extern WACOMMTREGISTERRAWREADCALLBACK    WacomMTRegisterRawReadCallback;
	extern WACOMMTREGISTERFINGERREADHWND     WacomMTRegisterFingerReadHWND;
	extern WACOMMTREGISTERBLOBREADHWND       WacomMTRegisterBlobReadHWND;
	extern WACOMMTREGISTERRAWREADHWND        WacomMTRegisterRawReadHWND;

	bool LoadWacomMTLib( void );
	void UnloadWacomMTLib( void );
	WacomMTError   WacomMTInitialize(int libraryAPIVersion);
	void           WacomMTQuit(void);
	int            WacomMTGetAttachedDeviceIDsInternal(int *deviceArray, size_t bufferSize);
	WacomMTError   WacomMTGetDeviceCapabilitiesInternal(int deviceID, WacomMTCapability *capabilityBuffer);
	WacomMTError   WacomMTRegisterAttachCallbackInternal(WMT_ATTACH_CALLBACK attachCallback, void *userData);
	WacomMTError   WacomMTRegisterDetachCallbackInternal(WMT_DETACH_CALLBACK detachCallback, void *userData);
	WacomMTError   WacomMTRegisterFingerReadCallbackInternal(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_FINGER_CALLBACK fingerCallback, void *userData);
	WacomMTError   WacomMTRegisterBlobReadCallbackInternal(int deviceID, WacomMTHitRect *hitRect, WacomMTProcessingMode mode, WMT_BLOB_CALLBACK blobCallback, void *userData);
	WacomMTError   WacomMTRegisterRawReadCallbackInternal(int deviceID, WacomMTProcessingMode mode, WMT_RAW_CALLBACK rawCallback, void *userData);
	WacomMTError   WacomMTRegisterFingerReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
	WacomMTError   WacomMTRegisterBlobReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
	WacomMTError   WacomMTRegisterRawReadHWNDInternal(int deviceID, WacomMTProcessingMode mode, HWND hWnd, int bufferDepth);
#endif

#if defined(__cplusplus)
}
#endif

#endif /* WacomMultitouch_h */
