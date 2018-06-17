# Oinc_:( :0

LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := \
    icu55.c \
    mtk_asc.cpp \
    mtk_audio.cpp \
    mtk_bionic.cpp \
    mtk_camera.cpp \
    mtk_fence.cpp \
    mtk_omx.cpp \
    mtk_ril.cpp \
    mtk_ui.cpp \
    mtk_xlog.c

LOCAL_SHARED_LIBRARIES := libbinder liblog libgui libutils liblog libbinder libandroid libui libicuuc libicui18n libmedia
LOCAL_MODULE := libmtk_ril_shim libmtk_omx_shim libmtk_log_shim libmtk_camera mtk_symbols
LOCAL_MODULE_TAGS := optional

include $(BUILD_SHARED_LIBRARY)
