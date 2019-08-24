QT += quickcontrols2

HEADERS += \
	rtclient.h \
	networkworker.hxx

SOURCES += \
	rtclient.c \
	networkworker.cxx \
	main.cxx

RESOURCES += kelakon.qrc

android {
	INCLUDEPATH += $$(ANDROID_STANDALONE_TOOLCHAIN)/usr/include
	LIBS += -L$$(ANDROID_STANDALONE_TOOLCHAIN)/usr/lib
	ANDROID_EXTRA_LIBS += \
		$$(ANDROID_STANDALONE_TOOLCHAIN)/usr/lib/libcrypto.so \
		$$(ANDROID_STANDALONE_TOOLCHAIN)/usr/lib/libssl.so \
		$$(ANDROID_STANDALONE_TOOLCHAIN)/usr/lib/libcurl.so
}

LIBS += \
	-lcurl
