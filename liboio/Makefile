OIO_BASENAMES = oio_err oio_hid_osc oio_hid_strings oio_hid_util oio_hid oio_midi_osc oio_midi_util oio_midi oio_obj oio_osc_util oio_serial_util oio_serial
OIO_OBJECTS = $(foreach OBJ, $(OIO_BASENAMES), $(OBJ).o)
OIO_CFILES = $(foreach F, $(OIO_BASENAMES), $(F).c)
OIO_HFILES = $(foreach F, $(OIO_BASENAMES), $(F).h)

CC = gcc
ARCH = -arch i386
SYSROOT = -isysroot /Developer/SDKs/MacOSX10.6.sdk

I = -I../../../c74support/max-includes -I../libo -I/System/Library/Frameworks/Carbon.framework/Headers -I/System/Library/Frameworks/CoreServices.framework/Headers

#all: lib test
all: liboio.a test/oio_test

liboio.a: $(OIO_OBJECTS)
	libtool -static -o liboio.a $(OIO_OBJECTS)

%.o: %.c %.h 
	$(CC) $(ARCH) $(SYSROOT) $(I) -o $(notdir $(basename $@)).o -c $(notdir $(basename $@)).c

#lib:
#xcodebuild -project oio.xcodeproj -configuration Release
test/oio_test: liboio.a test/oio_test.c
	cd test && $(CC) $(SYSROOT) $(ARCH) -framework CoreFoundation -framework IOKit -framework CoreMIDI -framework Carbon -I.. -I../../libo -L.. -L../../libo -loio -lo -o oio_test oio_test.c

.PHONY: clean
clean:
	rm -rf *.o liboio.a
	cd test && rm -rf oio_test *.i
