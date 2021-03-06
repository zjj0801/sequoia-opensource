ifneq ($(TARGET_PRODUCT),sfx1) # libexif already exists in SFX1 project
ifneq ($(TARGET_PRODUCT),thermoMAP) # libexif already exists in thermoMAP project

LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_MODULE := libexif
LOCAL_DESCRIPTION := libexif
LOCAL_CATEGORY_PATH := external

LOCAL_AUTOTOOLS_VERSION := 0.6.21
LOCAL_AUTOTOOLS_ARCHIVE := libexif-$(LOCAL_AUTOTOOLS_VERSION).tar.gz
LOCAL_AUTOTOOLS_SUBDIR := libexif-$(LOCAL_AUTOTOOLS_VERSION)

LOCAL_EXPORT_LDLIBS := -lexif

include $(BUILD_AUTOTOOLS)

endif
endif
