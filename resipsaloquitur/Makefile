include theos/makefiles/common.mk

TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
TWEAK_NAME = ResIpsaLoquitur
ResIpsaLoquitur_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard; killall -9 backboardd"
