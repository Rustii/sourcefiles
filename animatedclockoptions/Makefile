include theos/makefiles/common.mk

TARGET := iphone:clang
ARCHS = armv7 armv7s arm64
TWEAK_NAME = animatedclockoptions
animatedclockoptions_FRAMEWORKS = QuartzCore UIKit
animatedclockoptions_FILES = Tweak.xm
export DEBUG=1

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard; killall -9 backboardd"
SUBPROJECTS += animatedclockoptions
include $(THEOS_MAKE_PATH)/aggregate.mk
