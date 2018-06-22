# Oinc_:( :0

#LOCAL_PATH := $(call my-dir)
LOCAL_PATH := device/motorola/woods

#mtk_bionic
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_bionic.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libmtk_omx_shim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#mtk_camera
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_camera.cpp

LOCAL_SHARED_LIBRARIES := libgui libutils liblog libbinder libandroid libui

LOCAL_MODULE := libmtk_camera
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#mtk_ril
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_ril.cpp

LOCAL_SHARED_LIBRARIES := libbinder
LOCAL_MODULE := libmtk_ril_shim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)

#mtk_xlog
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    mtk_xlog.c

LOCAL_SHARED_LIBRARIES := liblog
LOCAL_MODULE := libmtk_log_shim
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
