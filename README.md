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
$ cmake -DCMAKE_BUILD_TYPE=Debug ../kelakon
```

or

```sh
$ mkdir build-kelakon-Android_for_armeabi_v7a_arm64_v8a_x86_x86_64_Clang_Qt_5_14_2_for_Android-Debug
$ cd build-kelakon-Android_for_armeabi_v7a_arm64_v8a_x86_x86_64_Clang_Qt_5_14_2_for_Android-Debug
```

and then for any of these, do it twice (because of some bug that 3rd party libraries wouldn't get included)

```sh
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk-r19c/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.2/5.14.2/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_ABI=arm64_v8a -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.2/5.14.2/android -DCMAKE_BUILD_TYPE=Debug ../kelakon
```

or

```sh
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk-r19c/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.2/5.14.2/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_ABI=armeabi-v7a -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.2/5.14.2/android -DCMAKE_BUILD_TYPE=Debug ../kelakon
```

or

```sh
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk-r19c/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.2/5.14.2/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_ABI=x86 -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.2/5.14.2/android -DCMAKE_BUILD_TYPE=Debug ../kelakon
```

or

```sh
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk-r19c/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.2/5.14.2/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_ABI=x86_64 -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.2/5.14.2/android -DCMAKE_BUILD_TYPE=Debug ../kelakon
```

or so on.

## Compiling, linking, and producing executable

```sh
$ make # -jN (with N an integer number of parallel tasks you allow your computer to run for compiling this)
$ /opt/Qt5.14.2/5.14.2/android/bin/androiddeployqt --input android_deployment_settings.json --output android-build --android-platform android-24
```
