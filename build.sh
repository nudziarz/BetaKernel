#!/bin/bash
#script by PatryQ
echo "PatryQ Kernel"

#cleaning
echo "cleaning"
export CROSS_COMPILE=/android/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-
export ARCH=arm64
make clean
rm patryq-kernel.zip
rm arch/arm64/boot/Image
rm narzedzia/boot.img
rm narzedzia/output/kernel
rm zip-files/tmp/kernels/925stock/boot.img

#export 
echo "setting up eviorment"
export ARCH=arm64
export SUBARCH=arm64
export KBUILD_BUILD_USER=patryq_dev
export KBUILD_BUILD_HOST=ASUS
export ANDROID_CCACHE_DIR="$pwd/.ccache"  
export ANDROID_CCACHE_SIZE="50G" 
export CROSS_COMPILE=/android/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-
#make
echo "make kernel"
make ARCH=arm64 exynos7420-zerolte_defconfig
#make menuconfig
make ARCH=arm64
#copy_files
echo "copying and packing files"
cp arch/arm64/boot/Image narzedzia/output 
cd narzedzia
rm output/kernel
cd output
cp Image kernel
rm Image
cd ../
./mkboot output boot.img
cp boot.img ../zip-files/tmp/kernels/925stock
#zip_files
echo "zipping kernel"
cd ../zip-files
zip -r patryq-kernel.zip . 
mv patryq-kernel.zip ../

echo "making kernel finished"
