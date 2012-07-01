XCODEBUILDDIR = $(CURDIR)/DerivedData/odot/Build/Products/Release
BUILDDIR = $(CURDIR)/build
C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes
OBJECT_LIST = o.atomize o.change o.collect o.cond o.dict o.difference o.explode o.expr o.flatten o.if \
o.intersection o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.select o.union \
o.unless o.var o.when
ODOT_MXO = $(foreach OBJ, $(OBJECT_LIST), $(XCODEBUILDDIR)/$(OBJ).mxo)
ODOT_MXE = $(foreach OBJ, $(OBJECT_LIST), $(BUILDDIR)/$(OBJ).mxe)
VPATH = $(OBJECT_LIST)

VERSION = $(shell perl -p -e 'if(/\#define\s+ODOT_VERSION\s+\"(.*)\"/){print $$1; last;}' odot_version.h)
OS = $(shell perl -e 'print $$^O')
RELEASEDIR = odot-$(strip $(OS))-$(strip $(VERSION))
ARCHIVE = $(RELEASEDIR).tgz

RELEASE_PATCHES_DIR = $(RELEASEDIR)/patches
RELEASE_OBJECTS_DIR = $(RELEASEDIR)/objects

PATCHES_FOR_RELEASE = $(addprefix patches/, help demos abstractions)
TEXTFILES_FOR_RELEASE = README_ODOT.txt


SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot/

ARCH = -arch i386 -arch ppc

all: 
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

win: CC = gcc
win: CFLAGS = -DWIN_VERSION -DWIN_EXT_VERSION -U__STRICT_ANSI__ -U__ANSI_SOURCE -std=c99
win: INCLUDES = -I$(MAX_INCLUDES) -Ilibo -Ilibomax
win: LIBS = -Llibomax -lomax -L$(MAX_INCLUDES) -lMaxAPI -Llibo -lo
win: LDFLAGS = -shared -static-libgcc
win: $(BUILDDIR) $(ODOT_MXE)

win-release: OBJECTS = $(ODOT_MXE)
win-release: EXT = MXE
win-release: $(ARCHIVE)

$(BUILDDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(BUILDDIR)/%.mxe: %.c $(BUILDDIR)/commonsyms.o
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/$*.o $<
	$(CC) $(LDFLAGS) -o $(BUILDDIR)/$*.mxe $(BUILDDIR)/$*.o $(BUILDDIR)/commonsyms.o $(LIBS) 

$(XCODEBUILDDIR)/%:
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build

$(BUILDDIR):
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

$(RELEASEDIR): $(BUILDDIR)
	@[ -d $(RELEASEDIR) ] || mkdir -p $(RELEASEDIR)

$(RELEASE_OBJECTS_DIR): $(RELEASEDIR)
	@[ -d $(RELEASE_OBJECTS_DIR) ] || mkdir -p $(RELEASE_OBJECTS_DIR)

$(RELEASE_PATCHES_DIR): $(RELEASEDIR)
	@[ -d $(RELEASE_PATCHES_DIR) ] || mkdir -p $(RELEASE_PATCHES_DIR)

$(ARCHIVE): $(OBJECTS) $(RELEASEDIR) $(RELEASE_PATCHES_DIR) $(RELEASE_OBJECTS_DIR)
	@cp -r $(OBJECTS) $(RELEASE_OBJECTS_DIR)
	@cp -r $(PATCHES_FOR_RELEASE) $(RELEASEDIR)
	@cp $(TEXTFILES_FOR_RELEASE) $(RELEASEDIR)

.PHONY: clean
clean: 
	rm -rf $(BUILDDIR)
	./package.pl clean
#	for d in $(OBJECT_LIST); do (cd $$d; $(MAKE) clean); done
#xcodebuild -project odot.xcodeproj clean

# package: 
# 	./package.pl

# archive:
# 	./package.pl archive

# DOCUMENTS:
# 	$(foreach t, $(TEXTFILES), cp $(t) $(BUILDDIR))

# .PHONY: install
# install:
# 	./package.pl install $(CNMAT_MAX_INSTALL_DIR)

# release:
# 	rm -f build/$(ARCHIVE)
# 	cd build && tar -zcf $(ARCHIVE) *
# 	@read -p "Username: " UN; \
# 	scp build/$(ARCHIVE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)

# unstable:
# 	rm -f build/$(UNSTABLE)
# 	cd build && tar -zcvf $(UNSTABLE) *
# 	@read -p "Username: " UN;\
# 	scp build/$(UNSTABLE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)

# win-release:
# 	rm -f build/$(WIN-RELEASE)
# 	cd build && tar -zcvf $(WIN-RELEASE) *
# 	@read 0p "Username: " UN;\
# 	scp build/$(WIN-RELEASE) $$UN@cnmat.berkeley.edu:$(SERVER_PATH)
