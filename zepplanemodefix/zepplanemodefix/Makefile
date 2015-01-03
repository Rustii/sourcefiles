include theos/makefiles/common.mk

BUNDLE_NAME = ZepPlaneModeFix
ZepPlaneModeFix_FILES = ZepPlaneModeFix.mm
ZepPlaneModeFix_INSTALL_PATH = /Library/PreferenceBundles
ZepPlaneModeFix_FRAMEWORKS = UIKit
ZepPlaneModeFix_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/com.Rustii.zepplanemodefix~prefs.plist$(ECHO_END)
