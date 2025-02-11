ARCHS := armv7s
TARGET := iphone:clang:latest:10.3
GO_EASY_ON_ME = 1

ADDITIONAL_CFLAGS = -I../guest_frameworks
ADDITIONAL_LDFLAGS = -fno-autolink -F$(THEOS_OBJ_DIR)
LOCAL_INSTALL_PATH = /System/Library/Frameworks
include $(THEOS)/makefiles/common.mk

FRAMEWORK_NAME = LC32 AudioToolbox CoreFoundation CoreGraphics CoreText Foundation OpenGLES QuartzCore UIKit

# Common variables
$(THEOS_CURRENT_INSTANCE)_FILES = $(shell find ../guest_frameworks/$(THEOS_CURRENT_INSTANCE) \( -iname \*.m -o -iname \*.s \))

LC32_LIBRARIES = objc.A

CoreFoundation_FRAMEWORKS = LC32
CoreFoundation_LDFLAGS = \
  -compatibility_version 478.23.0 \
  -current_version 478.23.0 \
  -Wl,-reexport_library,/var/mobile/Documents/TrollExperiments/CProjects/dynarmic/iOS10RAMDisk/usr/lib/libobjc.A.dylib

Foundation_FRAMEWORKS = LC32
Foundation_LDFLAGS = \
  -compatibility_version 678.24.0 \
  -current_version 678.24.0 \
  -Wl,-reexport_library,$(THEOS_OBJ_DIR)/Foundation.framework/Foundation

AudioToolbox_FRAMEWORKS = LC32
AudioToolbox_LDFLAGS = \
  -compatibility_version 1.0.0 \
  -current_version 1.0.0

CoreGraphics_FRAMEWORKS = LC32 Foundation
CoreGraphics_LDFLAGS = \
  -compatibility_version 359.4.0 \
  -current_version 359.4.0

CoreGraphics_FRAMEWORKS = LC32 Foundation
CoreGraphics_LDFLAGS = \
  -compatibility_version 359.4.0 \
  -current_version 359.4.0

QuartzCore_FRAMEWORKS = LC32 Foundation
QuartzCore_LDFLAGS = \
  -compatibility_version 1.6.0 \
  -current_version 1.6.0

UIKit_FRAMEWORKS = LC32 Foundation
UIKit_LDFLAGS = \
  -compatibility_version 1.0.0 \
  -current_version 1.0.0

include $(THEOS_MAKE_PATH)/framework.mk
