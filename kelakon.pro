QT += quick

HEADERS += controller.hxx

SOURCES += \
	controller.cxx \
	main.cxx

RESOURCES += \
	kelakon.qrc \
	larva.qrc \
	larva/material-design-icons.qrc

LIBS += \
	-lcurl \
	-lrtclient

!android {
	LIBS += -lqrtclient
}

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
	LIBS += \
		-L/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21 \
		-lqrtclient_arm64-v8a
	ANDROID_EXTRA_LIBS += \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21/libcrypto_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21/libssl_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21/libcurl.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/aarch64-linux-android/21/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_arm64-v8a.so
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
	LIBS += \
		-L/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/21 \
		-lqrtclient_armeabi-v7a
	ANDROID_EXTRA_LIBS += \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/21/libcrypto_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/21/libssl_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/21/libcurl.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/arm-linux-androideabi/21/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_armeabi-v7a.so
}

contains(ANDROID_TARGET_ARCH,x86) {
	LIBS += \
		-L/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/21 \
		-lqrtclient_x86
	ANDROID_EXTRA_LIBS += \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/21/libcrypto_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/21/libssl_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/21/libcurl.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/i686-linux-android/21/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_x86.so
}

contains(ANDROID_TARGET_ARCH,x86_64) {
	LIBS += \
		-L/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/x86_64-linux-android/21 \
		-lqrtclient_x86_64
	ANDROID_EXTRA_LIBS += \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/x86_64-linux-android/21/libcrypto_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/x86_64-linux-android/21/libssl_1_1.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/x86_64-linux-android/21/libcurl.so \
		/opt/android-ndk-r19c/toolchains/llvm/prebuilt/linux-x86_64/sysroot/usr/lib/x86_64-linux-android/21/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_x86_64.so
}

android {
	INCLUDEPATH += /opt/android-ndk-r19c/sources/cxx-stl/llvm-libc++/include
	LIBS += \
		-L/opt/Qt5.14.2/5.14.2/android/lib \
		-lc++
	QT += svg
	certs.path = /assets/certs
	certs.files = /etc/ssl/certs/ca-certificates.crt
	INSTALLS += certs
}

debug: DEFINES += DEBUG
