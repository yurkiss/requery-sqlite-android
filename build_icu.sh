#!/bin/bash
ndk_dir=$ANDROID_NDK
working_dir=$(pwd)
sqlite_jni_dir="$working_dir/sqlite-android/src/main/jni/sqlite"
icu_libraries_dir="$working_dir/icu4c-android/build/install"

echo "Building ICU static libraries."
# cd icu4c-android
# (exec ./cc-icu4c.sh build --arch=arm,arm64 --library-type=static --ndk-dir=$ndk_dir --lib-io=yes)

echo "Removing ICU folder in SQLite project."
rm -rf "$sqlite_jni_dir/icu"

echo "Copying ICU static libraries and headers to the SQLite project."
cp -r $icu_libraries_dir "$sqlite_jni_dir/icu"

cd $working_dir 

echo "Build SQLite with ICU enabled."
./gradlew clean assemble

