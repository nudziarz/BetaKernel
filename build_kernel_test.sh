#!/bin/bash
#script by PatryQ-DEV
#export 
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER=patryq_dev
export KBUILD_BUILD_HOST=ASUS
export ANDROID_CCACHE_DIR="$pwd/.ccache"  
export ANDROID_CCACHE_SIZE="50G" 
export CROSS_COMPILE=/android/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#make
make ARCH=arm64 exynos7420-zerolte_defconfig
make menuconfig
make ARCH=arm64
#copy_files


#zip_files
