#ifndef __OIO_OBJ_H__
#define __OIO_OBJ_H__

#include <Carbon/Carbon.h>
#include <CoreFoundation/CoreFoundation.h>
#include <libgen.h>
#include "oio_err.h"

#define PP(s, ...) printf("%s[%d]:%s(): "s"\n", basename(__FILE__), __LINE__, __PRETTY_FUNCTION__, ##__VA_ARGS__)

#define DEV_NAME(d) ((t_oio_generic_device *)d)->name
#define DEV_NEXT(d) ((t_oio_generic_device *)d)->next
#define DEV_PREV(d) ((t_oio_generic_device *)d)->prev

typedef enum _oio_dev_type{
	OIO_DEV_DNF,
	OIO_DEV_HID,
	OIO_DEV_MIDI,
	OIO_DEV_SERIAL
} t_oio_dev_type;

typedef struct _oio_generic_device{
	char name[64];
	t_oio_dev_type type;
	struct _oio_generic_device *next, *prev;
} t_oio_generic_device;

typedef struct _oio{
	struct _oio_hid *hid;
	struct _oio_midi *midi;
	struct _oio_serial *serial;
	CFMutableDictionaryRef device_hash; // dictionary of devices stored with their automatically generated OSC name
} t_oio;

typedef void (*t_oio_callback)(t_oio *, long, char*, void *);
typedef struct _oio_callbackList{
	t_oio_callback f;
	void *context;
	struct _oio_callbackList *prev;
	struct _oio_callbackList *next;
} t_oio_callbackList;

t_oio *oio_obj_alloc(t_oio_callback hid_connect_callback, 
		     void *hid_connect_context, 
		     t_oio_callback hid_disconnect_callback, 
		     void *hid_disconnect_context, 
		     //char *hid_usage_plist, 
		     //char *hid_cookie_plist,
		     t_oio_callback midi_connect_callback,
		     void *midi_connect_context,
		     t_oio_callback midi_disconnect_callback,
		     void *midi_disconnect_context,
		     t_oio_callback serial_connect_callback,
		     void *serial_connect_context,
		     t_oio_callback serial_disconnect_callback,
		     void *serial_disconnect_context);
void oio_obj_run(t_oio *oio);

t_oio_err oio_obj_sendOSC(t_oio *oio, int n, char *buf);
void oio_obj_dispatch(t_oio *oio, t_oio_callbackList *callback_list, long n, char *osc);
CFPropertyListRef oio_obj_getPlist(char *filepath);
t_oio_dev_type oio_obj_getDeviceType(t_oio *oio, char *name);
t_oio_err oio_obj_getDevicesByName(t_oio *oio, 
				   char *name, 
				   //t_oio_generic_device *device_list, 
				   //CFMutableDictionaryRef hash, 
				   int *num_devices, 
				   t_oio_generic_device ***matched_devices);

void oio_obj_makeOSCDeviceName(t_oio *oio, char *name, char **osc_name);
t_oio_err oio_obj_registerValueCallback(t_oio *oio, char *name, t_oio_callback f, void *context);
t_oio_err oio_obj_unregisterValueCallback(t_oio *oio, char *name, t_oio_callback f);
t_oio_err oio_obj_registerNotificationCallback(t_oio *oio, t_oio_callbackList **callbackList, t_oio_callback f, void *context);
#endif // __OIO_OBJ_H__
