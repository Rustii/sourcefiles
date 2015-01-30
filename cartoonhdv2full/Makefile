include theos/makefiles/common.mk

TWEAK_NAME = CartoonHDV2Full
TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
CartoonHDV2Full_FILES = Tweak.xm
CartoonHDV2Full_FRAMEWORKS = QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cartoon HD"
