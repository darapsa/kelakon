QT += quickcontrols2

SOURCES += \
    main.cxx

RESOURCES += kelakon.qrc

android {
	ANDROID_PACKAGE_SOURCE_DIR = $$PWD/android
}
