OMAX_BASENAMES = omax_util omax_class omax_doc
OMAX_OBJECTS = $(foreach OBJ, $(OMAX_BASENAMES), $(OBJ).o) 
OMAX_CFILES = $(foreach F, $(OMAX_BASENAMES), $(F).c)
OMAX_HFILES = $(foreach F, $(OMAX_BASENAMES), $(F).h)

#CC = gcc
#ARCH = -arch i386

MAC_SYSROOT = MacOSX10.7.sdk 
MAC-CFLAGS = -arch i386 -O3 -funroll-loops -isysroot /Developer/SDKs/$(MAC_SYSROOT) -mmacosx-version-min=10.5
WIN-CFLAGS = -mno-cygwin -O3 -funroll-loops -DWIN_VERSION

MAC-INCLUDES = -I../../../../c74support/max-includes -I../libo -I/System/Library/Frameworks/Carbon.framework/Headers -I/System/Library/Frameworks/CoreServices.framework/Headers
WIN-INCLUDES = -I../../../../c74support/max-includes -I../libo

all: CFLAGS += $(MAC-CFLAGS)
all: CC = clang
all: I = $(MAC-INCLUDES)
all: $(LIBO_CFILES) $(LIBO_HFILES) libomax.a
all: LIBTOOL = libtool -static -o libomax.a $(OMAX_OBJECTS) /usr/lib/libfl.a

win: CFLAGS += $(WIN-CFLAGS)
win: CC = gcc-3
win: I = $(WIN-INCLUDES)
win: $(LIBO_CFILES) $(LIBO_HFILES) libomax.a
win: LIBTOOL = ar cru libomax.a $(OMAX_OBJECTS) /usr/lib/libfl.a

#ar cru libomax.a  omax_expr.o  omax_util.o omax_parser.o omax_scanner.o /usr/lib/libfl.a 

libomax.a: $(OMAX_OBJECTS) $(OMAX_CFILES) $(OMAX_HFILES)
	$(LIBTOOL)

%.o: %.c %.h 
	$(CC) $(CFLAGS) $(I) -o $(notdir $(basename $@)).o -c $(notdir $(basename $@)).c


.PHONY: clean
clean:
	rm -f *.o *.a

.PHONY: doc
doc:
	cd doc && doxygen Doxyfile
