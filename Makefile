ARCHS = armv7 arm64
GO_EASY_ON_ME=1

include theos/makefiles/common.mk

TWEAK_NAME = NoScreenShotFlash
NoScreenShotFlash_FILES = Tweak.xm
NoScreenShotFlash_FRAMEWORKS = AudioToolbox

include $(THEOS_MAKE_PATH)/tweak.mk
internal-stage::
	find _ -name "*.plist" -print0 | xargs -0 plutil -convert binary1

after-install::

	install.exec "killall -9 SpringBoard"
SUBPROJECTS += noscreenshotflash
include $(THEOS_MAKE_PATH)/aggregate.mk
