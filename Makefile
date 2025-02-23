ARCHS := arm64
TARGET := iphone:clang:latest:16.0
#TARGET_CODESIGN = fastPathSign
PACKAGE_FORMAT := ipa

include $(THEOS)/makefiles/common.mk

APPLICATION_NAME = LiveExec32
#TOOL_NAME = LiveExec32

LiveExec32_FILES = \
  main.cpp arm_dynarmic_cp15.cpp dynarmic.cpp filesystem.cpp variables.cpp ap_getparents.c \
  bridge.mm bridge.s log.m \
  HostFrameworks/Foundation/Foundation.mm \
  HostFrameworks/CoreGraphics/CoreGraphics.mm \
  HostFrameworks/UIKit/UIKit.mm \
  HostFrameworks/LC32ProxyManager.mm

LiveExec32_CFLAGS = -Iinclude -DDYNARMIC_MASTER -Wno-error
LiveExec32_LDFLAGS = -Llib -ldynarmic
LiveExec32_CODESIGN_FLAGS = -Sentitlements.plist
#LiveExec32_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/application.mk
#include $(THEOS_MAKE_PATH)/tool.mk
