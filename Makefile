export THEOS=/home/luc1ner/theos/


ARCHS = arm64
#Add arm64e if it needed
DEBUG = 0
FINALPACKAGE = 1
FOR_RELEASE = 1
THEOS_PACKAGE_SCHEME = rootless
include $(THEOS)/makefiles/common.mk

TWEAK_NAME = lqm

lqm_LDFLAGS += 
lqm_FRAMEWORKS =  UIKit Foundation Security QuartzCore CoreTelephony AVFoundation AudioToolbox CoreGraphics CoreText Accelerate GLKit SystemConfiguration GameController 


lqm_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
lqm_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
lqm_EXTRA_FRAMEWORKS += 
lqm_CCFLAGS = -std=c++11 -fno-rtti -fno-exceptions -DNDEBUG
lqm_CFLAGS = -fobjc-arc -Wno-deprecated-declarations -Wno-unused-variable -Wno-unused-value
lqm_FILES = IGGMain.mm $(wildcard SupportFile/*.m) 


include $(THEOS_MAKE_PATH)/tweak.mk




