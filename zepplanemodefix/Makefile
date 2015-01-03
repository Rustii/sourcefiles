include theos/makefiles/common.mk

TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
TWEAK_NAME = ZepPlaneModeFix
ZepPlaneModeFix_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
SUBPROJECTS += zepplanemodefix
include $(THEOS_MAKE_PATH)/aggregate.mk
