#!/bin/bash
cd ../../../..
cd system/core
patch -p1 < ../../device/motorola/woods/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
cd ../..
cd bionic
patch -p1 < ../device/motorola/woods/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..

