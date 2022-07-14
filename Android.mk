LOCAL_PATH:= $(call my-dir)

FW_BINARY=aucpu_fw
FW_EXPORT_DIR := $(PRODUCT_OUT)/vendor/lib/firmware

ifeq ($(filter S905C2 S905C2L S905C2ENG S905X4 S805X2 S905Y4 S905C3 S905C3ENG S905C3NMA T963D4 T965D4 T982 T962D4 S805C3, $(BOARD_AML_SOC_TYPE)),)
	LOCAL_FW := DUMMY/aucpu_fw.bin.signed
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
LOCAL_LICENSE_KINDS := SPDX-license-identifier-Apache-2.0 SPDX-license-identifier-GPL-2.0 legacy_by_exception_only
LOCAL_LICENSE_CONDITIONS := by_exception_only notice restricted
include $(BUILD_PREBUILT)
