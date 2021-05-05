LOCAL_PATH:= $(call my-dir)

FW_BINARY=aucpu_fw
FW_EXPORT_DIR := $(PRODUCT_OUT)/vendor/lib/firmware

ifeq ($(filter S905C2 S905C2ENG S905X4, $(BOARD_AML_SOC_TYPE)),)
	LOCAL_FW := aucpu_fw.bin
else
	LOCAL_FW := $(BOARD_AML_SOC_TYPE)/aucpu_fw.bin.signed
endif

include $(CLEAR_VARS)

LOCAL_PROPRIETARY_MODULE := true
LOCAL_MODULE := aucpu_fw
LOCAL_SRC_FILES := $(LOCAL_FW)
LOCAL_MODULE_TAGS := optional
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_SUFFIX := .bin
LOCAL_MODULE_PATH := $(FW_EXPORT_DIR)
LOCAL_STRIP_MODULE := false
include $(BUILD_PREBUILT)
