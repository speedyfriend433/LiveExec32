ARCHS := arm64
TARGET := iphone:clang:latest:16.0
#TARGET_CODESIGN = fastPathSign

include $(THEOS)/makefiles/common.mk

TOOL_NAME = LiveExec32

LiveExec32_FILES = \
  main.cpp arm_dynarmic_cp15.cpp dynarmic.cpp filesystem.cpp variables.cpp bridge.mm ap_getparents.c \
  host_frameworks/UIKit/UIKit.mm
LiveExec32_CFLAGS = -Iinclude -DDYNARMIC_MASTER -Wno-error
LiveExec32_LDFLAGS = -Llib -ldynarmic
LiveExec32_CODESIGN_FLAGS = -Sentitlements.plist
LiveExec32_INSTALL_PATH = /usr/local/bin

include $(THEOS_MAKE_PATH)/tool.mk
