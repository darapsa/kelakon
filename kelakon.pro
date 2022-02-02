QT += quick
DEFINES += \
	SERVER_URL=\\\"$$SERVER_URL\\\" \
	CA_BUNDLE=\\\"$$CA_BUNDLE\\\"
debug: DEFINES += DEBUG
HEADERS += controller.hxx
SOURCES += \
	controller.cxx \
	main.cxx
RESOURCES += \
	kelakon.qrc \
	larva.qrc \
	larva/material-design-icons.qrc
LIBS += -lrtclient
android {
	PREFIX = $$ANDROID_NDK_PATH/toolchains/llvm/prebuilt/$$ANDROID_NDK_HOST/sysroot/usr
	TRIPLE = aarch64-linux-android
	contains(ANDROID_TARGET_ARCH,armeabi-v7a): TRIPLE = arm-linux-androideabi
	contains(ANDROID_TARGET_ARCH,x86): TRIPLE = i686-linux-android
	contains(ANDROID_TARGET_ARCH,x86_64): TRIPLE = x86_64-linux-android
	LIBS += \
		-L$$PREFIX/lib/$$TRIPLE/$$API \
		-L$$QT_ANDROID_LIBDIR \
		-lqrtclient_$$ANDROID_TARGET_ARCH
	ANDROID_EXTRA_LIBS += \
		$$PREFIX/lib/$$TRIPLE/$$API/libcrypto_1_1.so \
		$$PREFIX/lib/$$TRIPLE/$$API/libssl_1_1.so \
		$$PREFIX/lib/$$TRIPLE/$$API/libcurl.so \
		$$PREFIX/lib/$$TRIPLE/$$API/librtclient.so \
		$$QT_ANDROID_LIBDIR/libqrtclient_$${ANDROID_TARGET_ARCH}.so
	QT += svg
	assets.path = /assets
	assets.files = $$CA_BUNDLE
	INSTALLS += assets
}
!android: LIBS += -lqrtclient
macx {
	INCLUDEPATH += /usr/local/include
	LIBS += -L/usr/local/lib
}
wasm: QMAKE_CXXFLAGS += -std=c++11
!wasm: LIBS += -lcurl
