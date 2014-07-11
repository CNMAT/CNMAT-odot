/*
  Written by John MacCallum, The Center for New Music and Audio Technologies, 
  University of California, Berkeley.  Copyright (c) 2009-10, The Regents of 
  the University of California (Regents).  
  Permission to use, copy, modify, distribute, and distribute modified versions 
  of this software and its documentation without fee and without a signed 
  licensing agreement, is hereby granted, provided that the above copyright 
  notice, this paragraph and the following two paragraphs appear in all copies, 
  modifications, and distributions. 

  IN NO EVENT SHALL REGENTS BE LIABLE TO ANY PARTY FOR DIRECT, INDIRECT, 
  SPECIAL, INCIDENTAL, OR CONSEQUENTIAL DAMAGES, INCLUDING LOST PROFITS, ARISING 
  OUT OF THE USE OF THIS SOFTWARE AND ITS DOCUMENTATION, EVEN IF REGENTS HAS 
  BEEN ADVISED OF THE POSSIBILITY OF SUCH DAMAGE. 

  REGENTS SPECIFICALLY DISCLAIMS ANY WARRANTIES, INCLUDING, BUT NOT LIMITED TO, 
  THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR 
  PURPOSE. THE SOFTWARE AND ACCOMPANYING DOCUMENTATION, IF ANY, PROVIDED 
  HEREUNDER IS PROVIDED "AS IS". REGENTS HAS NO OBLIGATION TO PROVIDE 
  MAINTENANCE, SUPPORT, UPDATES, ENHANCEMENTS, OR MODIFICATIONS. 


  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
  NAME: o.io
  DESCRIPTION: OSC for all (most) input devices
  AUTHORS: John MacCallum 
  COPYRIGHT_YEARS: 2009-10
  SVN_REVISION: $LastChangedRevision: 587 $ 
  VERSION 0.0: First try 
  VERSION 0.1: Second try 
  @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@ 
*/
#include <stdio.h>
#include "version.h" 
#include "ext.h" 
#include "ext_obex.h" 
#include "ext_critical.h"
#include "jpatcher_api.h" 
#include "jgraphics.h" 
#include "version.c" 
#include "pthread.h"

#include "osc.h"

#include "oio.h"
#include "oio_osc_util.h"
#include "oio_hid_strings.h"
#include "oio_hid_util.h"
#include "oio_midi_util.h"
#include "osc_match.h"
#include "oio_serial_util.h"

#include <mach/mach_time.h>

#define CHECKBOX_WIDTH 10
#define CHECKBOX_COLUMN_WIDTH 30
#define ROW_HEIGHT 18
#define PAD 10


//#define THREADPOST
#ifdef THREADPOST
#define TP {pthread_t th = pthread_self();				\
		struct sched_param p;					\
		int policy;						\
		int ret;\
		ret = pthread_getschedparam(th, &policy, &p);			\
		if(!ret){							\
			post("%s: thread: %p, policy = %d, priority = %d", __PRETTY_FUNCTION__, th, policy, p.sched_priority); \
		}else{							\
			post("%s: thread: %p", __PRETTY_FUNCTION__, th); \
		}							\
	}
#else
#define TP 
#endif

typedef struct _device{
	t_symbol *name;
	t_symbol *protocol;
	int open;
	int row;
	struct _device *prev;
	struct _device *next;
} t_device;

typedef struct _hid_device{
	t_device device;
	int vendor_id, product_id;
} t_hid_device;

#define MIDI_SOURCE 2
#define MIDI_DESTINATION 3
typedef struct _midi_device{
	t_device device;
	char manufacturer[128], model[128];
	int direction;
} t_midi_device;

typedef struct _serial_device{
	t_device device;
	uint32_t vendor_id, product_id;
} t_serial_device;

typedef struct _bundle{
	uint64_t timestamp;
	char *data;
	int len;
	struct _bundle *next;
} t_bundle;

typedef struct _odotio{ 
 	t_jbox box; 
	t_oio *oio;
 	void *osc_outlet, *info_outlet; 
	t_device *devices;
	int ndevices;
	t_critical lock;
 	t_jrgba bgcolor; 
	int ready;
	t_object *pv;
	long synchronize;
	t_bundle *cache;
	void *clock;
	int hex;
} t_odotio; 

void *odotio_class; 

void odotio_paint(t_odotio *x, t_object *patcherview); 
void odotio_draw_row(t_jgraphics *gg, double width, double ypos, t_symbol *protocol, const char *col1, const char *col2, char *dev_name, double col1_width, double col2_width);
void odotio_draw_checkbox(t_jgraphics *gg, double ypos, int open);
void odotio_open(t_odotio *x, t_symbol *sym);
void odotio_close(t_odotio *x, t_symbol *sym);

void odotio_value_callback(t_oio *oio, long n, char *ptr, void *context);
void odotio_connect_callback(t_oio *oio, long n, char *ptr, void *context);
void odotio_disconnect_callback(t_oio *oio, long n, char *ptr, void *context);
void odotio_flush(t_odotio *x, t_symbol *msg, int argc, t_atom *argv);

void odotio_list(t_odotio *x, t_symbol *msg, short argc, t_atom *argv);
void odotio_assist(t_odotio *x, void *b, long m, long a, char *s); 
void odotio_free(t_odotio *x); 
t_max_err odotio_notify(t_odotio *x, t_symbol *s, t_symbol *msg, void *sender, void *data); 

t_device *odotio_getDeviceByRow(t_odotio *x, int row);
void odotio_toggleDevice(t_odotio *x, t_device *d);
void odotio_openDevice(t_odotio *x, t_device *d);
void odotio_closeDevice(t_odotio *x, t_device *d);
void odotio_addDevice(t_odotio *x, char *name);
void odotio_removeDevice(t_odotio *x, char *name);
void odotio_doRemoveDevice(t_odotio *x, t_device *d);
void odotio_fullPacket(t_odotio *x, long len, long ptr);
void odotio_anything(t_odotio *x, t_symbol *msg, int argc, t_atom *argv);

void odotio_mousedown(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers); 
void odotio_mousedrag(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers); 
void odotio_mouseup(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers); 

void odotio_setHIDUsagePlist(t_odotio *x, t_symbol *file);
void odotio_setHIDCookiePlist(t_odotio *x, t_symbol *file);
int main(void); 
void *odotio_new(t_symbol *s, long argc, t_atom *argv); 
void odotio_setup(t_odotio *x, t_symbol *msg, int argc, t_atom *argv);

t_symbol *l_background, *l_devices;

t_symbol *ps_fullpacket;

void odotio_paint(t_odotio *x, t_object *patcherview){ 
	TP;
	x->pv = patcherview;

	if(x->ready == 0){
		return;
	}

 	t_rect rect; 
 	t_jrgba c = (t_jrgba){0,0,0,1.}; 

 	// get graphics context 
 	t_jgraphics *g = (t_jgraphics *)patcherview_get_jgraphics(patcherview); 

 	// get our box's rectangle 
 	jbox_get_rect_for_view((t_object *)x, patcherview, &rect); 

	jgraphics_set_font_size(g, 12);
	t_jrgba black = (t_jrgba){0,0,0,1.};

	const char *pid_label = "ProductID", *vid_label = "VendorID", *prot_label = "Protocol", *dev_label = "Device";
	const char *manu_label = "Manufacturer", *model_label = "Model";
	double col1_width, col2_width;
	double w, h;
	jgraphics_text_measure(g, manu_label, &w, &h);
	col1_width = col2_width = w + 10;
	t_jgraphics *gg = jbox_start_layer((t_object *)x, patcherview, l_background, rect.width, rect.height);
	if(gg){
		// draw the outline of the box 
		jgraphics_set_source_jrgba(gg, &c); 
		jgraphics_set_line_width(gg, .5); 
		jgraphics_rectangle(gg, 0., 0., rect.width, rect.height); 
		jgraphics_stroke(gg); 
		double ypos = 0;
		int i = 0;
		while(ypos < rect.height){
			t_jrgba c1 = x->bgcolor, c2 = (t_jrgba){0.8, 0.8, .9, 1.};
			jgraphics_rectangle(gg, 0, ypos, rect.width, ROW_HEIGHT);
			if(i % 2){
				jgraphics_set_source_jrgba(gg, &c1);
			}else{
				jgraphics_set_source_jrgba(gg, &c2);
			}
			jgraphics_fill(gg);
			ypos += ROW_HEIGHT;
			i++;
		}
		jbox_end_layer((t_object *)x, patcherview, l_background);
	}
        jbox_paint_layer((t_object *)x, patcherview, l_background, 0, 0);

	// there could be separate layers for midi, hid, etc...
	gg = jbox_start_layer((t_object *)x, patcherview, l_devices, rect.width, rect.height);
	if(gg){
		// HID
		double ypos = ROW_HEIGHT;
		jgraphics_set_source_jrgba(gg, &black);
		odotio_draw_row(gg, rect.width, ypos, gensym("HID"), vid_label, pid_label, "Device", col1_width, col2_width);
		//ypos += ROW_HEIGHT;
		t_device *d = x->devices;
		double start = ypos;
		int row = 1; // 0 based
		while(d){
			if(d->protocol == gensym("HID")){
				odotio_draw_checkbox(gg, ypos, d->open);
				ypos += ROW_HEIGHT;
				char vid[32], pid[32];
				if(x->hex){
					sprintf(vid, "0x%x", ((t_hid_device *)d)->vendor_id);
					sprintf(pid, "0x%x", ((t_hid_device *)d)->product_id);
				}else{

				}
				odotio_draw_row(gg, rect.width, ypos, NULL, vid, pid, d->name->s_name, col1_width, col2_width);
				d->row = row++;
			}
			d = d->next;
		}
		jgraphics_move_to(gg, CHECKBOX_COLUMN_WIDTH, start);
		jgraphics_line_to(gg, CHECKBOX_COLUMN_WIDTH, ypos);
		jgraphics_stroke(gg);

		// MIDI
		ypos += ROW_HEIGHT;
		odotio_draw_row(gg, rect.width, ypos, gensym("MIDI"), "Sources", NULL, NULL, col1_width, col2_width);
		ypos += ROW_HEIGHT;
		row++;
		odotio_draw_row(gg, rect.width, ypos, NULL, manu_label, model_label, "Device", col1_width, col2_width);
		//ypos += ROW_HEIGHT;
		d = x->devices;
		start = ypos;
		row++;
		while(d){
			if(d->protocol == gensym("MIDI") && ((t_midi_device *)d)->direction == MIDI_SOURCE){
				odotio_draw_checkbox(gg, ypos, d->open);
				ypos += ROW_HEIGHT;
				odotio_draw_row(gg, rect.width, ypos, NULL, ((t_midi_device *)d)->manufacturer, ((t_midi_device *)d)->model, d->name->s_name, col1_width, col2_width);
				d->row = row++;
			}
			d = d->next;
		}

		ypos += ROW_HEIGHT;
		odotio_draw_row(gg, rect.width, ypos, gensym("MIDI"), "Destinations", NULL, NULL, col1_width, col2_width);
		ypos += ROW_HEIGHT;
		row++;
		odotio_draw_row(gg, rect.width, ypos, NULL, manu_label, model_label, "Device", col1_width, col2_width);
		//ypos += ROW_HEIGHT;
		d = x->devices;
		start = ypos;
		row++;
		while(d){
			if(d->protocol == gensym("MIDI") && ((t_midi_device *)d)->direction == MIDI_DESTINATION){
				odotio_draw_checkbox(gg, ypos, d->open);
				ypos += ROW_HEIGHT;
				odotio_draw_row(gg, rect.width, ypos, NULL, ((t_midi_device *)d)->manufacturer, ((t_midi_device *)d)->model, d->name->s_name, col1_width, col2_width);
				d->row = row++;
			}
			d = d->next;
		}
		jgraphics_move_to(gg, CHECKBOX_COLUMN_WIDTH, start);
		jgraphics_line_to(gg, CHECKBOX_COLUMN_WIDTH, ypos);
		jgraphics_stroke(gg);		


		// Serial
		ypos += ROW_HEIGHT;
		odotio_draw_row(gg, rect.width, ypos, gensym("Serial"), vid_label, pid_label, "Device", col1_width, col2_width);
		d = x->devices;
		start = ypos;
		row++;
		while(d){
			if(d->protocol == gensym("Serial")){
				odotio_draw_checkbox(gg, ypos, d->open);
				ypos += ROW_HEIGHT;
				char vid[32], pid[32];
				if(x->hex){
					sprintf(vid, "0x%x", ((t_serial_device *)d)->vendor_id);
					sprintf(pid, "0x%x", ((t_serial_device *)d)->product_id);
				}else{
					sprintf(vid, "%d", ((t_serial_device *)d)->vendor_id);
					sprintf(pid, "%d", ((t_serial_device *)d)->product_id);
				}
				odotio_draw_row(gg, rect.width, ypos, NULL, vid, pid, d->name->s_name, col1_width, col2_width);
				d->row = row++;
			}
			d = d->next;
		}
		jgraphics_move_to(gg, CHECKBOX_COLUMN_WIDTH, start);
		jgraphics_line_to(gg, CHECKBOX_COLUMN_WIDTH, ypos);
		jgraphics_stroke(gg);
		jbox_end_layer((t_object *)x, patcherview, l_devices);
	}
	jbox_paint_layer((t_object *)x, patcherview, l_devices, 0, 0);
}

void odotio_draw_row(t_jgraphics *gg, double width, double ypos, t_symbol *protocol, const char *col1, const char *col2, char *dev_name, double col1_width, double col2_width){
	double xpos = 2;
	if(protocol){
		jgraphics_move_to(gg, 2, ypos - 3);
		jgraphics_show_text(gg, protocol->s_name);
	}
	xpos = CHECKBOX_COLUMN_WIDTH + PAD;
	if(col1){
		jgraphics_move_to(gg, xpos, ypos - 3);
		jgraphics_show_text(gg, col1);
	}
	xpos = CHECKBOX_COLUMN_WIDTH + col1_width + PAD;
	if(col2){
		jgraphics_move_to(gg, xpos, ypos - 3);
		jgraphics_show_text(gg, col2);
	}
	xpos += PAD + col2_width;
	if(dev_name){
		jgraphics_move_to(gg, xpos, ypos - 3);
		jgraphics_show_text(gg, dev_name);
	}
	jgraphics_move_to(gg, 0, ypos);
	jgraphics_line_to(gg, width, ypos);
	jgraphics_stroke(gg);
}

void odotio_draw_checkbox(t_jgraphics *gg, double ypos, int open){
	jgraphics_rectangle(gg, ((CHECKBOX_COLUMN_WIDTH - CHECKBOX_WIDTH) / 2), (ROW_HEIGHT - CHECKBOX_WIDTH) / 2 + ypos, CHECKBOX_WIDTH, CHECKBOX_WIDTH);
	jgraphics_stroke(gg);
	if(open){
		double x1 = ((CHECKBOX_COLUMN_WIDTH - CHECKBOX_WIDTH) / 2);
		double x2 = x1 + CHECKBOX_WIDTH;
		double y1 = (ROW_HEIGHT - CHECKBOX_WIDTH) / 2 + ypos;
		double y2 = y1 + CHECKBOX_WIDTH;
		jgraphics_move_to(gg, x1, y1);
		jgraphics_line_to(gg, x2, y2);
		jgraphics_move_to(gg, x2, y1);
		jgraphics_line_to(gg, x1, y2);
		jgraphics_stroke(gg);
	}
}

void odotio_open(t_odotio *x, t_symbol *sym){
	TP;
	oio_obj_registerValueCallback(x->oio, sym->s_name, odotio_value_callback, (void *)x);
	int didopen = 0;
	t_device *d = x->devices;
	while(d){
		int i1, i2;
		if(osc_match(sym->s_name, d->name->s_name, &i1, &i2) == 3){
			d->open = 1;
			didopen = 1;
		}
		d = d->next;
	}
	if(didopen){
		clock_fdelay(x->clock, 1.);
	}
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
	jbox_redraw(&(x->box));
}

void odotio_close(t_odotio *x, t_symbol *sym){
	oio_obj_unregisterValueCallback(x->oio, sym->s_name, odotio_value_callback);
	t_device *d = x->devices;
	int somethingopen = 0;
	while(d){
		int i1, i2;
		if(osc_match(sym->s_name, d->name->s_name, &i1, &i2) == 3){
			d->open = 0;
		}
		if(d->open){
			somethingopen = 1;
		}
		d = d->next;
	}
	if(!somethingopen){
		clock_unset(x->clock);
	}
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
	jbox_redraw(&(x->box));
}

void odotio_value_callback(t_oio *oio, long n, char *ptr, void *context){
	TP;
	t_odotio *x = (t_odotio *)context;
	if(x->synchronize == 0){
		t_atom a[2];
		atom_setlong(a, n);
		atom_setlong(a + 1, (long)ptr);
		outlet_anything(x->osc_outlet, gensym("FullPacket"), 2, a);
	}else{
		t_bundle *b = (t_bundle *)sysmem_newptr(sizeof(t_bundle));
		b->data = (char *)sysmem_newptr(n);
		b->len = n;
		b->timestamp = ntoh64(*((uint64_t *)(ptr + 8)));
		memcpy(b->data, ptr, n);
		critical_enter(x->lock);
		b->next = x->cache;
		x->cache = b;
		critical_exit(x->lock);
	}
}

void odotio_connect_callback(t_oio *oio, long n, char *ptr, void *context){
	TP;
	t_odotio *x = (t_odotio *)context;
	odotio_addDevice(x, ptr);
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
	jbox_redraw(&(x->box));
}

void odotio_disconnect_callback(t_oio *oio, long n, char *ptr, void *context){
	t_odotio *x = (t_odotio *)context;
	odotio_removeDevice(x, ptr);
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
	jbox_redraw(&(x->box));
}

void odotio_flush(t_odotio *x, t_symbol *msg, int argc, t_atom *argv){
	critical_enter(x->lock);
	if(!(x->cache)){
		critical_exit(x->lock);
		clock_fdelay(x->clock, 1.);
		return;
	}
        t_bundle *b;
	b = x->cache;
	x->cache = NULL;
	critical_exit(x->lock);
	t_bundle *currentbundle = b;
	b = b->next;
	while(b){
		if(currentbundle->timestamp == b->timestamp){
			currentbundle->data = sysmem_resizeptr(currentbundle->data, currentbundle->len + (b->len - 16));
			if(!(currentbundle->data)){
				object_error((t_object *)x, "out of memory!");
				return;
			}
			memcpy(currentbundle->data + currentbundle->len, b->data + 16, b->len - 16);
			currentbundle->len = currentbundle->len + (b->len - 16);
			t_bundle *next = b->next;
			sysmem_freeptr(b->data);
			sysmem_freeptr(b);
			b = next;
		}else{
			t_atom out[2];
			atom_setlong(out, currentbundle->len);
			atom_setlong(out + 1, (long)currentbundle->data);
			outlet_anything(x->osc_outlet, ps_fullpacket, 2, out);
			sysmem_freeptr(currentbundle->data);
			sysmem_freeptr(currentbundle);
			currentbundle = b;
			b = b->next;
		}
		//b = b->next;
	}
	t_atom out[2];
	atom_setlong(out, currentbundle->len);
	atom_setlong(out + 1, (long)currentbundle->data);
	outlet_anything(x->osc_outlet, ps_fullpacket, 2, out);
	sysmem_freeptr(currentbundle->data);
	sysmem_freeptr(currentbundle);
	clock_fdelay(x->clock, 1.);
}

void odotio_list(t_odotio *x, t_symbol *msg, short argc, t_atom *argv){
}

t_max_err odotio_notify(t_odotio *x, t_symbol *s, t_symbol *msg, void *sender, void *data){ 
	/*
 	if (msg == gensym("attr_modified")){ 
 		t_symbol *attrname = (t_symbol *)object_method((t_object *)data, gensym("getname")); 
		if(attrname == gensym("plistpath")){
			odotio_setup(x, NULL, 0, NULL);
		}
 		jbox_redraw(&(x->box)); 
	} 
	*/
	return 0; 
} 

t_device *odotio_getDeviceByRow(t_odotio *x, int row){
	t_device *d = x->devices;
	while(d){
		if(d->row == row){
			break;
		}
		d = d->next;
	}
	if(d){
		return d;
	}
	return NULL;
}

void odotio_toggleDevice(t_odotio *x, t_device *d){
	if(d){
		if(d->open){
			odotio_closeDevice(x, d);
		}else{
			odotio_openDevice(x, d);
		}
	}
}

void odotio_openDevice(t_odotio *x, t_device *d){
	if(!oio_obj_registerValueCallback(x->oio, d->name->s_name, odotio_value_callback, (void *)x)){
		d->open = 1;
	}
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
}

void odotio_closeDevice(t_odotio *x, t_device *d){
	oio_obj_unregisterValueCallback(x->oio, d->name->s_name, odotio_value_callback);
	d->open = 0;
	jbox_invalidate_layer((t_object *)x, x->pv, l_devices);
}

void odotio_addDevice(t_odotio *x, char *name){
	t_device *d = NULL;
	int type = oio_obj_getDeviceType(x->oio, name);
	switch(type){
	case OIO_DEV_DNF:
		return;
	case OIO_DEV_HID:{
		//printf("HID: %s\n", name);
		d = (t_device *)sysmem_newptr(sizeof(t_hid_device));
		uint32_t pid = -1, vid = -1;
		oio_hid_util_getDeviceProductIDFromDeviceName(x->oio, name, &pid);
		oio_hid_util_getDeviceVendorIDFromDeviceName(x->oio, name, &vid);

		((t_hid_device *)d)->vendor_id = vid;
		((t_hid_device *)d)->product_id = pid;
		d->protocol = gensym("HID");
	}
		break;
	case OIO_DEV_MIDI:{
		//printf("MIDI: %s\n", name);
		d = (t_device *)sysmem_newptr(sizeof(t_midi_device));
		oio_midi_util_getManufacturer(x->oio, name, ((t_midi_device *)d)->manufacturer);
		oio_midi_util_getModel(x->oio, name, ((t_midi_device *)d)->model);
		int t;
		oio_midi_util_getMIDIObjectType(x->oio, name, &((t_midi_device *)d)->direction);
		d->protocol = gensym("MIDI");
	}
		break;
	case OIO_DEV_SERIAL:{
		//printf("SERIAL: %s\n", name);
		d = (t_device *)sysmem_newptr(sizeof(t_serial_device));
		uint32_t pid = -1, vid = -1;
		oio_serial_util_getDeviceProductIDFromDeviceName(x->oio, name, &pid);
		oio_serial_util_getDeviceVendorIDFromDeviceName(x->oio, name, &vid);
		post("%s: %s %d %d", __PRETTY_FUNCTION__, name, pid, vid);
		((t_serial_device *)d)->vendor_id = vid;
		((t_serial_device *)d)->product_id = pid;
		d->protocol = gensym("Serial");
	}
		break;
	}
	d->name = gensym(name);
	d->open = 0;
	critical_enter(x->lock);
	if(x->devices){
		x->devices->prev = d;
	}
	d->next = x->devices;
	d->prev = NULL;
	x->devices = d;
	x->ndevices++;
	critical_exit(x->lock);
}

void odotio_removeDevice(t_odotio *x, char *name){
	int i;
	critical_enter(x->lock);
	t_device *d = x->devices;
	while(d){
		int i1, i2;
		if(osc_match(name, d->name->s_name, &i1, &i2) == 3){
			odotio_doRemoveDevice(x, d);
			x->ndevices--;
		}
		d = d->next;
	}
	critical_exit(x->lock);
}

void odotio_doRemoveDevice(t_odotio *x, t_device *d){
	if(d->prev){
		d->prev->next = d->next;
	}else{
		x->devices = d->next;
	}
	if(d->next){
		d->next->prev = d->prev;
	}
	sysmem_freeptr(d);
}

void odotio_fullPacket(t_odotio *x, long len, long ptr){
	//oio_hid_sendOSCBundleToDevice(x->oio, len, (char *)ptr);
}

void odotio_anything(t_odotio *x, t_symbol *msg, int argc, t_atom *argv){

}

// 0x10 = no modifiers 
// 0x11 = command 
// 0x12 = shift 
// 0x94 = control 
// 0x18 = option 
void odotio_mousedown(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers){ 
 	//post("0x%X", modifiers); 
 	t_rect r; 
	jbox_get_rect_for_view((t_object *)x, patcherview, &r);
	if(pt.x < CHECKBOX_COLUMN_WIDTH){
		int row = (int)pt.y / ROW_HEIGHT;
		t_device *d = odotio_getDeviceByRow(x, row);
		if(d){
			odotio_toggleDevice(x, d); // we have a header row
		}
	}

	jbox_redraw(&(x->box));
}

void odotio_mousedrag(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers){
	//t_rect r;
	//jbox_get_rect_for_view((t_object *)x, patcherview, &r);
}

void odotio_mouseup(t_odotio *x, t_object *patcherview, t_pt pt, long modifiers){
}

t_max_err odotio_synchronize_set(t_odotio *x, t_object *attr, int argc, t_atom *argv){
	if(argc){
		x->synchronize = atom_getlong(argv);
	}
	critical_enter(x->lock);
	t_device *d = x->devices;
	while(d){
		if(d->open){
			clock_fdelay(x->clock, 1);
			critical_exit(x->lock);
			return 0;
		}
		d = d->next;
	}
	clock_unset(x->clock);
	critical_exit(x->lock);
	return 0;
}

void odotio_assist(t_odotio *x, void *b, long io, long num, char *s){ 
 	if(io == ASSIST_OUTLET){ 
		switch(num){
		case 0:
			break;
		}
 	}else{ 
 		switch (num) {	 
 		case 0: 
 			break; 
 		} 
 	} 
} 

void odotio_free(t_odotio *x){ 
 	jbox_free((t_jbox *)x); 
} 

void odotio_setHIDUsagePlist(t_odotio *x, t_symbol *file){
	oio_hid_usageFile(x->oio, file->s_name);
}

void odotio_setHIDCookiePlist(t_odotio *x, t_symbol *file){
	oio_hid_cookieFile(x->oio, file->s_name);
}

int main(void){ 
 	t_class *c = class_new("o.io", (method)odotio_new, (method)odotio_free, sizeof(t_odotio), 0L, A_GIMME, 0); 

 	c->c_flags |= CLASS_FLAG_NEWDICTIONARY; 
 	jbox_initclass(c, JBOX_FIXWIDTH | JBOX_COLOR | JBOX_FONTATTR); 

 	class_addmethod(c, (method)odotio_paint, "paint", A_CANT, 0); 
 	class_addmethod(c, (method)version, "version", 0); 
 	class_addmethod(c, (method)odotio_assist, "assist", A_CANT, 0); 
 	class_addmethod(c, (method)odotio_notify, "notify", A_CANT, 0); 
 	class_addmethod(c, (method)odotio_mousedown, "mousedown", A_CANT, 0); 
 	class_addmethod(c, (method)odotio_mousedrag, "mousedrag", A_CANT, 0); 
 	class_addmethod(c, (method)odotio_mouseup, "mouseup", A_CANT, 0); 
	class_addmethod(c, (method)odotio_list, "list", A_GIMME, 0);
	class_addmethod(c, (method)odotio_open, "open", A_SYM, 0);
	class_addmethod(c, (method)odotio_close, "close", A_SYM, 0);
	class_addmethod(c, (method)odotio_fullPacket, "FullPacket", A_LONG, A_LONG, 0);
	class_addmethod(c, (method)odotio_anything, "anything", A_GIMME, 0);
	class_addmethod(c, (method)odotio_setHIDUsagePlist, "sethidusageplist", A_SYM, 0);
	class_addmethod(c, (method)odotio_setHIDCookiePlist, "sethidcookieplist", A_SYM, 0);

	CLASS_ATTR_LONG(c, "synchronize", 0, t_odotio, synchronize);
	CLASS_ATTR_DEFAULT(c, "synchronize", 0, "1");
	CLASS_ATTR_ACCESSORS(c, "synchronize", NULL, odotio_synchronize_set);

	CLASS_ATTR_LONG(c, "hex", 0, t_odotio, hex);
	CLASS_ATTR_DEFAULT(c, "hex", 0, "1");
	CLASS_ATTR_STYLE_LABEL(c, "hex", 0, "onoff", "Display vendor and product ID in hex");

 	CLASS_STICKY_ATTR(c, "category", 0, "Color");

 	CLASS_ATTR_RGBA(c, "bgcolor", 0, t_odotio, bgcolor); 
 	CLASS_ATTR_DEFAULTNAME_SAVE_PAINT(c, "bgcolor", 0, ".9 .9 .9 1."); 
 	CLASS_ATTR_STYLE_LABEL(c, "bgcolor", 0, "rgba", "Background Color"); 

 	CLASS_STICKY_ATTR_CLEAR(c, "category"); 

 	CLASS_ATTR_DEFAULT(c, "patching_rect", 0, "0. 0. 300. 100."); 

 	class_register(CLASS_BOX, c); 
 	odotio_class = c; 

	l_devices = gensym("l_devices");
	l_background = gensym("l_background");

	ps_fullpacket = gensym("FullPacket");
 	version(0); 
	
 	return 0; 
} 

void *odotio_new(t_symbol *s, long argc, t_atom *argv){ 
 	t_odotio *x = NULL; 
 	t_dictionary *d = NULL; 
 	long boxflags; 

	// box setup 
	if(!(d = object_dictionaryarg(argc, argv))){ 
		return NULL; 
	} 

	boxflags = 0 
		| JBOX_DRAWFIRSTIN  
		//| JBOX_NODRAWBOX 
		| JBOX_DRAWINLAST 
		//| JBOX_TRANSPARENT   
		//      | JBOX_NOGROW 
		//| JBOX_GROWY 
		| JBOX_GROWBOTH 
		//      | JBOX_HILITE 
		| JBOX_BACKGROUND 
		| JBOX_DRAWBACKGROUND 
		//      | JBOX_NOFLOATINSPECTOR 
		//      | JBOX_MOUSEDRAGDELTA 
		//      | JBOX_TEXTFIELD 
		; 

 	if(x = (t_odotio *)object_alloc(odotio_class)){ 
 		jbox_new((t_jbox *)x, boxflags, argc, argv); 
 		x->box.b_firstin = (void *)x; 
		x->info_outlet = outlet_new((t_object *)x, NULL);
 		x->osc_outlet = outlet_new((t_object *)x, "FullPacket");
		critical_new(&(x->lock));
		x->clock = clock_new((t_object *)x, (method)odotio_flush);
 		attr_dictionary_process(x, d); 
		x->devices = NULL;
		x->cache = NULL;
		x->ready = 0;

		clock_fdelay(x->clock, 1.);
 		jbox_ready((t_jbox *)x); 
		schedule_delay(x, (method)odotio_setup, 250, NULL, 0, NULL);
		TP;
 		return x; 
 	} 
 	return NULL; 
} 

void odotio_setup(t_odotio *x, t_symbol *msg, int argc, t_atom *argv){
	x->oio = oio_obj_alloc(odotio_connect_callback, x, odotio_disconnect_callback, x, odotio_connect_callback, x, odotio_disconnect_callback, x, odotio_connect_callback, x, odotio_disconnect_callback, x);
	oio_obj_run(x->oio);
	x->ready = 1;
	jbox_redraw(&(x->box));

	/*
	//char *hid_usageplist = "/Users/john/Development/cnmat/trunk/max/externals/odot/liboio/hid_usage_strings.plist";
	//char *hid_cookieplist = "/Users/john/Development/cnmat/trunk/max/externals/odot/liboio/hid_cookie_strings.plist";
	char hid_usageplist[128], hid_cookieplist[128];
	sprintf(hid_usageplist, "%s/hid_usage_strings.plist", x->plistpath->s_name);
	sprintf(hid_cookieplist, "%s/hid_cookie_strings.plist", x->plistpath->s_name);
	x->oio = oio_obj_alloc(odotio_connect_callback, x, odotio_disconnect_callback, x, hid_usageplist, hid_cookieplist, odotio_connect_callback, x, odotio_disconnect_callback, x);
	x->ready = 1;
	oio_obj_run(x->oio);
	*/
}

