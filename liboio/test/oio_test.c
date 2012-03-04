#include <stdlib.h>
#include "oio.h"
#include "oio_osc_util.h"
#include "oio_hid_strings.h"
#include "oio_hid_util.h"
#include "osc.h"
#include <mach/mach_time.h>

void send_bundle(t_oio *oio, uint64_t timestamp, char *address, int val);
void print_devices(t_oio *oio);
void value_callback(t_oio *oio, long n, char *ptr, void *context);
void print_osc_msg(t_osc_msg m, void *context);
void connect_callback(t_oio *oio, long n, char *ptr, void *context);
void disconnect_callback(t_oio *oio, long n, char *ptr, void *context);

int main(int argc, char **argv){
	char *usageplist = "/Users/john/Development/cnmat/trunk/max/externals/odot/liboio/hid_usage_strings.plist";
	char *cookieplist = "/Users/john/Development/cnmat/trunk/max/externals/odot/liboio/hid_cookie_strings.plist";
	//t_oio *oio = oio_obj_alloc(connect_callback, NULL, disconnect_callback, NULL, usageplist, cookieplist, connect_callback, NULL, disconnect_callback, NULL);
	t_oio *oio = oio_obj_alloc(connect_callback, NULL, disconnect_callback, NULL, connect_callback, NULL, disconnect_callback, NULL, connect_callback, NULL, disconnect_callback, NULL);
	oio_hid_usageFile(oio, usageplist);
	oio_hid_cookieFile(oio, cookieplist);
	oio_obj_run(oio);
	print_devices(oio);
	if(argc > 1){
		if(!strcmp(argv[1], "-l")){
			return 0;
		}else{
			oio_obj_registerValueCallback(oio, argv[1], value_callback, NULL);
		}
	}

	char buf[1024];
	//sprintf(buf, "%s/%s", argv[1], "LED/green");
	//sprintf(buf, "%s/%s", argv[1], "LEDorUID");
	/*
	sprintf(buf, "%s/%s", argv[1], "LEDorUID");
	send_bundle(oio, 0, buf, 0);
	sprintf(buf, "%s/%s", argv[1], "write-to-backlighting");
	send_bundle(oio, 0, buf, 1);
	sprintf(buf, "%s/%s", argv[1], "LED/12");
	*/
	//sprintf(buf, "%s/%d", argv[1], 30);
	int i = 0;
	while(1){
		//send_bundle(oio, 0, buf, ++i % 2);
		sleep(1);
	}
	/*
	oio_hid_sendValueToDevice(oio, buf, 0);

	//sprintf(buf, "%s/%s", argv[1], "write-to-backlighting");
	sprintf(buf, "%s/%d", argv[1], 154);
	oio_hid_sendValueToDevice(oio, buf, 1);

	//sprintf(buf, "%s/%s", argv[1], "LED/12");
	sprintf(buf, "%s/%d", argv[1], 137);
	//oio_hid_sendValueToDevice(oio, buf, i);

	int i = 0;
	while(1){
		//long r = rand();
		//PP("sending %ld to %s", r, buf);
		//oio_hid_sendValueToDevice(oio, buf, r);
		oio_hid_sendValueToDevice(oio, buf, ++i % 2);
		sleep(1);
	}
	*/
	return 0;
}

void send_bundle(t_oio *oio, uint64_t timestamp, char *address, int val){
	if(timestamp == 0){
		timestamp = oio_osc_util_machAbsoluteToNTP(mach_absolute_time());
	}
	char bundle[1024], *ptr = bundle;
	strcpy(bundle, "#bundle\0");
	ptr += 8;
	*((uint64_t *)ptr) = hton64(timestamp);
	ptr += 8;
	char *size = ptr;
	ptr += 4;
	int address_len = strlen(address);
	strcpy(ptr, address);
	ptr += address_len + 1;
	while((ptr - address) % 4){
		ptr++;
	}
	*ptr++ = ',';
	*ptr++ = 'h';
	ptr += 2;
	*((uint64_t *)ptr) = hton64((uint64_t)val);
	ptr += 8;
	*((uint32_t *)size) = hton32((uint32_t)(ptr - size - 4));
	oio_hid_sendOSCBundleToDevice(oio, ptr - address, bundle);
}

void print_devices(t_oio *oio){
	int i, n;
	char **names = NULL;

	oio_midi_getSourceNames(oio, &n, &names);
	printf("MIDI Sources:\n");
	printf("\t%2s\t%-50s\t%9s\t%9s\n", "#", "Device", "Manufacturer", "Model");
	for(i = 0; i < n; i++){
		if(names[i]){
			char manu[128], model[128];
			oio_midi_util_getManufacturer(oio, names[i], manu);
			oio_midi_util_getModel(oio, names[i], model);
			printf("\t%2d:\t%-50s\t%9s\t%9s\n", i + 1, names[i], manu, model);
			osc_mem_free(names[i]);
		}
	}
	if(names){
		osc_mem_free(names);
		names = NULL;
	}

	oio_midi_getDestinationNames(oio, &n, &names);
	printf("\n");
	printf("MIDI Destinations:\n");
	printf("\t%2s\t%-50s\t%9s\t%9s\n", "#", "Device", "Manufacturer", "Model");
	for(i = 0; i < n; i++){
		if(names[i]){
			char manu[128], model[128];
			oio_midi_util_getManufacturer(oio, names[i], manu);
			oio_midi_util_getModel(oio, names[i], model);
			printf("\t%2d:\t%-50s\t%9s\t%9s\n", i + 1, names[i], manu, model);
			osc_mem_free(names[i]);
		}
	}
	if(names){
		osc_mem_free(names);
		names = NULL;
	}

	printf("\n");
	printf("HID Devices:\n");
	printf("\t%2s\t%-50s\t%9s\t%9s\n", "#", "Device", "VendorID", "ProductID");
	oio_hid_getDeviceNames(oio, &n, &names);
	for(i = 0; i < n; i++){
		if(names[i]){
			uint32_t pid = -1, vid = -1;
			oio_hid_util_getDeviceProductIDFromDeviceName(oio, names[i], &pid);
			oio_hid_util_getDeviceVendorIDFromDeviceName(oio, names[i], &vid);
			printf("\t%2d:\t%-50s\t%9d\t%9d\n", i + 1, names[i], vid, pid);
			osc_mem_free(names[i]);
		}
	}
	if(names){
		osc_mem_free(names);
	}

	// serial
	printf("\n");
	printf("Serial Devices:\n");
	printf("\t%2s\t%-50s\t%9s\t%9s\n", "#", "Device", "VendorID", "ProductID");
	//printf("\t%2s\t%-50s\n", "#", "Device");
	oio_serial_getDeviceNames(oio, &n, &names);
	for(i = 0; i < n; i++){
		if(names[i]){
			uint32_t pid = -1, vid = -1;
			oio_serial_util_getDeviceProductIDFromDeviceName(oio, names[i], &pid);
			oio_serial_util_getDeviceVendorIDFromDeviceName(oio, names[i], &vid);
			printf("\t%2d:\t%-50s\t%9d\t%9d\n", i + 1, names[i], vid, pid);
			//printf("\t%2d:\t%-50s\n", i + 1, names[i]);
			osc_mem_free(names[i]);
		}
	}
	if(names){
		osc_mem_free(names);
	}
}

void value_callback(t_oio *oio, long n, char *ptr, void *context){
	PP("%ld %p", n, ptr);
	printf("[ #bundle %llu (0x%llx)\n", *((uint64_t *)(ptr + 8)), *((uint64_t *)(ptr + 8)));
	osc_bundle_getMessagesWithCallback(n, ptr, print_osc_msg, context);
	printf("]\n");
	/*
	t_oio_osc_msg *msg = NULL;
	t_oio_err err = oio_osc_util_parseOSCBundle(n, ptr, &msg);
	if(err){
		OIO_ERROR(err);
	}
	while(msg){
		int i;
		printf("%s ", msg->address);
		for(i = 0; i < msg->natoms; i++){
			uint64_t l = *((uint64_t *)(msg->atoms + i));
			printf("%llu (%c) ", l, msg->atoms[i].typetag);
		}
		printf("\n");
		msg = msg->next;
	}
	oio_osc_util_printBundle(n, ptr, printf);
	oio_obj_sendOSC(oio, n, ptr);
	*/
}

void print_osc_msg(t_osc_msg m, void *context){
	osc_message_printMsg(&m, printf);
}

void connect_callback(t_oio *oio, long n, char *ptr, void *context){
	//PP("%s was connected", ptr);
}

void disconnect_callback(t_oio *oio, long n, char *ptr, void *context){
	//PP("%s was disconnected", ptr);
}

/*
void test_macros(){
	t_oio_osc_atom af, ad;
	float valf = 324.341;
	double vald = 130945867.381975;

	OIO_OSC_ATOM_SETFLOAT64(&af, valf);
	af.typetag = 'd';
	double vv;
	OIO_OSC_ATOM_GETFLOAT64(&af, vv);
	printf("valf = %f, vv = %f\n", valf, vv);

	OIO_OSC_ATOM_SETFLOAT64(&af, vald);
	af.typetag = 'd';
	vv;
	OIO_OSC_ATOM_GETFLOAT64(&af, vv);
	printf("valf = %f, vv = %f\n", vald, vv);
}
*/
