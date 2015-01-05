include theos/makefiles/common.mk

TWEAK_NAME = MovieBoxFull
TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
MovieBoxFull_FILES = Tweak.xm
secondstonone_FRAMEWORKS = QuartzCore

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 MovieBox3"
