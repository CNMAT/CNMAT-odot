#ifndef __OIO_MIDI_OSC_H__
#define __OIO_MIDI_OSC_H__

#include "oio_midi.h"

int oio_midi_osc_encodePacket(t_oio *oio, char *oscbuf, t_oio_midi_dev *device, const MIDIPacket *packet);

#endif // __OIO_MIDI_OSC_H__
