OBJECT_LIST = o.append o.atomize o.change o.collect o.cond o.dict o.difference o.explode o.expr o.flatten o.if \
o.intersection o.mappatch o.message o.pack o.pak o.prepend o.print o.printbytes o.route o.select o.table \
o.union o.unless o.var o.when

PATCHDIRS = help demos abstractions deprecated overview
TEXTFILES = README_ODOT.txt

VPATH = $(OBJECT_LIST)

CFILES = $(foreach f, $(OBJECT_LIST), $(f)/$(f).c)

PLATFORM = MacOSX
win: PLATFORM = Windows

EXT = .mxo
win: EXT = .mxe

C74SUPPORT = ../../../c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes

BUILDDIR = $(CURDIR)/build/Release
STAGINGDIR = odot-$(PLATFORM)

OBJECTS = $(addsuffix $(EXT), $(addprefix $(BUILDDIR)/, $(OBJECT_LIST)))
STAGED_OBJECTS = $(addprefix $(STAGINGDIR)/objects/, $(notdir $(OBJECTS)))
STAGED_PATCHES = $(addprefix $(STAGINGDIR)/, $(PATCHDIRS))
STAGED_TEXTFILES = $(addprefix $(STAGINGDIR)/, $(TEXTFILES))
STAGED_PRODUCTS = $(STAGED_PATCHES) $(STAGED_OBJECTS) $(STAGED_TEXTFILES)

CURRENT_VERSION_FILE = include/odot_current_version.h

ARCHIVE = odot-$(strip $(PLATFORM)).tgz

ifeq ($(strip $(CNMAT_MAX_INSTALL_DIR)),)
	LOCAL_INSTALL_PATH = ~/odot
else
	LOCAL_INSTALL_PATH = $(CNMAT_MAX_INSTALL_DIR)/odot
endif

INSTALLED_PRODUCTS = $(addprefix $(LOCAL_INSTALL_PATH)/, $(PATCHDIRS) $(TEXTFILES) objects)
DIRS = $(BUILDDIR) $(STAGINGDIR) $(LOCAL_INSTALL_PATH)

SERVER = cnmat.berkeley.edu
SERVER_PATH = /home/www-data/berkeley.edu-cnmat.www/maxdl/files/odot

##################################################
## platform agnostic targets
##################################################

# executed to statisfy the $(STAGED_OBJECTS) dependancy
$(STAGINGDIR)/objects/%$(EXT): $(OBJECTS) $(STAGINGDIR) $(STAGINGDIR)/objects
	cp -r $(BUILDDIR)/$*$(EXT) $(STAGINGDIR)/objects

# executed to statisfy the $(STAGED_PATCHES) and $(STAGED_TEXTFILES) dependancies
$(STAGINGDIR)/%: $(STAGINGDIR)
	rsync -avq --exclude=*/.* $* $(STAGINGDIR)

.PHONY: install
install: $(DIRS) $(OBJECTS) $(STAGED_PRODUCTS) $(INSTALLED_PRODUCTS)

# executed to satisfy the $(INSTALLED_PRODUCTS) dependancy
$(LOCAL_INSTALL_PATH)/%: $(LOCAL_INSTALL_DIR)
	cp -r $(STAGINGDIR)/$* $(LOCAL_INSTALL_PATH)

.PHONY: release
release: $(DIRS) $(OBJECTS) $(ARCHIVE)
	scp $(ARCHIVE) $(SERVER):$(SERVER_PATH)/$(ARCHIVE)

$(ARCHIVE): $(STAGED_PRODUCTS)
	tar zvcf $(ARCHIVE) $(STAGINGDIR)

.PHONY: clean
clean: 
	rm -rf build
	rm -rf $(STAGINGDIR)
	rm -rf $(ARCHIVE)
	rm -rf $(LOCAL_INSTALL_PATH)

##################################################
## Mac specific
##################################################
$(BUILDDIR)/%.mxo: %.c $(CURRENT_VERSION_FILE)
	xcodebuild -target $* -configuration Release -project odot.xcodeproj build

##################################################
## Windows specific
##################################################
$(BUILDDIR)/commonsyms.o: 
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/commonsyms.o $(MAX_INCLUDES)/common/commonsyms.c

$(BUILDDIR)/%.mxe: %.c $(BUILDDIR) $(BUILDDIR)/commonsyms.o odot_current_version.h
	$(CC) $(CFLAGS) $(INCLUDES) -c -o $(BUILDDIR)/$*.o $<
	$(CC) $(LDFLAGS) -o $(BUILDDIR)/$*.mxe $(BUILDDIR)/$*.o $(BUILDDIR)/commonsyms.o $(LIBS) 

##################################################
## create directories
##################################################
$(BUILDDIR):
	[ -d $(BUILDDIR) ] || mkdir -p $(BUILDDIR)

$(STAGINGDIR):
	[ -d $(STAGINGDIR) ] || mkdir -p $(STAGINGDIR)

$(STAGINGDIR)/objects: $(STAGINGDIR)
	[ -d $(STAGINGDIR)/objects ] || mkdir -p $(STAGINGDIR)/objects

$(LOCAL_INSTALL_PATH):
	[ -d $(LOCAL_INSTALL_PATH) ] || mkdir -p $(LOCAL_INSTALL_PATH)

$(INSTALLDIR)/objects: $(INSTALLDIR) $(RELEASEDIR)
	cp -r $(RELEASEDIR)/* $(INSTALLDIR)

$(CURRENT_VERSION_FILE):
	echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > $(CURRENT_VERSION_FILE)
	echo "#define ODOT_COMPILE_DATE \""`date`"\""  >> $(CURRENT_VERSION_FILE)
