include theos/makefiles/common.mk

TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
TWEAK_NAME = SlackerHB
SlackerHB_FILES = Tweak.xm
SlackerHB_FRAMEWORKS = IOKIT




include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard; killall -9 backboardd"
