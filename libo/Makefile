LIBO_BASENAMES = osc_match osc_timetag osc_bundle_s osc_bundle_u osc_bundle_iterator_s osc_bundle_iterator_u osc_error osc_mem osc_message_s osc_message_u osc_message_iterator_s osc_message_iterator_u osc_atom_s osc_atom_u osc_array osc_atom_array_s osc_atom_array_u osc_expr osc_vtable osc_dispatch osc_hashtab osc_util osc_rset osc_query osc_strfmt osc_expr_rec osc_typetag contrib/strptime

# to be removed
#LIBO_BASENAMES += osc_bundle osc_message

LIBO_CFILES = $(foreach F, $(LIBO_BASENAMES), $(F).c)
LIBO_HFILES = $(foreach F, $(LIBO_BASENAMES), $(F).h) osc.h
LIBO_OFILES = $(foreach F, $(LIBO_BASENAMES), $(F).o)

LIBO_SCANNER_BASENAMES = osc_scanner osc_expr_scanner
LIBO_SCANNER_LFILES = $(foreach OBJ, $(LIBO_SCANNER_BASENAMES), $(OBJ).l)
LIBO_SCANNER_CFILES = $(foreach OBJ, $(LIBO_SCANNER_BASENAMES), $(OBJ).c)
LIBO_SCANNER_HFILES = $(foreach OBJ, $(LIBO_SCANNER_BASENAMES), $(OBJ).h)
LIBO_SCANNER_OBJECTS = $(foreach OBJ, $(LIBO_SCANNER_BASENAMES), $(OBJ).o)

LIBO_PARSER_BASENAMES = osc_parser osc_expr_parser
LIBO_PARSER_YFILES = $(foreach OBJ, $(LIBO_PARSER_BASENAMES), $(OBJ).y)
LIBO_PARSER_CFILES = $(foreach OBJ, $(LIBO_PARSER_BASENAMES), $(OBJ).c)
LIBO_PARSER_HFILES = $(foreach OBJ, $(LIBO_PARSER_BASENAMES), $(OBJ).h)
LIBO_PARSER_OBJECTS = $(foreach OBJ, $(LIBO_PARSER_BASENAMES), $(OBJ).o)

LIBO_OBJECTS = $(LIBO_OFILES) $(LIBO_SCANNER_OBJECTS) $(LIBO_PARSER_OBJECTS)

RELEASE-CFLAGS += -Wall -Wno-trigraphs -fno-strict-aliasing -O3 -funroll-loops -std=c99
DEBUG-CFLAGS += -Wall -Wno-trigraphs -fno-strict-aliasing -O0 -g -funroll-loops -std=c99

MAC_SYSROOT = MacOSX10.7.sdk 
MAC-CFLAGS = -arch i386 -mmacosx-version-min=10.5 -isysroot /Developer/SDKs/$(MAC_SYSROOT)
WIN-CFLAGS = -mno-cygwin -DWIN_VERSION -std=c99 -D_WIN32

MAC-INCLUDES = -I/System/Library/Frameworks/Carbon.framework/Headers -I/System/Library/Frameworks/CoreServices.framework/Headers

all: CFLAGS += $(RELEASE-CFLAGS)
all: CFLAGS += $(MAC-CFLAGS)
all: CC = clang
all: I = $(MAC-INCLUDES)
all: $(LIBO_CFILES) $(LIBO_HFILES) $(LIBO_SCANNER_CFILES) $(LIBO_PARSER_CFILES) libo.a #libo.dylib
all: STATIC-LINK = libtool -static -o libo.a $(LIBO_OBJECTS) /usr/lib/libfl.a
all: DYNAMIC-LINK = clang -dynamiclib $(MAC-CFLAGS) -single_module -compatibility_version 1 -current_version 1 -o libo.dylib $(LIBO_OBJECTS)

debug: CFLAGS += $(DEBUG-CFLAGS)
debug: CFLAGS += $(MAC-CFLAGS)
debug: CC = clang
debug: I = $(MAC-INCLUDES)
debug: $(LIBO_CFILES) $(LIBO_HFILES) $(LIBO_SCANNER_CFILES) $(LIBO_PARSER_CFILES) libo.a
debug: STATIC-LINK = libtool -static -o libo.a $(LIBO_OBJECTS) /usr/lib/libfl.a

win: CFLAGS += $(WIN-CFLAGS)
win: CC = gcc-3
win: $(LIBO_PARSER_CFILES) $(LIBO_SCANNER_CFILES) libo.a #$(LIBO_OBJECTS) #$(LIBO_CFILES) $(LIBO_HFILES) $(LIBO_PARSER_CFILES) $(LIBO_SCANNER_CFILES) libo.a 
win: LIBTOOL = ar cru libo.a $(LIBO_OBJECTS) /usr/lib/libfl.a

linux: CC = gcc
linux: $(LIBO_CFILES) $(LIBO_HFILES) $(LIBO_SCANNER_CFILES) $(LIBO_PARSER_CFILES) libo.a
linux: LIBTOOL = libtool -static -o libo.a $(LIBO_OBJECTS) /usr/lib/libfl.a

libo.a: $(LIBO_OBJECTS)
	rm -f libo.a
	$(STATIC-LINK)

libo.dylib: $(LIBO_OBJECTS) 
	rm -f libo.dylib
	$(DYNAMIC-LINK)

%.o: %.c 
	$(CC) $(CFLAGS) $(I) -c -o $(basename $@).o $(basename $@).c

#%_scanner.o: %_scanner.c 
#$(CC) $(CFLAGS) $(I) -c -o $(basename $@).o $(basename $@).c

%_scanner.c: %_scanner.l %_parser.c
	flex -o $(basename $@).c --prefix=$(basename $@)_ --header-file=$(basename $@).h $(basename $@).l
#%_scanner.o: %_scanner.c %_scanner.h

%_parser.c: %_parser.y
	bison -p $(basename $@)_ -d -v --report=itemset -o $(basename $@).c $(basename $@).y
#%_parser.o: %_parser.c %_parser.h


.PHONY: doc
doc:
	cd doc && doxygen Doxyfile

.PHONY: test test-clean
test: 
	$(MAKE) -C test

test-clean:
	$(MAKE) -C test clean

.PHONY: clean
clean:
	rm -f *.o libo.a libo.dylib test/osc_test *~ $(LIBO_PARSER_CFILES) $(LIBO_PARSER_HFILES) $(LIBO_SCANNER_CFILES) $(LIBO_SCANNER_HFILES)
	cd doc && rm -rf html latex man
	cd test && $(MAKE) clean
	cd contrib && rm -rf *.o
