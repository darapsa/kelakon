QT += quickcontrols2

HEADERS += controller.hxx

SOURCES += \
	controller.cxx \
	main.cxx

RESOURCES += \
	kelakon.qrc \
	larva.qrc \
	larva/material-design-icons.qrc

INCLUDEPATH += \
	$$PWD/qrtclient \
	$$PWD/qrtclient/librtclient

LIBS += \
	$$PWD/qrtclient/libqrtclient.a \
	$$PWD/qrtclient/librtclient/librtclient.a \
	-lcurl

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
	QMAKE_CFLAGS += -I/usr/local/aarch64-linux-android/sysroot/usr/include
	LIBS += -L/usr/local/aarch64-linux-android/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcrypto_1_1.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libssl_1_1.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcurl.so
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
	QMAKE_CFLAGS += -I/usr/local/arm-linux-androideabi/sysroot/usr/include
	LIBS += -L/usr/local/arm-linux-androideabi/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcrypto_1_1.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libssl_1_1.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcurl.so
}

contains(ANDROID_TARGET_ARCH,x86) {
	QMAKE_CFLAGS += -I/usr/local/i686-linux-android/sysroot/usr/include
	LIBS += -L/usr/local/i686-linux-android/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/i686-linux-android/sysroot/usr/lib/libcrypto_1_1.so \
		/usr/local/i686-linux-android/sysroot/usr/lib/libssl_1_1.so \
		/usr/local/i686-linux-android/sysroot/usr/lib/libcurl.so
}

android {
	QT += svg
	DISTFILES += android/AndroidManifest.xml
	ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
	certs.path = /assets/certs
	certs.files = /etc/ssl/certs/ca-certificates.crt
	INSTALLS += certs
}

debug: DEFINES += DEBUG
