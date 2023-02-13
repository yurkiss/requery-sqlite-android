#!/bin/bash

src_dir=cross_compile_icu4c_for_android
libs_dst_dir=sqlite-android/src/main/jni/sqlite/icu2/libs
includes_dst_dir=sqlite-android/src/main/jni/sqlite/icu2/include

echo "Remove $libs_dst_dir"
rm -rf ${libs_dst_dir}

echo "Create $libs_dst_dir"
mkdir -p ${libs_dst_dir}

arch=arm
abi=armeabi-v7a
echo "Copy libs to $libs_dst_dir/$abi"
mkdir -p $libs_dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${libs_dst_dir}/armeabi-v7a

arch=arm64
abi=arm64-v8a
echo "Copy libs to $libs_dst_dir/$abi"
mkdir -p $libs_dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${libs_dst_dir}/arm64-v8a

arch=x86
abi=x86
echo "Copy libs to $libs_dst_dir/$abi"
mkdir -p $libs_dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${libs_dst_dir}/x86

arch=x86_64
abi=x86_64
echo "Copy libs to $libs_dst_dir/$abi"
mkdir -p $libs_dst_dir/$abi
cp -rf ${src_dir}/build/android/${arch}/lib/* ${libs_dst_dir}/x86_64

echo "Copy include headers to $includes_dst_dir"
mkdir -p $includes_dst_dir
cp -rf ${src_dir}/build/host/icu_build/include $includes_dst_dir