#!/bin/bash
icu_source_dir=icu58
icu_build_dir=icu58-build
icu_jni_dir=icu
ndk_dir=$ANDROID_SDK_HOME/ndk/25.1.8937393
working_dir=$(pwd)
sqlite_jni_dir="$working_dir/sqlite-android/src/main/jni/sqlite"
icu_libraries_dir="$working_dir/$icu_build_dir"

echo "Building ICU static libraries."

build_params="--arch=arm,arm64 --library-type=static --ndk-dir=$ndk_dir --lib-io=yes"
build_params+=" --build-dir=$working_dir/$icu_build_dir"
build_params+=" --install-include-dir=$working_dir/$icu_build_dir/include"
build_params+=" --install-libs-dir=$working_dir/$icu_build_dir/libs"
build_params+=" --icu-src-dir=$working_dir/$icu_source_dir/icu4c"

./cc-icu4c.sh "build" $build_params
# (exec "./cc-icu4c.sh build $build_params")

# echo "Removing ICU folder in SQLite project."
# rm -rf "$sqlite_jni_dir/$icu_jni_dir"

# echo "Copying ICU static libraries and headers to the SQLite project."
# mkdir "$sqlite_jni_dir/$icu_jni_dir"
# cp -r "$icu_libraries_dir/include" "$sqlite_jni_dir/$icu_jni_dir"
# cp -r "$icu_libraries_dir/libs" "$sqlite_jni_dir/$icu_jni_dir"

# cd "$working_dir" || return 1

# echo "Build SQLite with ICU enabled."
# ./gradlew clean assemble