LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE_TAGS := optional

LOCAL_C_INCLUDES +=

LOCAL_PRELINK_MODULE := false
LOCAL_MODULE_PATH := $(TARGET_OUT_SHARED_LIBRARIES)
LOCAL_LDLIBS := -llog
LOCAL_SHARED_LIBRARIES := \
    liblog \
    libcutils \
    libutils \
    libbinder
    
LOCAL_SRC_FILES := helloworldservice.cpp
LOCAL_MODULE := libhelloworldservice
include $(BUILD_SHARED_LIBRARY)
