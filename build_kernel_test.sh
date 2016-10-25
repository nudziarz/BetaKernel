#!/bin/bash
#script by PatryQ-DEV

export ARCH=arm64
export CROSS_COMPILE=/android/kernel/toolchains/aarch64-linux-android-4.9/bin/aarch64-linux-android-

make ARCH=arm64 exynos7420-zerolte_defconfig
make menuconfig
make ARCH=arm64
