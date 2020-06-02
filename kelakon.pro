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
	-lrtclient \
	-lqrtclient

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
	LIBS += -L/usr/local/aarch64-linux-android/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcrypto.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libssl.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcurl.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient-arm64-v8a.so
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
	LIBS += -L/usr/local/arm-linux-androideabi/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcrypto.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libssl.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcurl.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_armeabi-v7a.so
}

contains(ANDROID_TARGET_ARCH,x86) {
	LIBS += -L/usr/local/i686-linux-android/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/i686-linux-android/sysroot/usr/lib/libcrypto.so \
		/usr/local/i686-linux-android/sysroot/usr/lib/libssl.so \
		/usr/local/i686-linux-android/sysroot/usr/lib/libcurl.so \
		/usr/local/i686-linux-android/sysroot/usr/lib/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_x86.so
}

contains(ANDROID_TARGET_ARCH,x86_64) {
	LIBS += -L/usr/local/x86_64-linux-android/sysroot/usr/lib64
	ANDROID_EXTRA_LIBS += \
		/usr/local/x86_64-linux-android/sysroot/usr/lib64/libcrypto.so \
		/usr/local/x86_64-linux-android/sysroot/usr/lib64/libssl.so \
		/usr/local/x86_64-linux-android/sysroot/usr/lib64/libcurl.so \
		/usr/local/x86_64-linux-android/sysroot/usr/lib64/librtclient.so \
		/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_x86_64.so
}

android {
	INCLUDEPATH += /opt/android-ndkr19c/sources/cxx-stl/llvm-libc++/include
	QT += svg
	DISTFILES += android/AndroidManifest.xml
	ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
	certs.path = /assets/certs
	certs.files = /etc/ssl/certs/ca-certificates.crt
	INSTALLS += certs
}

debug: DEFINES += DEBUG
