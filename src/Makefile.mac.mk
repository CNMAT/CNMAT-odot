all: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all" -project odot.xcodeproj -configuration Release

max-all: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all Max" -project odot.xcodeproj -configuration Release

max-dev: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all Max Unstable" -project odot.xcodeproj -configuration Release

max-deprecated: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all Max Deprecated" -project odot.xcodeproj -configuration Release

pd-all: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all PD" -project odot.xcodeproj -configuration Release

pd-dev: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all PD Unstable" -project odot.xcodeproj -configuration Release

pd-deprecated: $(CURRENT_VERSION_FILE)
	xcodebuild -target "Build all PD Deprecated" -project odot.xcodeproj -configuration Release

.PHONY: clean
clean: 
	rm -rf build ../externals ../dev/externals ../deprecated/externals
	rm -rf ../pd/*.pd_darwin ../pd/dev/*.pd_darwin ../pd/deprecated/*.pd_darwin
	rm -f $(CURRENT_VERSION_FILE)

$(CURRENT_VERSION_FILE):
	sh odot_current_version.sh
#	echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > $(CURRENT_VERSION_FILE)
#	echo "#define ODOT_COMPILE_DATE \""`date`"\""  >> $(CURRENT_VERSION_FILE)
