# Personal task manager to help you reach your goal

# Building

## Getting

```sh
$ git clone git://darapsa.org/kelakon.git
$ git submodule init
$ git submodule update
```

## Configuring for various target hosts (with optional debugging)

```sh
$ mkdir build-kelakon-Desktop-Debug
$ cd build-kelakon-Desktop-Debug
$ qmake ../kelakon/kelakon.pro -spec linux-g++ CONFIG+='debug qml_debug'
```

or

```sh
$ mkdir build-kelakon-Android_Qt_5_15_2_Clang_Multi_Abi-Debug
$ cd build-kelakon-Android_Qt_5_15_2_Clang_Multi_Abi-Debug
```

and then 

```sh
$ /opt/Qt/5.15.2/android/bin/qmake ../kelakon/kelakon.pro -spec android-clang CONFIG+='debug qml_debug' ANDROID_NDK_PATH=/opt/android-ndk ANDROID_NDK_HOST=linux-x86_64 ANDROID_TARGET_ARCH=arm64-v8a QT_ANDROID_LIBDIR=/opt/Qt/5.15.2/android/lib API=21 CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt ANDROID_ABIS=arm64-v8a
```

or

```sh
$ /opt/Qt/5.15.2/android/bin/qmake ../kelakon/kelakon.pro -spec android-clang CONFIG+='debug qml_debug' ANDROID_NDK_PATH=/opt/android-ndk ANDROID_NDK_HOST=linux-x86_64 ANDROID_TARGET_ARCH=armeabi-v7a QT_ANDROID_LIBDIR=/opt/Qt/5.15.2/android/lib API=16 CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt ANDROID_ABIS=armeabi-v7a
```

or

```sh
$ /opt/Qt/5.15.2/android/bin/qmake ../kelakon/kelakon.pro -spec android-clang CONFIG+='debug qml_debug' ANDROID_NDK_PATH=/opt/android-ndk ANDROID_NDK_HOST=linux-x86_64 ANDROID_TARGET_ARCH=x86 QT_ANDROID_LIBDIR=/opt/Qt/5.15.2/android/lib API=16 CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt ANDROID_ABIS=x86
```

or

```sh
$ /opt/Qt/5.15.2/android/bin/qmake ../kelakon/kelakon.pro -spec android-clang CONFIG+='debug qml_debug' ANDROID_NDK_PATH=/opt/android-ndk ANDROID_NDK_HOST=linux-x86_64 ANDROID_TARGET_ARCH=x86_64 QT_ANDROID_LIBDIR=/opt/Qt/5.15.2/android/lib API=21 CA_BUNDLE=/etc/ssl/certs/ca-certificates.crt ANDROID_ABIS=x86_64
```

or so on.

## Compiling, linking, and producing executable

```sh
$ make # -jN (with N an integer number of parallel tasks you allow your computer to run for compiling this)
```

and if for Android:

```sh
$ make install INSTALL_ROOT=android-build
$ export ANDROID_SDK_ROOT=/opt/android-sdk-update-manager
$ /opt/Qt/5.15.2/android/bin/androiddeployqt --input android-kelakon-deployment-settings.json --output android-build --android-platform android-28
```

and if on FreeBSD:

```sh
$ cd android-build
$ echo "android.aapt2FromMavenOverride = $ANDROID_SDK_ROOT/build-tools/28.0.3/aapt2" >> gradle.properties
./gradlew assembleDebug
```
