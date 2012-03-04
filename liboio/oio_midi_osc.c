#include "oio_midi_osc.h"
#include "oio_osc_util.h"
#include "oio_obj.h"
#include "osc.h"

int oio_midi_osc_encodeRaw(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet);
int oio_midi_osc_encodeGeneric(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet);
void oio_midi_osc_insertInt(char *ptr, int32_t ii);


int oio_midi_osc_encodePacket(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet){
	char *ptr = oscbuf;
	ptr += oio_midi_osc_encodeRaw(oio, ptr, device, packet);
	ptr += oio_midi_osc_encodeGeneric(oio, ptr, device, packet);
	return ptr - oscbuf;
}

int oio_midi_osc_encodeRaw(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet){
	uint16_t n = packet->length;
	if(n == 0){
		return 0;
	}
	unsigned char *data = (unsigned char *)(packet->data);
	char *ptr = oscbuf, *sizeptr = oscbuf;
	ptr += 4;
	ptr += sprintf(ptr, "/raw/midi%s", ((t_oio_generic_device *)device)->name);
	ptr++;
	while((ptr - oscbuf) % 4){
		ptr++;
	}
	*ptr++ = ',';
	int i;
	for(i = 0; i < n; i++){
		*ptr++ = 'i';
	}
	while((ptr - oscbuf) % 4){
		ptr++;
	}
	for(i = 0; i < n; i++){
		// this should probably be encoded as a char
		int32_t c = (int32_t)data[i];
		*((uint32_t *)ptr) = hton32(c);
		ptr += 4;
	}
	*((uint32_t *)sizeptr) = hton32(ptr - oscbuf - 4);
	return ptr - oscbuf;
}

int oio_midi_osc_encodeGeneric(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet){
	uint16_t n = packet->length;
	if(n == 0){
		return 0;
	}
	unsigned char *data = (unsigned char *)(packet->data);
	char *ptr = oscbuf, *sizeptr = oscbuf;
	ptr += 4;
	//ptr += sprintf(ptr, "/midi%s", ((t_oio_generic_device *)device)->name);
	ptr += sprintf(ptr, "%s", ((t_oio_generic_device *)device)->name);
	if(data[0] < 144){
		// note off
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/note-off/%d", data[0] - 127, data[1]);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[2]);
		ptr += 8;
	}else if(data[0] < 160){
		// note on
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/note-on/%d", data[0] - 143, data[1]);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[2]);
		ptr += 8;
	}else if(data[0] < 176){
		// polyphonic aftertouch
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/polyphonic-aftertouch/%d", data[0] - 159, data[1]);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[2]);
		ptr += 8;
	}else if(data[0] < 192){
		// control change
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/control-change/%d", data[0] - 175, data[1]);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[2]);
		ptr += 8;
	}else if(data[0] < 208){
		// program change
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/program-change", data[0] - 191);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[1]);
		ptr += 8;
	}else if(data[0] < 224){
		// channel aftertouch
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/channel-aftertouch", data[0] - 207);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		oio_midi_osc_insertInt(ptr, data[1]);
		ptr += 8;
	}else if(data[0] < 240){
		// pitch wheel control
		if(n < 2){
			return 0;
		}
		ptr += sprintf(ptr, "/channel/%d/pitchwheel/lsb/%d/msb/%d", data[0] - 223, data[1], data[2]);
		ptr++;
		while((ptr - oscbuf) % 4){
			ptr++;
		}
		strncpy(ptr, ",\0\0\0", 4);
	}else{
		switch(data[0]){
		case 240:
			// sysex
			ptr += sprintf(ptr, "/sysex");
			ptr++;
			while((ptr - oscbuf) % 4){
				ptr++;
			}
			break;
		case 241:

			break;
		case 242:

			break;
		case 243:

			break;
		case 244:

			break;
		case 245:

			break;
		case 246:

			break;
		case 247:

			break;
		case 248:

			break;
		case 249:

			break;
		case 250:

			break;
		case 251:

			break;
		case 252:

			break;
		case 253:

			break;
		case 254:

			break;
		case 255:

			break;
		}
	}
	*((uint32_t *)sizeptr) = hton32(ptr - oscbuf - 4);
	return ptr - oscbuf;
}

void oio_midi_osc_insertInt(char *ptr, int32_t ii){
	char *p = ptr;
	strncpy(p, ",i\0\0", 4);
	p += 4;
	*((int32_t *)p) = hton32(ii);
}
