OBJECT_LIST = o.atomize o.change o.collect o.cond o.dict o.difference o.explode o.expr o.flatten o.if \
o.intersection o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.select o.union \
o.unless o.var o.when
VPATH = $(OBJECT_LIST)

VERSION = $(shell perl -p -e 'if(/\#define\s+ODOT_VERSION\s+\"(.*)\"/){print $$1; last;}' odot_version.h)
OS = $(shell perl -e 'print $$^O')

C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes

BUILDDIR = $(CURDIR)/build
STAGINGDIR = odot-$(strip $(OS))-$(strip $(VERSION))

MAC_OBJECTS = $(addsuffix .mxo, $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))
WIN_OBJECTS = $(addsuffix .mxe, $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))

STAGED_MAC_OBJECTS = $(addprefix $(STAGINGDIR)/objects/, $(notdir $(MAC_OBJECTS)))
STAGED_WIN_OBJECTS = $(addprefix $(STAGINGDIR)/objects/, $(notdir $(WIN_OBJECTS)))

WIN_CC = gcc
WIN_CFLAGS = -DWIN_VERSION -DWIN_EXT_VERSION -U__STRICT_ANSI__ -U__ANSI_SOURCE -std=c99
WIN_INCLUDES = -I$(MAX_INCLUDES) -Ilibo -Ilibomax
WIN_LIBS = -Llibomax -lomax -L$(MAX_INCLUDES) -lMaxAPI -Llibo -lo
WIN_LDFLAGS = -shared -static-libgcc
ifeq (win, $(findstring win, $(MAKECMDGOALS)))
	CC = $(WIN_CC)
	CFLAGS = $(WIN_CFLAGS)
	INCLUDES = $(WIN_INCLUDES)
	LIBS = $(WIN_LIBS)
	LDFLAGS = $(WIN_LDFLAGS)
	OBJECTS = $(WIN_OBJECTS)
	STAGED_OBJECTS = $(STAGED_WIN_OBJECTS)
	EXT = mxe
else 
	OBJECTS = $(MAC_OBJECTS)
	STAGED_OBJECTS = $(STAGED_MAC_OBJECTS)
	EXT = mxo
endif

PATCHDIRS = $(addprefix patches/, help demos abstractions deprecated overview)
VPATH += patches
STAGED_PATCHES = $(addprefix $(STAGINGDIR)/, $(notdir $(PATCHDIRS)))
TEXTFILES = README_ODOT.txt
STAGED_TEXTFILES = $(addprefix $(STAGINGDIR)/, $(TEXTFILES))

ARCHIVE = odot-$(strip $(OS)).tgz
VERSION_FILE = current-$(strip $(OS))-version

ifeq ($(strip $(CNMAT_MAX_INSTALL_DIR)),)
	LOCAL_INSTALL_PATH = ~/odot
else
	LOCAL_INSTALL_PATH = $(CNMAT_MAX_INSTALL_DIR)/odot
endif

DIRS = $(BUILDDIR) $(STAGINGDIR) $(LOCAL_INSTALL_PATH)

SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot/

all: $(DIRS) 
	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build
	make copy_built_products

release: $(ARCHIVE)
install: $(ARCHIVE) $(INSTALLDIR) $(INSTALLDIR)/objects $(addprefix $(INSTALLDIR), $(notdir $(PATCHES_FOR_RELEASE)))

.PHONY: upload
upload: $(ARCHIVE)
	scp $(RELEASEDIR).tgz $(ARCHIVE) $(VERSION_FILE) cnmat.berkeley.edu:/$(SERVER_PATH)

win: $(OBJECTS)
win-release: $(ARCHIVE)
win-install: install
win-upload: upload

$(BUILDDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(BUILDDIR)/%.mxe: %.c $(BUILDDIR) $(BUILDDIR)/commonsyms.o
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/$*.o $<
	$(CC) $(LDFLAGS) -o $(BUILDDIR)/$*.mxe $(BUILDDIR)/$*.o $(BUILDDIR)/commonsyms.o $(LIBS) 

$(BUILDDIR)/%.mxo:
	xcodebuild -target $* -configuration Release -project odot.xcodeproj build

$(STAGINGDIR)/objects/%.$(EXT): $(STAGINGDIR) $(STAGINGDIR)/objects
	@cp -r $(BUILDDIR)/$*.$(EXT) $(STAGINGDIR)/objects

$(STAGINGDIR)/%: $(STAGINGDIR)
	@echo $(VPATH)
	cp -r $* $(STAGINGDIR) 

.PHONY: copy_built_products
copy_built_products: $(OBJECTS) $(STAGED_OBJECTS) $(STAGED_PATCHES)
# @echo copying patches
# @rsync -avq --exclude=*/.* $(PATCHES) $(STAGINGDIR)
# @echo copying extra files
# @cp $(TEXTFILES) $(STAGINGDIR)
# @echo done

##
## directories
##
$(BUILDDIR):
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

$(STAGINGDIR):
	@[ -d $(STAGINGDIR) ] || mkdir -p $(STAGINGDIR)

$(STAGINGDIR)/objects: $(STAGINGDIR)
	@[ -d $(STAGINGDIR)/objects ] || mkdir -p $(STAGINGDIR)/objects

$(LOCAL_INSTALL_PATH):
	@[ -d $(LOCAL_INSTALL_PATH) ] || mkdir -p $(LOCAL_INSTALL_PATH)

$(ARCHIVE): $(OBJECTS) $(RELEASEDIR) $(RELEASE_PATCHES_DIR) $(RELEASE_OBJECTS_DIR)
	@echo compressing
	@tar zcf $(RELEASEDIR).tgz $(RELEASEDIR)
	@cp $(RELEASEDIR).tgz $(ARCHIVE)
	@echo $(VERSION) > $(VERSION_FILE)
	@echo done

$(INSTALLDIR)/objects: $(INSTALLDIR) $(RELEASEDIR)
	cp -r $(RELEASEDIR)/* $(INSTALLDIR)

.PHONY: clean
clean: 
	rm -rf $(BUILDDIR)
	rm -rf $(STAGINGDIR)
	rm -rf $(ARCHIVE)
	rm -rf $(LOCAL_INSTALL_PATH)
#./package.pl clean
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
