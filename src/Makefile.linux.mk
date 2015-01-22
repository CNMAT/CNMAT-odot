ODOTLIBS = odot

OBJECT_LIST = o.append \
o.atomize \
o.change \
o.collect \
o.cond \
o.context \
o.compose \
o.dict \
o.difference \
o.display \
o.downcast \
o.edge~ \
o.explode \
o.expr \
o.expr.codebox \
o.flatten \
o.if \
o.intersection \
o.listenumerate \
o.mappatch \
o.message \
o.messageiterate \
o.pack \
o.pak \
o.prepend \
o.print \
o.printbytes \
o.route \
o.schedule \
o.select \
o.slip.decode \
o.slip.encode \
o.table \
o.timetag \
o.union \
o.unless \
o.validate \
o.var \
o.when

BUILDDIR = pd-build
VPATH = $(OBJECT_LIST)
CFILES = $(foreach f, $(OBJECT_LIST), $(f)/$(f).c)

# this is where we install to
PREFIX   = pd-odot-build

CURRENT_VERSION_FILE = include/odot_current_version.h

# this is where we install to (in detail)
INSTALL_BIN=$(PREFIX)/extra
INSTALL_DOC=$(PREFIX)/extra/odothelp

CFILES = $(foreach f, $(COBJECT_LIST), $(f)/$(f).c)

#OBJ = $(SRC:.c=.o) 
OBJECTS = $(addsuffix $(EXT), $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))
# LATER think about separating ODOTabs and ODOThelp

# ###############################################
.PHONY: odotlibs $(ODOTLIBS)

clean:
	-rm -f ../../lib/$(TARGET).$(EXT) $(TARGET).$(EXT)
	-rm -f *.o

all: $(OBJECTS) $(CURRENT_VERSION_FILE)
	@echo :: $(OBJECTS)
	$(LD) $(PD_LDFLAGS) -o $(TARGET).$(EXT) *.o $(PD_LIB)
	$(STRIP) --strip-unneeded $(TARGET).$(EXT)
	-cp $(TARGET).$(EXT) ../../lib/

$(OBJECTS) : %.o : %.c
	touch $*.c
	$(CC) $(PD_CFLAGS) $(PD_INCLUDES) -c -o $*.o $*.c


$(CURRENT_VERSION_FILE):
	sh odot_current_version.sh

install: install-bin install-doc install-abs

install-bin:
	-install -d $(DESTDIR)$(INSTALL_BIN)
	-install -m 644 lib/*.* $(DESTDIR)$(INSTALL_BIN)

install-doc:
	-install -d $(DESTDIR)$(INSTALL_DOC)
	-for d in $(ODOTLIBS); do \
	 for e in pd wav; do \
	  install -m644 $$d/*.$$e $(DESTDIR)$(INSTALL_DOC); \
	 done; \
	done

install-abs:
	-install -d $(DESTDIR)$(INSTALL_BIN)
	-install -m 644 ODOTabs/*.pd $(DESTDIR)$(INSTALL_BIN)

clean:
	for d in $(ODOTLIBS); do \
	  $(MAKE) -C $$d/src clean; \
	done
