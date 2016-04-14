export THEOS_DEVICE_IP=192.168.0.102
ARCHS = armv7 arm64
TARGET = :clang

include $(THEOS)/makefiles/common.mk
TARGET_LIB_EXT = -

ADDITIONAL_CFLAGS = -fobjc-arc

TWEAK_NAME = Draft
Draft_FILES = $(wildcard *.m)
Draft_FRAMEWORKS = UIKit AVFoundation QuartzCore
Draft_EXTRA_FRAMEWORKS = Gazelle
Draft_INSTALL_PATH = /Library/Application Support/Gazelle/Views/com.zachatrocity.draft/

include $(THEOS_MAKE_PATH)/tweak.mk

before-stage::
	find . -name ".DS_Store" -delete

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/Application Support/Gazelle/Views/com.zachatrocity.draft$(ECHO_END)
	$(ECHO_NOTHING)cp Info.plist $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)
	$(ECHO_NOTHING)cp Icon.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)
	$(ECHO_NOTHING)cp Icon@2x.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)
	$(ECHO_NOTHING)cp Icon@3x.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)

	$(ECHO_NOTHING)cp Icon.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)
	$(ECHO_NOTHING)cp Icon@2x.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)
	$(ECHO_NOTHING)cp Icon@3x.png $(THEOS_STAGING_DIR)/Library/Application\ Support/Gazelle/Views/com.zachatrocity.draft/$(ECHO_END)

	# If your view has some settings uncomment this, otherwise you can remove this
	#$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/Application Support/Gazelle/Views/com.zachatrocity.draft/Preferences$(ECHO_END)
	#$(ECHO_NOTHING)cp Preferences/Root.plist $(THEOS_STAGING_DIR)/Library/Application Support/Gazelle/Views/com.zachatrocity.draft/Preferences/$(ECHO_END)


