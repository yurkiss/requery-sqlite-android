#!/bin/bash
ndk_dir=$ANDROID_NDK_HOME
working_dir=$(pwd)
sqlite_jni_dir="$working_dir/sqlite-android/src/main/jni/sqlite"
icu_libraries_dir="$working_dir/icu4c-android/build/install"

echo "Building ICU static libraries."

build_params="--arch=arm,arm64 --library-type=static --ndk-dir=$ndk_dir --lib-io=yes"
build_params+=" --build-dir=$working_dir/icu58-build"
build_params+=" --icu-src-dir=$working_dir/icu58/icu4c"

(exec "./cc-icu4c.sh build $build_params")

#echo "Removing ICU folder in SQLite project."
#rm -rf "$sqlite_jni_dir/icu58"

#echo "Copying ICU static libraries and headers to the SQLite project."
#cp -r "$icu_libraries_dir" "$sqlite_jni_dir/icu58"

#cd "$working_dir" || return 1

#echo "Build SQLite with ICU enabled."
#./gradlew clean assemble