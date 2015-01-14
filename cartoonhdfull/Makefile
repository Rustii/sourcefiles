include theos/makefiles/common.mk

TWEAK_NAME = CartoonHDFull
TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
CartoonHDFull_FILES = Tweak.xm
CartoonHDFull_FRAMEWORKS = QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 Cartoon HD"
