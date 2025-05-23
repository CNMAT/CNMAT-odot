EXTERNALS_BASENAMES = o.append \
o.atomize \
o.change \
o.collect \
o.cond \
o.compose \
o.dict \
o.difference \
o.display \
o.downcast \
o.explode \
o.expr.codebox \
o.flatten \
o.if \
o.intersection \
o.listenumerate \
o.messageiterate \
o.pack \
o.prepend \
o.print \
o.printbytes \
o.route \
o.schedule \
o.select \
o.timetag \
o.union \
o.var

DEPRECATED_BASENAMES = o.edge~ \
o.expr \
o.message \
o.pak \
o.unless \
o.when

DEV_BASENAMES = \
o.context \
o.gui.attach \
o.mappatch \
o.schedule~ \
o.slip.decode \
o.slip.encode \
o.snapshot~ \
o.table \
o.timetag.join~ \
o.timetag.split~ \
o.timetag~ \
o.validate \
o.lookup~ \
o.luajit

EXTERNALS_MXE64 = $(foreach f, $(EXTERNALS_BASENAMES), $(f).mxe64)
DEPRECATED_MXE64 = $(foreach f, $(DEPRECATED_BASENAMES), $(f).mxe64)
DEV_MXE64 = $(foreach f, $(DEV_BASENAMES), $(f).mxe64)

ALL_OBJECTS_BASENAMES = $(EXTERNALS_BASENAMES) $(DEPRECATED_BASENAMES) $(DEV_BASENAMES)
# ALL_OBJECTS_CFILES = $(foreach f, $(ALL_OBJECTS_BASENAMES), $(f)/$(f).c)
ALL_OBJECTS_MXE64 = $(EXTERNALS_MXE64) $(DEPRECATED_MXE64) $(DEV_MXE64)

VPATH = $(ALL_OBJECTS_BASENAMES)

C74SUPPORT = ../../max-sdk-base/c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes
MSP_INCLUDES = $(C74SUPPORT)/msp-includes

PLATFORM = Windows

win64: EXT = .mxe64
win64: CC = gcc
win64: LD = $(CC)
win64: LIBS = -L../../libomax -lomax -L$(MAX_INCLUDES) -L$(MSP_INCLUDES) -lx64/MaxAPI -lx64/MaxAudio -L../../libo -lo -lws2_32 $(C74SUPPORT)/max-includes/x64/MaxAPI.lib

INCLUDES = -I$(MAX_INCLUDES) -I$(MSP_INCLUDES) -I../../libo -I../../libomax -Iinclude
BASE_CFLAGS = -DWIN_VERSION -DWIN_EXT_VERSION -O3 -DNO_TRANSLATION_SUPPORT -DWIN32_LEAN_AND_MEAN

CFLAGS += $(BASE_CFLAGS) -std=c99 -U__STRICT_ANSI__ -U__ANSI_SOURCE
LDFLAGS = -shared -static -static-libgcc

win64: CXX = g++
win64: LIBS_CPP = $(LIBS) -lstdc++ # Add C++ standard library
CXXFLAGS += $(BASE_CFLAGS) -std=c++20 -fext-numeric-literals
LDFLAGS_CPP = $(LDFLAGS)

CURRENT_VERSION_FILE = include/odot_current_version.h

# clean-obj:
# 	rm -f *.o

win64: $(ALL_OBJECTS_MXE64)
	$(MAKE) install

commonsyms.o:
	$(CC) $(CFLAGS) $(INCLUDES) -c -o commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

pqops.o:
	$(CC) $(CFLAGS) $(INCLUDES) -Io.schedule -c -o pqops.o o.schedule/pqops.c

%.mxe64: %.c commonsyms.o pqops.o $(CURRENT_VERSION_FILE)
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $*.o $<
	$(LD) $(LDFLAGS) -o $*$(EXT) $*.o commonsyms.o pqops.o $(LIBS)

%.mxe64: %.cpp commonsyms.o pqops.o $(CURRENT_VERSION_FILE)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -c -o $*.o $<
	$(CXX) $(LDFLAGS_CPP) -o $*$(EXT) $*.o commonsyms.o pqops.o $(LIBS_CPP)

O_LUAJIT_SRC_DIR = o.luajit
O_LUAJIT_SRC_FILES = $(wildcard $(O_LUAJIT_SRC_DIR)/*.cpp) # Corrected wildcard
O_LUAJIT_OBJS = $(patsubst $(O_LUAJIT_SRC_DIR)/%.cpp,o.luajit_%.o,$(O_LUAJIT_SRC_FILES)) # Corrected patsubst and object name

$(O_LUAJIT_OBJS): o.luajit_%.o : $(O_LUAJIT_SRC_DIR)/%.cpp $(CURRENT_VERSION_FILE)
	$(CXX) $(CXXFLAGS) $(INCLUDES) -I../../luajit/src -I$(O_LUAJIT_SRC_DIR) -c -o $@ $<

o.luajit.mxe64: $(O_LUAJIT_OBJS) commonsyms.o pqops.o
	$(CXX) $(LDFLAGS_CPP) -o $@ $^ $(LIBS_CPP) -L../../luajit/src -lluajit

.PHONY: install
install:
	[ ! -d "../externals" ] && mkdir ../externals; mv $(EXTERNALS_MXE64) ../externals
	[ ! -d "../deprecated/externals" ] && mkdir ../deprecated/externals; mv $(DEPRECATED_MXE64) ../deprecated/externals
	[ ! -d "../dev/externals" ] && mkdir ../dev/externals; mv $(DEV_MXE64) ../dev/externals

.PHONY: clean
clean:
	rm -rf *.mxe64 *.o 
	rm -rf ../externals ../deprecated/externals ../dev/externals $(CURRENT_VERSION_FILE)

$(CURRENT_VERSION_FILE):
	echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > $(CURRENT_VERSION_FILE)
	echo "#define ODOT_COMPILE_DATE \""`date`"\""  >> $(CURRENT_VERSION_FILE)
