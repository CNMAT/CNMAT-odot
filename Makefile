OBJECT_LIST = o.atomize o.change o.collect o.cond o.dict o.difference o.explode o.expr o.flatten o.if \
o.intersection o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.select o.union \
o.unless o.var o.when
VPATH = $(OBJECT_LIST)

VERSION = $(shell perl -p -e 'if(/\#define\s+ODOT_VERSION\s+\"(.*)\"/){print $$1; last;}' odot_version.h)
ifeq ($(CNMAT_OSTYPE),)
	PLATFORM = MacOSX
else
	PLATFORM = $(CNMAT_OSTYPE)
endif

C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes

BUILDDIR = $(CURDIR)/build
STAGINGDIR = odot-$(PLATFORM)-$(strip $(VERSION))

MAC_OBJECTS = $(addsuffix .mxo, $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))
WIN_OBJECTS = $(addsuffix .mxe, $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))

STAGED_MAC_OBJECTS = $(addprefix $(STAGINGDIR)/objects/, $(notdir $(MAC_OBJECTS)))
STAGED_WIN_OBJECTS = $(addprefix $(STAGINGDIR)/objects/, $(notdir $(WIN_OBJECTS)))

WIN_CC = gcc
WIN_CFLAGS = -DWIN_VERSION -DWIN_EXT_VERSION -U__STRICT_ANSI__ -U__ANSI_SOURCE -std=c99
WIN_INCLUDES = -I$(MAX_INCLUDES) -Ilibo -Ilibomax
WIN_LIBS = -Llibomax -lomax -L$(MAX_INCLUDES) -lMaxAPI -Llibo -lo
WIN_LDFLAGS = -shared -static-libgcc
ifeq ($(PLATFORM), Windows)
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

PATCHDIRS = help demos abstractions deprecated overview
STAGED_PATCHES = $(addprefix $(STAGINGDIR)/, $(PATCHDIRS))
TEXTFILES = README_ODOT.txt
STAGED_TEXTFILES = $(addprefix $(STAGINGDIR)/, $(TEXTFILES))
STAGED_PRODUCTS = $(STAGED_PATCHES) $(STAGED_OBJECTS) $(STAGED_TEXTFILES)

ARCHIVE = odot-$(strip $(PLATFORM))-$(strip $(VERSION)).tgz
CURRENT_ARCHIVE = odot-$(strip $(PLATFORM)).tgz
VERSION_FILE = current-$(strip $(PLATFORM))-version

ifeq ($(strip $(CNMAT_MAX_INSTALL_DIR)),)
	LOCAL_INSTALL_PATH = ~/odot
else
	LOCAL_INSTALL_PATH = $(CNMAT_MAX_INSTALL_DIR)/odot
endif
INSTALLED_PRODUCTS = $(addprefix $(LOCAL_INSTALL_PATH)/, $(PATCHDIRS) $(TEXTFILES) objects)
DIRS = $(BUILDDIR) $(STAGINGDIR) $(LOCAL_INSTALL_PATH)

SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot/

##################################################
## platform agnostic targets
##################################################
.PHONY: stage_distribution
stage_distribution: $(OBJECTS) $(STAGED_PRODUCTS)

# executed to statisfy the $(STAGED_OBJECTS) dependancy
$(STAGINGDIR)/objects/%.$(EXT): $(OBJECTS) $(STAGINGDIR) $(STAGINGDIR)/objects
	@cp -r $(BUILDDIR)/$*.$(EXT) $(STAGINGDIR)/objects

# executed to statisfy the $(STAGED_PATCHES) and $(STAGED_TEXTFILES) dependancies
$(STAGINGDIR)/%: $(STAGINGDIR)
	@rsync -avq --exclude=*/.* $* $(STAGINGDIR)

debug:
	@echo $(OBJECTS)
# @echo platform = $(PLATFORM)
# @echo dirs = $(DIRS)
# @echo sp = $(STAGED_PRODUCTS)
# @echo ip = $(INSTALLED_PRODUCTS)

.PHONY: install
install: $(DIRS) $(STAGED_PRODUCTS) $(INSTALLED_PRODUCTS)
	@echo $(PLATFORM)

# executed to satisfy the $(INSTALLED_PRODUCTS) dependancy
$(LOCAL_INSTALL_PATH)/%: $(LOCAL_INSTALL_DIR)
	@rsync -avq --exclude=*/.* $(STAGINGDIR)/$* $(LOCAL_INSTALL_PATH)

.PHONY: release
release: $(ARCHIVE)
	scp $(ARCHIVE) $(VERSION_FILE) cnmat.berkeley.edu:/$(SERVER_PATH)
	scp $(ARCHIVE) cnmat.berkeley.edu:/$(SERVER_PATH)/$(CURRENT_ARCHIVE)

$(ARCHIVE): $(STAGED_PRODUCTS)
	tar zcf $(ARCHIVE) $(STAGINGDIR)


.PHONY: clean
clean: 
	rm -rf $(BUILDDIR)
	rm -rf $(STAGINGDIR)
	rm -rf $(ARCHIVE)
	rm -rf $(LOCAL_INSTALL_PATH)

##################################################
## Mac specific
##################################################
all: $(DIRS) $(OBJECTS)
#	xcodebuild -scheme "Build all" -configuration Release -project odot.xcodeproj build
	make stage_distribution PLATFORM=$(PLATFORM)

$(BUILDDIR)/%.mxo:
	xcodebuild -target $* -configuration Release -project odot.xcodeproj build

##################################################
## Windows specific
##################################################
$(BUILDDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(BUILDDIR)/%.mxe: %.c $(BUILDDIR) $(BUILDDIR)/commonsyms.o
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/$*.o $<
	$(CC) $(LDFLAGS) -o $(BUILDDIR)/$*.mxe $(BUILDDIR)/$*.o $(BUILDDIR)/commonsyms.o $(LIBS) 

##################################################
## create directories
##################################################
$(BUILDDIR):
	@[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

$(STAGINGDIR):
	@[ -d $(STAGINGDIR) ] || mkdir -p $(STAGINGDIR)

$(STAGINGDIR)/objects: $(STAGINGDIR)
	@[ -d $(STAGINGDIR)/objects ] || mkdir -p $(STAGINGDIR)/objects

$(LOCAL_INSTALL_PATH):
	@[ -d $(LOCAL_INSTALL_PATH) ] || mkdir -p $(LOCAL_INSTALL_PATH)

$(INSTALLDIR)/objects: $(INSTALLDIR) $(RELEASEDIR)
	cp -r $(RELEASEDIR)/* $(INSTALLDIR)
