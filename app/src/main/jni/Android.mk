LOCAL_PATH := $(call my-dir)
include $(CLEAR_VARS)

LOCAL_MODULE := JniTest
LOCAL_LDFLAGS := -Wl,--build-id
LOCAL_LDLIBS := \
	-llog \
	-lz \
	-lm \

LOCAL_SRC_FILES := \
	D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni\NewCppClass.cpp \
	D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni\test_raindrop_com_test_ScrollViewActivity.cpp \
	D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni\obj\local\armeabi\app_process \
	D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni\obj\local\armeabi\libc.so \
	D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni\obj\local\armeabi\linker \

LOCAL_C_INCLUDES += D:\MyRepository\androidStudioProject\RainDrop\app\src\main\jni
LOCAL_C_INCLUDES += D:\MyRepository\androidStudioProject\RainDrop\app\src\debug\jni

include $(BUILD_SHARED_LIBRARY)
