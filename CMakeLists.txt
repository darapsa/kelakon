cmake_minimum_required(VERSION 3.5)

project(kelakon)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

if (ANDROID)
	set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
	add_library(${PROJECT_NAME} SHARED
		controller.hxx
		controller.cxx
		main.cxx
		kelakon.qrc
		larva.qrc
		larva/material-design-icons.qrc
		)
	target_link_directories(${PROJECT_NAME} PRIVATE /opt/Qt5.14.1/5.14.1/android/lib)
	if (ANDROID_ABI STREQUAL "arm64-v8a")
		target_link_directories(${PROJECT_NAME} PRIVATE /usr/local/aarch64-linux-android/sysroot/usr/lib)
		target_link_libraries(${PROJECT_NAME} qrtclient_arm64-v8a)
		set(ANDROID_EXTRA_LIBS
			/usr/local/aarch64-linux-android/sysroot/usr/lib/libcrypto.so
			/usr/local/aarch64-linux-android/sysroot/usr/lib/libssl.so
			/usr/local/aarch64-linux-android/sysroot/usr/lib/libcurl.so
			/usr/local/aarch64-linux-android/sysroot/usr/lib/librtclient.so
			/opt/Qt5.14.1/5.14.1/android/lib/libqrtclient_arm64-v8a.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "armeabi-v7a")
		target_link_directories(${PROJECT_NAME} PRIVATE /usr/local/arm-linux-androideabi/sysroot/usr/lib)
		target_link_libraries(${PROJECT_NAME} qrtclient_armeabi-v7a)
		set(ANDROID_EXTRA_LIBS
			/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcrypto.so
			/usr/local/arm-linux-androideabi/sysroot/usr/lib/libssl.so
			/usr/local/arm-linux-androideabi/sysroot/usr/lib/libcurl.so
			/usr/local/arm-linux-androideabi/sysroot/usr/lib/librtclient.so
			/opt/Qt5.14.1/5.14.1/android/lib/libqrtclient_armeabi-v7a.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "x86")
		target_link_directories(${PROJECT_NAME} PRIVATE /usr/local/i686-linux-android/sysroot/usr/lib)
		target_link_libraries(${PROJECT_NAME} qrtclient_x86)
		set(ANDROID_EXTRA_LIBS
			/usr/local/i686-linux-android/sysroot/usr/lib/libcrypto.so
			/usr/local/i686-linux-android/sysroot/usr/lib/libssl.so
			/usr/local/i686-linux-android/sysroot/usr/lib/libcurl.so
			/usr/local/i686-linux-android/sysroot/usr/lib/librtclient.so
			/opt/Qt5.14.1/5.14.1/android/lib/libqrtclient_x86.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "x86_64")
		target_link_directories(${PROJECT_NAME} PRIVATE /usr/local/x86_64-linux-android/sysroot/usr/lib64)
		target_link_libraries(${PROJECT_NAME} qrtclient_x86_64)
		set(ANDROID_EXTRA_LIBS
			/usr/local/x86_64-linux-android/sysroot/usr/lib64/libcrypto.so
			/usr/local/x86_64-linux-android/sysroot/usr/lib64/libssl.so
			/usr/local/x86_64-linux-android/sysroot/usr/lib64/libcurl.so
			/usr/local/x86_64-linux-android/sysroot/usr/lib64/librtclient.so
			/opt/Qt5.14.1/5.14.1/android/lib/libqrtclient_x86_64.so
			CACHE INTERNAL "")
	endif()
else()
	add_executable(${PROJECT_NAME}
		controller.cxx
		main.cxx
		kelakon.qrc
		larva.qrc
		larva/material-design-icons.qrc
		)
	target_link_libraries(${PROJECT_NAME} qrtclient)
endif()

target_compile_definitions(${PROJECT_NAME}
	PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)

target_link_libraries(${PROJECT_NAME}
	curl
	Qt5::Core
	Qt5::Quick
	rtclient
	)
