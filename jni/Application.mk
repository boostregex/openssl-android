NDK_TOOLCHAIN_VERSION=4.4.3
APP_PROJECT_PATH := $(shell pwd)
APP_BUILD_SCRIPT := $(APP_PROJECT_PATH)/Android.mk
# all platforms:
#APP_ABI := all
APP_ABI := armeabi
APP_ABI += armeabi-v7a
APP_ABI += x86
# doesn't currently compile for mips, error about libz.so
#APP_ABI += mips
APP_PLATFORM := android-9

