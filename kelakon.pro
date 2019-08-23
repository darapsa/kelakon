QT += quickcontrols2

HEADERS += \
	rtclient.h \
	networkworker.hxx

SOURCES += \
	rtclient.c \
	networkworker.cxx \
	main.cxx

RESOURCES += kelakon.qrc

LIBS += \
	-lcurl
