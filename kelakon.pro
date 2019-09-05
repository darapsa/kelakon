QT += \
	quickcontrols2 \
	svg

debug: DEFINES += DEBUG

HEADERS += \
	user.hxx \
	worker.hxx \
	controller.hxx \
	tasklist.hxx

SOURCES += \
	user.cxx \
	worker.cxx \
	controller.cxx \
	tasklist.cxx \
	main.cxx

RESOURCES += kelakon.qrc

INCLUDEPATH += $$PWD/librtclient

LIBS += \
	$$PWD/librtclient/librtclient.a \
	-lcurl

contains(ANDROID_TARGET_ARCH,arm64-v8a) {
	QMAKE_CFLAGS += -I/usr/local/aarch64-linux-android/sysroot/usr/include
	LIBS += -L/usr/local/aarch64-linux-android/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcrypto.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libssl.so \
		/usr/local/aarch64-linux-android/sysroot/usr/lib/libcurl.so
}

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
	QMAKE_CFLAGS += -I/usr/local/arm-linux-androideabi/sysroot/usr/include
	LIBS += -L/usr/local/arm-linux-androideabi/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcrypto.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libssl.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcurl.so
}

android {
	DISTFILES += android/AndroidManifest.xml
	ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
}
