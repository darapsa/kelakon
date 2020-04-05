# Personal task manager to help you reach your goal

# Building

## Getting

```sh
$ git clone git://darapsa.org/kelakon.git
$ cd kelakon
```

## Configuring for various target hosts (with optional debugging)

```sh
$ mkdir build
$ cmake -DCMAKE_BUILD_TYPE=Debug ..
```

or

```sh
$ mkdir build-Android_arm64_v8a-Debug
$ cd build-Android_arm64_v8a-Debug
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.1/5.14.1/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_BUILD_ABI_arm64_v8a=1 -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=arm64-v8a -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.1/5.14.1/android ..
```

or

```sh
$ mkdir build-Android_armeabi_v7a-Debug
$ cd build-Android_armeabi_v7a-Debug
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.1/5.14.1/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_BUILD_ABI_armeabi_v7a=1 -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=armeabi-v7a -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.1/5.14.1/android ..
```

or

```sh
$ mkdir build-Android_x86-Debug
$ cd build-Android_x86-Debug
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.1/5.14.1/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_BUILD_ABI_x86=1 -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=x86 -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.1/5.14.1/android ..
```

or

```sh
$ mkdir build-Android_x86_64-Debug
$ cd build-Android_x86_64-Debug
$ cmake -DCMAKE_TOOLCHAIN_FILE=/opt/android-ndk/build/cmake/android.toolchain.cmake -DCMAKE_FIND_ROOT_PATH=/opt/Qt5.14.1/5.14.1/android -DANDROID_NATIVE_API_LEVEL=21 -DANDROID_BUILD_ABI_x86_64=1 -DCMAKE_BUILD_TYPE=Debug -DANDROID_ABI=x86_64 -DANDROID_SDK=/opt/android-sdk-update-manager -DCMAKE_PREFIX_PATH=/opt/Qt5.14.1/5.14.1/android ..
```

or so on.

## Compiling, linking, and producing executable

```sh
$ make # -jN (with N an integer number of parallel tasks you allow your computer to run for compiling this)
$ /opt/Qt5.14.1/5.14.1/android/bin/androiddeployqt --input android_deployment_settings.json --output android-build
```
