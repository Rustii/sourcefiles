include theos/makefiles/common.mk

BUNDLE_NAME = secondstonone
secondstonone_FILES = secondstonone.mm
secondstonone_INSTALL_PATH = /Library/PreferenceBundles
secondstonone_FRAMEWORKS = UIKit QuartzCore
secondstonone_PRIVATE_FRAMEWORKS = Preferences

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences$(ECHO_END)
	$(ECHO_NOTHING)cp entry.plist $(THEOS_STAGING_DIR)/Library/PreferenceLoader/Preferences/secondstonone~prefs.plist$(ECHO_END)
