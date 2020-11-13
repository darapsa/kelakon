# Personal task manager to help you reach your goal

# Building

## Getting

```sh
$ git clone git://darapsa.org/kelakon.git
```

## Configuring for various target hosts (with optional debugging)

```sh
$ mkdir build-kelakon-Desktop-Debug
$ cd build-kelakon-Desktop-Debug
$ qmake ../kelakon/kelakon.pro -spec linux-g++ CONFIG+='debug qml_debug'
```

or

```sh
$ mkdir build-kelakon-Android_Qt_5_15_1_Clang_Multi_Abi-Debug
$ cd build-kelakon-Android_Qt_5_15_1_Clang_Multi_Abi-Debug
$ /opt/Qt/5.15.1/android/bin/qmake ../kelakon/kelakon.pro -spec android-clang CONFIG+='debug qml_debug' ANDROID_ABIS="armeabi-v7a arm64-v8a x86 x86_64" 
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
$ /opt/Qt/5.15.1/android/bin/androiddeployqt --input android-kelakon-deployment-settings.json --output android-build --android-platform android-29
```

and if on FreeBSD:

```sh
$ cd android-build
$ echo "android.aapt2FromMavenOverride = $ANDROID_SDK_ROOT/build-tools/28.0.3/aapt2" >> gradle.properties
./gradlew assembleDebug
```
