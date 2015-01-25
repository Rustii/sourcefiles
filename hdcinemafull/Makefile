include theos/makefiles/common.mk

TWEAK_NAME = HDCinemaFull
TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
HDCinemaFull_FILES = Tweak.xm
HDCinemaFull_FRAMEWORKS = QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 HD Cinema"
