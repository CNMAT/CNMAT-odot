COBJECT_LIST = o.append \
o.atomize \
o.change \
o.collect \
o.cond \
o.context \
o.dict \
o.difference \
o.downcast \
o.explode \
o.expr \
o.expr.codebox \
o.flatten \
o.if \
o.intersection \
o.messageiterate \
o.listenumerate \
o.mappatch \
o.message \
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

MOBJECT_LIST = 

OBJECT_LIST = $(COBJECT_LIST) $(MOBJECT_LIST)

PATCHDIRS = help demos abstractions deprecated overview experimental
#TEXTFILES = README_ODOT.txt

VPATH = $(OBJECT_LIST)

CFILES = $(foreach f, $(COBJECT_LIST), $(f)/$(f).c)
MFILES = $(foreach f, $(MOBJECT_LIST), $(f)/$(f).m)

CODE_FILES = $(CFILES) $(MFILES)

C74SUPPORT = ../../max-sdk/source/c74support
MAX_INCLUDES = $(C74SUPPORT)/max-includes

PLATFORM = MacOSX
EXT = .mxo

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
## Mac specific
##################################################
all: $(CODE_FILES) $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all" -project odot.xcodeproj -configuration Release

##################################################
## platform agnostic targets
##################################################

# executed to statisfy the $(STAGED_OBJECTS) dependancy
$(STAGINGDIR)/objects/%$(EXT): $(OBJECTS) $(STAGINGDIR) $(STAGINGDIR)/objects
	cp -r $(BUILDDIR)/$*$(EXT) $(STAGINGDIR)/objects

# executed to statisfy the $(STAGED_PATCHES) and $(STAGED_TEXTFILES) dependancies
$(STAGINGDIR)/%: $(STAGINGDIR)
	rsync -avq --exclude=*/.* $* $(STAGINGDIR)

#.PHONY: install
#install: $(DIRS) $(OBJECTS) $(STAGED_PRODUCTS) $(INSTALLED_PRODUCTS)

# executed to satisfy the $(INSTALLED_PRODUCTS) dependancy
$(LOCAL_INSTALL_PATH)/%: $(LOCAL_INSTALL_DIR)
	cp -r $(STAGINGDIR)/$* $(LOCAL_INSTALL_PATH)

.PHONY: release
release: $(DIRS) $(OBJECTS) $(ARCHIVE)
	scp $(ARCHIVE) $(SERVER):$(SERVER_PATH)/$(ARCHIVE)

$(ARCHIVE): $(STAGED_PRODUCTS)
	tar zvcf $(ARCHIVE) $(STAGINGDIR)

.PHONY: archive
archive: $(ARCHIVE)

.PHONY: clean
clean: 
	rm -rf build ../externals ../dev/externals ../deprecated/externals
	rm -rf ../pd/*.pd_darwin ../pd/dev/*.pd_darwin ../pd/deprecated/*.pd_darwin
	rm -f $(CURRENT_VERSION_FILE)
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
	sh odot_current_version.sh
#	echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > $(CURRENT_VERSION_FILE)
#	echo "#define ODOT_COMPILE_DATE \""`date`"\""  >> $(CURRENT_VERSION_FILE)
