#
# Makefile for rezound
#
# The original zip file, MUST be specified by each product
PORT_PRODUCT := Rezound
BUILD_NUMBER := 3.5.5

local-zip-file     := stockrom.zip

# The output zip file of MIUI rom, the default is porting_miui.zip if not specified
local-out-zip-file := MIUI_Rezound.zip

local-density := XHDPI

# All apps from original ZIP, but has smali files chanded
local-modified-apps :=

local-modified-jars := 

local-miui-modified-apps := 

# All apks from MIUI execept MIUISystemUI and framework-miui-res.apk
local-miui-apps     :=

local-miui-removed-apps   := QuickSearchBox

local-phone-apps := Gallery2 LatinIME DefaultContainerService

# To include the local targets before and after zip the final ZIP file,
# and the local-targets should:
# (1) be defined after including porting.mk if using any global variable(see porting.mk)
# (2) the name should be leaded with local- to prevent any conflict with global targets
local-pre-zip := local-zip-misc
local-after-zip:= 

local-rewrite-skia-lib:= false

# The local targets after the zip file is generated, could include 'zip2sd' to
# deliver the zip file to phone, or to customize other actions

include $(PORT_BUILD)/porting.mk

local-zip-misc:
	cp other/installd $(ZIP_DIR)/system/bin/installd
	cp other/build.prop $(ZIP_DIR)/system/build.prop
	rm -rf $(ZIP_DIR)/system/addon.d
	rm -rf $(ZIP_DIR)/system/etc/terminfo
