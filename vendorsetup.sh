#
for var in userdebug; do
  add_lunch_combo rr_woods-$var
done

echo
echo "  :( "
echo "Applying PATCHES ..."
cd system/core
git apply -v ../../device/motorola/woods/patches/0001-Remove-CAP_SYS_NICE-from-surfaceflinger.patch
cd ../..
cd bionic
git apply -v ../device/motorola/woods/patches/0002-Apply-LIBC-version-to-__pthread_gettid.patch
cd ..

echo ""
echo "PATCHES APPLIED !!!"
echo "/// Let's see what happens"
echo "  ;) "
echo "==__==__=="
echo

# # Patches
# echo
# echo "Applying Patches Automatically ..."
# cd system/core
# git apply -v ../../device/motorola/woods/patches/0001-system_core.patch
# cd ../..
# cd hardware/interfaces
# git apply -v ../../device/motorola/woods/patches/0002-hardware_interfaces.patch
# cd ../..
#
# echo "  :( "
# echo "==__==__=="
#
# echo
# echo "Copying 'SkUserConfig.h' & 'SkUserConfigManual.h' to Core ..."
# cp external/skia/include/config/SkUserConfig.h external/skia/include/core
# echo ""
# cp external/skia/include/config/SkUserConfigManual.h external/skia/include/core
# echo
# echo "...!DONE!"
# echo
