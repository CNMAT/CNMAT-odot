XCODEBUILDDIR = $(CURDIR)/DerivedData/odot/Build/Products/Release
BUILDDIR = $(CURDIR)/build
C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes
OBJECT_LIST = o.atomize o.change o.collect o.cond o.dict o.difference o.explode o.expr o.flatten o.if \
o.intersection o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.select o.union \
o.unless o.var o.when
VPATH = $(OBJECT_LIST)
ODOT_MXO = $(foreach OBJ, $(OBJECT_LIST), $(XCODEBUILDDIR)/$(OBJ).mxo)
ODOT_MXE = $(foreach OBJ, $(OBJECT_LIST), $(BUILDDIR)/$(OBJ).mxe)

ARCHIVE = o.tar.gz
UNSTABLE = o.unstable.tar.gz
WIN-RELEASE = o.win.tar.gz

SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot/

ARCH = -arch i386 -arch ppc

win: CC = gcc
win: CFLAGS = -DWIN_VERSION -DWIN_EXT_VERSION -U__STRICT_ANSI__ -U__ANSI_SOURCE -std=c99
win: INCLUDES = -I$(MAX_INCLUDES) -Ilibo -Ilibomax
win: LIBS = -Llibomax -lomax -L$(MAX_INCLUDES) -lMaxAPI -Llibo -lo
win: LDFLAGS = -shared -static-libgcc
win: $(BUILDDIR) $(ODOT_MXE)#$(BUILDDIR)/o.collect.mxe

all:
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

$(BUILDDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(BUILDDIR)/%.mxe: %.c $(BUILDDIR)/commonsyms.o
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/$*.o $<
	$(CC) $(LDFLAGS) -o $(BUILDDIR)/$*.mxe $(BUILDDIR)/$*.o $(BUILDDIR)/commonsyms.o $(LIBS) 
#$(BUILDDIR)/o.collect.mxe: o.collect/o.collect.c $(BUILDDIR)/commonsyms.o
#	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/o.collect.o o.collect/o.collect.c
#	$(CC) $(LDFLAGS) -o $(BUILDDIR)/o.collect.mxe $(BUILDDIR)/o.collect.o $(BUILDDIR)/commonsyms.o $(LIBS) 


$(XCODEBUILDDIR)/%:
#	+cd $(notdir $(basename $@)) && $(MAKE) -f Makefile -k
#	+cd $(notdir $(basename $@)) && $(MAKE) -f Makefile -k install
#	+cd $(notdir $(basename $@))/build/Deployment && cp -r $(notdir $(basename $@)).mxo $(BUILDDIR)
#	+cd $(notdir $(basename $@)) && cp -r $(notdir $(basename $@)).maxhelp $(HELPDIR)
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

#$(BUILDDIR)/%.mxe:
#+cd $(notdir $(basename $@)) && $(MAKE) win -f Makefile -k
#+cd $(notdir $(basename $@))/build-gcc && cp -r $(notdir $(basename $@)).mxe $(BUILDDIR)
#+cd $(notdir $(basename $@)) && cp -r $(notdir $(basename $@)).maxhelp $(HELPDIR)

$(BUILDDIR): $(BUILDDIR)
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

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
	rm -rf $(BUILDDIR)
	./package.pl clean
#	for d in $(OBJECT_LIST); do (cd $$d; $(MAKE) clean); done
#xcodebuild -project odot.xcodeproj clean


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
