QT += quickcontrols2

HEADERS += \
	rtclient.h \
	networkworker.hxx

SOURCES += \
	rtclient.c \
	networkworker.cxx \
	main.cxx

RESOURCES += kelakon.qrc

contains(ANDROID_TARGET_ARCH,armeabi-v7a) {
	QMAKE_CFLAGS += -I/usr/local/arm-linux-androideabi/sysroot/usr/include
	LIBS += -L/usr/local/arm-linux-androideabi/sysroot/usr/lib
	ANDROID_EXTRA_LIBS += \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcrypto.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libssl.so \
		/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcurl.so
}

LIBS += \
	-lcurl
