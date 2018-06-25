#!/bin/bash
cd ../../../..
cd system/core
git apply -v ../../device/motorola/woods/patches/system_core.patch
cd ../..
cd hardware/interfaces
git apply -v ../../device/motorola/woods/patches/hardware_interfaces.patch
cd ../..
