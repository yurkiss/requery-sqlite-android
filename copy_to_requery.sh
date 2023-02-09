#!/bin/bash

src_dir=/Users/yurkiss/StudioProjects/icu_sqlite3_for_android/cross_compile_icu4c_for_android
dst_dir=/Users/yurkiss/StudioProjects/sqlite-android/sqlite-android/src/main/jni/sqlite/icu2/libs

echo "Remove $dst_dir"
rm -rf ${dst_dir}
echo "Create $dst_dir"
mkdir -p ${dst_dir}

arch=arm
abi=armeabi-v7a
echo "Copy libs to $dst_dir/$abi"
mkdir -p $dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${dst_dir}/armeabi-v7a

arch=arm64
abi=arm64-v8a
echo "Copy libs to $dst_dir/$abi"
mkdir -p $dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${dst_dir}/arm64-v8a

arch=x86
abi=x86
echo "Copy libs to $dst_dir/$abi"
mkdir -p $dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${dst_dir}/x86

arch=x86_64
abi=x86_64
echo "Copy libs to $dst_dir/$abi"
mkdir -p $dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${dst_dir}/x86_64