#
for var in eng user userdebug; do
  add_lunch_combo rr_woods-$var
done

# Patches
echo
echo "  :( "
echo "PATCHES FOR '[woods]'"
echo "Applying PATCHES Automatically ..."
cd system/core
git apply -v ../../device/motorola/woods/patches/system_core.patch
cd ../..
cd hardware/interfaces
git apply -v ../../device/motorola/woods/patches/hardware_interfaces.patch
cd ../..

echo ""
echo "PATCHES APPLIED !!!"
echo "/// Let's see what happens"
echo "  ;) "
echo "==__==__=="
echo
echo "...!DONE!"
echo
