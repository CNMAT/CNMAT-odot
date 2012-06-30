XCODEBUILDDIR = $(CURDIR)/DerivedData/odot/Build/Products/Release
BUILDDIR = $(CURDIR)/build
OBJDIR = $(BUILDDIR)/objects
HELPDIR = $(BUILDDIR)/helpfiles
PATCHDIR = patches
C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes
OBJECT_LIST = o.collect o.change o.cond o.unless o.when o.expr o.if o.mappatch o.message \
o.pack o.pak o.prepend o.dict\
o.print o.printbytes o.route o.select o.atomize o.var o.union o.intersection o.difference
ODOT_CFILES = $(foreach OBJ, $(OBJECT_LIST), $(OBJDIR)/$(OBJ).c)
ODOT_HFILES = $(foreach OBJ, $(OBJECT_LIST), $(OBJDIR)/$(OBJ).h)
ODOT_MXO = $(foreach OBJ, $(OBJECT_LIST), $(XCODEBUILDDIR)/$(OBJ).mxo)
ODOT_MXE = $(foreach OBJ, $(OBJECT_LIST), $(OBJDIR)/$(OBJ).mxe)

.PHONY: debug
debug:
	@echo $(OBJDIR)
	@echo $(ODOT_MXE)

PATCHES = $(BUILDDIR)/abstractions $(BUILDDIR)/demos $(BUILDDIR)/overview
TEXTFILES = README_ODOT.txt

#ODOT_BUFFER_LEN = 4096

ARCHIVE = o.tar.gz
UNSTABLE = o.unstable.tar.gz
WIN-RELEASE = o.win.tar.gz

SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot/

ARCH = -arch i386 -arch ppc

win: CC := gcc
win: CFLAGS += -DWIN_VERSION -DWIN_EXT_VERSION -U__STRICT_ANSI__ -U__ANSI_SOURCE -std=c99
win: INCLUDES += -I$(MAX_INCLUDES) -Ilibo -Ilibomax
win: LIBS += -L$(MAX_INCLUDES) -Llibo -Llibomax -lMaxAPI -lo -lomax
win: LDFLAGS += -shared -static-libgcc
win: debug $(OBJDIR) $(HELPDIR) $(BUILDDIR) $(BUILDDIR)/commonsyms.o $(OBJDIR)/o.collect.mxe

#all: $(OBJDIR) $(HELPDIR) $(ODOT_MXO) $(PATCHES) DOCUMENTS
#all:
#xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

$(OBJDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(OBJDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(OBJDIR)/o.collect.mxe: o.collect/o.collect.c $(OBJDIR)/commonsyms.o
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(OBJDIR)/o.collect.o o.collect/o.collect.c
	$(CC) $(LDFLAGS) $(LIBS) -o $(OBJDIR)/o.collect.mxe $(OBJDIR)/o.collect.o $(OBJDIR)/commonsyms.o


$(XCODEBUILDDIR)/%:
#	+cd $(notdir $(basename $@)) && $(MAKE) -f Makefile -k
#	+cd $(notdir $(basename $@)) && $(MAKE) -f Makefile -k install
#	+cd $(notdir $(basename $@))/build/Deployment && cp -r $(notdir $(basename $@)).mxo $(OBJDIR)
#	+cd $(notdir $(basename $@)) && cp -r $(notdir $(basename $@)).maxhelp $(HELPDIR)
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

#$(OBJDIR)/%.mxe:
#+cd $(notdir $(basename $@)) && $(MAKE) win -f Makefile -k
#+cd $(notdir $(basename $@))/build-gcc && cp -r $(notdir $(basename $@)).mxe $(OBJDIR)
#+cd $(notdir $(basename $@)) && cp -r $(notdir $(basename $@)).maxhelp $(HELPDIR)

$(BUILDDIR):
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

$(OBJDIR): $(BUILDDIR)
	@[ -d $(OBJDIR) ] || mkdir -p $(OBJDIR)

$(HELPDIR): $(BUILDDIR)
	@[ -d $(HELPDIR) ] || mkdir -p $(HELPDIR)

#$(BUILDDIR)/%:
#+cd $(PATCHDIR) && cp -r $(notdir $@) $(BUILDDIR)

package: 
	./package.pl

archive:
	./package.pl archive

DOCUMENTS:
	$(foreach t, $(TEXTFILES), cp $(t) $(BUILDDIR))

.PHONY: install
install:
	./package.pl install $(CNMAT_MAX_INSTALL_DIR)

.PHONY: clean
clean: 
#	for d in $(OBJECT_LIST); do (cd $$d; $(MAKE) clean); done
#xcodebuild -project odot.xcodeproj clean
	./package.pl clean


release:
	rm -f build/$(ARCHIVE)
	cd build && tar -zcf $(ARCHIVE) *
	@read -p "Username: " UN; \
	scp build/$(ARCHIVE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)

unstable:
	rm -f build/$(UNSTABLE)
	cd build && tar -zcvf $(UNSTABLE) *
	@read -p "Username: " UN;\
	scp build/$(UNSTABLE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)

win-release:
	rm -f build/$(WIN-RELEASE)
	cd build && tar -zcvf $(WIN-RELEASE) *
	@read 0p "Username: " UN;\
	scp build/$(WIN-RELEASE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)
