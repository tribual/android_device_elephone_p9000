LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := icu55.c gui.cpp audio.cpp fence.cpp omx.cpp ui.cpp sensor.cpp xlog.cpp netutils.c
LOCAL_SHARED_LIBRARIES := libbinder liblog libgui libui libicuuc libicui18n libmedia libcutils
LOCAL_C_INCLUDES += system/core/libnetutils/include
LOCAL_MODULE := libshims
LOCAL_MODULE_TAGS := optional
include $(BUILD_SHARED_LIBRARY)
