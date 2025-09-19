all: $(CURRENT_VERSION_FILE) luajit
	xcodebuild -target "Build all" -project odot.xcodeproj -configuration Release

max-all: $(CURRENT_VERSION_FILE) luajit
	xcodebuild -target "Build all Max" -project odot.xcodeproj -configuration Release

max-dev: $(CURRENT_VERSION_FILE) luajit
	xcodebuild -target "Build all Max Unstable" -project odot.xcodeproj -configuration Release

max-deprecated: $(CURRENT_VERSION_FILE) 
	xcodebuild -target "Build all Max Deprecated" -project odot.xcodeproj -configuration Release

pd-all: $(CURRENT_VERSION_FILE) luajit
	xcodebuild -target "Build all PD" -project odot.xcodeproj -configuration Release

pd-dev: $(CURRENT_VERSION_FILE) luajit
	xcodebuild -target "Build all PD Unstable" -project odot.xcodeproj -configuration Release

pd-deprecated: $(CURRENT_VERSION_FILE) 
	xcodebuild -target "Build all PD Deprecated" -project odot.xcodeproj -configuration Release


# --- Universal LuaJIT Build ---
# Builds a universal library for both Intel (x86_64) and Apple Silicon (arm64)
# Assumes the LuaJIT source is in a sibling directory named 'luajit'
# To override the path, run: make LUAJIT_DIR=/path/to/luajit

LUAJIT_DIR ?= ../../luajit
LUAJIT_SRC_DIR = $(LUAJIT_DIR)/src
LUAJIT_STAMP = $(LUAJIT_SRC_DIR)/.luajit_universal_built
LUAJIT_UNIVERSAL_NAME = libluajit_universal.a
LUAJIT_X86_64_NAME = libluajit_x86_64.a
LUAJIT_ARM64_NAME = libluajit.a # This is the default name from the arm build
MACOSX_DEPLOYMENT_TARGET ?= 10.14

.PHONY: luajit

# The 'luajit' target depends on a stamp file. The recipe will only run
# if the stamp file does not exist, preventing unnecessary rebuilds.
luajit: $(LUAJIT_STAMP)

$(LUAJIT_STAMP):
	@echo "--- Building Universal LuaJIT Library ---"
	@( \
		cd $(LUAJIT_DIR) && \
		echo "[1/5] Cleaning previous LuaJIT builds..." && \
		$(MAKE) clean MACOSX_DEPLOYMENT_TARGET=$(MACOSX_DEPLOYMENT_TARGET) && \
		\
		echo "[2/5] Building for Intel (x86_64)..." && \
		arch -x86_64 $(MAKE) MACOSX_DEPLOYMENT_TARGET=$(MACOSX_DEPLOYMENT_TARGET) && \
		mv src/$(LUAJIT_ARM64_NAME) src/$(LUAJIT_X86_64_NAME) && \
		\
		echo "[3/5] Cleaning for ARM build..." && \
		$(MAKE) clean MACOSX_DEPLOYMENT_TARGET=$(MACOSX_DEPLOYMENT_TARGET) && \
		\
		echo "[4/5] Building for Apple Silicon (arm64)..." && \
		$(MAKE) MACOSX_DEPLOYMENT_TARGET=$(MACOSX_DEPLOYMENT_TARGET) && \
		\
		echo "[5/5] Creating universal library with lipo..." && \
		lipo -create src/$(LUAJIT_X86_64_NAME) src/$(LUAJIT_ARM64_NAME) -output src/$(LUAJIT_UNIVERSAL_NAME) && \
		\
		echo "\nSuccess! Universal library created at $(LUAJIT_DIR)/src/$(LUAJIT_UNIVERSAL_NAME)" \
	)
	@touch $@

.PHONY: clean
clean: 
	rm -rf build ../externals ../dev/externals ../deprecated/externals
	rm -rf ../pd/*.pd_darwin ../pd/dev/*.pd_darwin ../pd/deprecated/*.pd_darwin
	rm -f $(CURRENT_VERSION_FILE)
	# Clean LuaJIT artifacts
	@echo "Cleaning LuaJIT build artifacts..."
	@if [ -d "$(LUAJIT_DIR)" ]; then \
		$(MAKE) -C $(LUAJIT_DIR) clean MACOSX_DEPLOYMENT_TARGET=$(MACOSX_DEPLOYMENT_TARGET); \
		rm -f $(LUAJIT_SRC_DIR)/$(LUAJIT_X86_64_NAME) \
			  $(LUAJIT_SRC_DIR)/$(LUAJIT_UNIVERSAL_NAME) \
			  $(LUAJIT_STAMP); \
	fi


$(CURRENT_VERSION_FILE):
	sh odot_current_version.sh
#	echo "#define ODOT_VERSION \""`git describe --tags --long`"\"" > $(CURRENT_VERSION_FILE)
#	echo "#define ODOT_COMPILE_DATE \""`date`"\""  >> $(CURRENT_VERSION_FILE)
