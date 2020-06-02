cmake_minimum_required(VERSION 3.5)

project(kelakon)

set(CMAKE_AUTOMOC ON)
set(CMAKE_AUTORCC ON)

find_package(Qt5 COMPONENTS Core Quick REQUIRED)

if (ANDROID)
	set(ANDROID_BUILD_ABI_${ANDROID_ABI} 1)
	add_library(${PROJECT_NAME} SHARED
		controller.hxx
		controller.cxx
		main.cxx
		kelakon.qrc
		larva.qrc
		larva/material-design-icons.qrc
		)
	target_link_directories(${PROJECT_NAME} PRIVATE
		${CMAKE_SYSROOT}/usr/lib/${ANDROID_TOOLCHAIN_NAME}/${ANDROID_NATIVE_API_LEVEL}
		/opt/Qt5.14.2/5.14.2/android/lib)
	target_link_libraries(${PROJECT_NAME} qrtclient_${ANDROID_ABI})
	set(ANDROID_PACKAGE_SOURCE_DIR "${CMAKE_CURRENT_SOURCE_DIR}/android")
	if (ANDROID_ABI STREQUAL "arm64-v8a")
		set(ANDROID_EXTRA_LIBS
			${CMAKE_SYSROOT}/usr/lib/aarch64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcrypto_1_1.so
			${CMAKE_SYSROOT}/usr/lib/aarch64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libssl_1_1.so
			${CMAKE_SYSROOT}/usr/lib/aarch64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcurl.so
			${CMAKE_SYSROOT}/usr/lib/aarch64-linux-android/${ANDROID_NATIVE_API_LEVEL}/librtclient.so
			/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_${ANDROID_ABI}.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "armeabi-v7a")
		set(ANDROID_EXTRA_LIBS
			${CMAKE_SYSROOT}/usr/lib/arm-linux-androideabi/${ANDROID_NATIVE_API_LEVEL}/libcrypto_1_1.so
			${CMAKE_SYSROOT}/usr/lib/arm-linux-androideabi/${ANDROID_NATIVE_API_LEVEL}/libssl_1_1.so
			${CMAKE_SYSROOT}/usr/lib/arm-linux-androideabi/${ANDROID_NATIVE_API_LEVEL}/libcurl.so
			${CMAKE_SYSROOT}/usr/lib/arm-linux-androideabi/${ANDROID_NATIVE_API_LEVEL}/librtclient.so
			/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_${ANDROID_ABI}.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "x86")
		set(ANDROID_EXTRA_LIBS
			${CMAKE_SYSROOT}/usr/lib/i686-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcrypto_1_1.so
			${CMAKE_SYSROOT}/usr/lib/i686-linux-android/${ANDROID_NATIVE_API_LEVEL}/libssl_1_1.so
			${CMAKE_SYSROOT}/usr/lib/i686-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcurl.so
			${CMAKE_SYSROOT}/usr/lib/i686-linux-android/${ANDROID_NATIVE_API_LEVEL}/librtclient.so
			/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_${ANDROID_ABI}.so
			CACHE INTERNAL "")
	elseif (ANDROID_ABI STREQUAL "x86_64")
		set(ANDROID_EXTRA_LIBS
			${CMAKE_SYSROOT}/usr/lib/x86_64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcrypto_1_1.so
			${CMAKE_SYSROOT}/usr/lib/x86_64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libssl_1_1.so
			${CMAKE_SYSROOT}/usr/lib/x86_64-linux-android/${ANDROID_NATIVE_API_LEVEL}/libcurl.so
			${CMAKE_SYSROOT}/usr/lib/x86_64-linux-android/${ANDROID_NATIVE_API_LEVEL}/librtclient.so
			/opt/Qt5.14.2/5.14.2/android/lib/libqrtclient_${ANDROID_ABI}.so
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

target_link_libraries(${PROJECT_NAME}
	curl
	Qt5::Core
	Qt5::Quick
	rtclient
	)

target_compile_definitions(${PROJECT_NAME}
	PRIVATE $<$<OR:$<CONFIG:Debug>,$<CONFIG:RelWithDebInfo>>:QT_QML_DEBUG>)
