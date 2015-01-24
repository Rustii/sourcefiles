include theos/makefiles/common.mk

TWEAK_NAME = ufctvfull
TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
ufctvfull_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 UFCTV"
