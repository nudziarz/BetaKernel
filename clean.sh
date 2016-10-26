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
