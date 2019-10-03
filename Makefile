THEOS_DEVICE_IP = localhost
THEOS_DEVICE_PORT = 2222

TARGET = iphone:latest:7.0
ARCHS = armv7 armv7s arm64 arm64e

SDKVERSION = 12.1
SYSROOT = $(THEOS)/sdks/iPhoneOS12.1.sdk

include $(THEOS)/makefiles/common.mk

TWEAK_NAME = SnowBoardPresetExamplePlugin
SnowBoardPresetExamplePlugin_FILES = Tweak.xm

include $(THEOS_MAKE_PATH)/tweak.mk

after-install::
	install.exec "killall -9 SpringBoard"
