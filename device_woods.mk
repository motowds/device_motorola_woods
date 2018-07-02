$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit common Android Go configurations
$(call inherit-product, build/target/product/go_defaults.mk)

LOCAL_PATH := device/motorola/woods

$(call inherit-product-if-exists, vendor/motorola/woods/woods-vendor.mk)

DEVICE_PACKAGE_OVERLAYS := \
    device/motorola/woods/overlay

#PRODUCT_PACKAGE_OVERLAYS += device/motorola/woods/overlay # enable this to be able overlay a default wallpaper

# Dalvik/HWUI
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-dalvik-heap.mk)
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

PRODUCT_TAGS += dalvik.gc.type-precise

# set locales & aapt config.
PRODUCT_AAPT_CONFIG := normal xhdpi xxhdpi
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_DEFAULT_LANGUAGE := en
PRODUCT_DEFAULT_REGION := US

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.faketouch.xml:system/etc/permissions/android.hardware.faketouch.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.software.midi.xml:system/etc/permissions/android.software.midi.xml \
    frameworks/native/data/etc/android.hardware.ethernet.xml:system/etc/permissions/android.hardware.ethernet.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.hardware.vr.high_performance.xml:system/etc/permissions/android.hardware.vr.high_performance.xml \
    frameworks/native/data/etc/android.hardware.audio.low_latency.xml:system/etc/permissions/android.hardware.audio.low_latency.xml

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.manual_sensor.xml:system/etc/permissions/android.hardware.camera.manual_sensor.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/vendor/etc/media_codecs_google_audio.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/vendor/etc/media_codecs_google_telephony.xml \
    frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/vendor/etc/media_codecs_google_video_le.xml

# Media
PRODUCT_COPY_FILES += \
    frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:/system/etc/audio_policy_volumes.xml \
    frameworks/av/services/audiopolicy/config/default_volume_tables.xml:/system/etc/default_volume_tables.xml \
    frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:/system/etc/r_submix_audio_policy_configuration.xml \
    frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:/system/etc/usb_audio_policy_configuration.xml

# Seccomp policy
PRODUCT_COPY_FILES += \
    device/motorola/woods/seccomp/mediacodec.policy:system/vendor/etc/seccomp_policy/mediacodec.policy \
    device/motorola/woods/seccomp/mediaextractor.policy:system/vendor/etc/seccomp_policy/mediaextractor.policy

# Hostapd
PRODUCT_COPY_FILES += \
		$(LOCAL_PATH)/config/hostapd/hostapd_default.conf:system/etc/hostapd/hostapd_default.conf \
		$(LOCAL_PATH)/config/hostapd/hostapd.accept:system/etc/hostapd/hostapd.accept \
		$(LOCAL_PATH)/config/hostapd/hostapd.deny:system/etc/hostapd/hostapd.deny

# HIDL - HAL interface definition language
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/hidl/manifest.xml:system/vendor/manifest.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/rootdir/init.project.rc:root/init.project.rc \
    $(LOCAL_PATH)/rootdir/init.modem.rc:root/init.modem.rc \
    $(LOCAL_PATH)/rootdir/ueventd.mt6735.rc:root/ueventd.mt6735.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.usb.rc:root/init.mt6735.usb.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.rc:root/init.mt6735.rc \
    $(LOCAL_PATH)/rootdir/fstab.mt6735:root/fstab.mt6735 \
    $(LOCAL_PATH)/rootdir/init.microtrust.rc:root/init.microtrust.rc \
    $(LOCAL_PATH)/rootdir/init.connectivity.rc:root/init.connectivity.rc \
    $(LOCAL_PATH)/rootdir/init.mt6735.power.rc:root/init.mt6735.power.rc

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio@2.0-impl \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service \
    audio.a2dp.default \
    audio.r_submix.default \
    libaudio-resampler \
    libtinyalsa \
    libtinycompress \
    libtinymix \
    libtinyxml

# WiFi
PRODUCT_PACKAGES += \
		android.hardware.wifi@1.0-service \
		wificond \
		libwpa_client \
		hostapd \
		wpa_supplicant \
		wpa_supplicant.conf


PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory

PRODUCT_PACKAGES += \
    charger \
    charger_res_images \
    libion \
    libnl_2

# Storage
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.sdcardfs=true

# Bluetooth
PRODUCT_PACKAGES += \
    libbt-vendor \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service


# FM Radio
PRODUCT_PACKAGES += \
    android.hardware.broadcastradio@1.0-impl \
    FMRadio \
    libfmjni

# Camera
PRODUCT_PACKAGES += \
    Snap

# mtk symbols
PRODUCT_PACKAGES += \
    mtk_symbols

# Fingerprint HAL
PRODUCT_PACKAGES += \
    android.hardware.biometrics.fingerprint@2.1-service

# Power
PRODUCT_PACKAGES += \
    power.mt6737m

# Vibrator
PRODUCT_PACKAGES += \
    android.hardware.vibrator@1.0-impl \
    android.hardware.vibrator@1.0-service

# Keymaster HAL
PRODUCT_PACKAGES += \
    android.hardware.keymaster@3.0-impl

# Sensors HAL
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl \
    android.hardware.light@2.0-service \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service \
    lights.mt6737m

# GPS HAL
PRODUCT_PACKAGES += \
    android.hardware.gnss@1.0-impl

# GPS force mode
PRODUCT_PROPERTY_OVERRIDES += \
    persist.force.gps.mode=gnss

# USB HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0-service

# Health HAL
PRODUCT_PACKAGES += \
    android.hardware.health@1.0-impl \
    android.hardware.health@1.0-service

# Power HAL
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-impl

# Graphic HAL
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.memtrack@1.0-impl \
    libgralloc_extra \
    libgui_ext \
    libui_ext

# Filesystem management tools
PRODUCT_PACKAGES += \
    setup_fs \
    e2fsck \
    fsck.f2fs \
    mkfs.f2fs \
    make_ext4fs

# Disable adb & set other Properties
PRODUCT_DEFAULT_PROPERTY_OVERRIDES := \
	 ro.crypto.state=unencrypted \
	 ro.config.low_ram=false \
	 ro.mount.fs=EXT4 \
	 ro.secure=0 \
	 ro.adb.secure=0 \
	 ro.allow.mock.location=0 \
	 ro.debuggable=1 \
	 ro.zygote=zygote32 \
	 camera.disable_zsl_mode=1 \
	 dalvik.vm.dex2oat-Xms=64m \
	 dalvik.vm.dex2oat-Xmx=512m \
	 dalvik.vm.image-dex2oat-Xms=64m \
	 dalvik.vm.image-dex2oat-Xmx=64m \
	 ro.dalvik.vm.native.bridge=0 \
	 ro.telephony.ril_class=MT6735 \
	 persist.sys.usb.config = mtp,adb \
	 persist.service.adb.enable=1 \
	 persist.service.debuggable=1

PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
   pm.dexopt.first-boot=verify-at-runtime \
   pm.dexopt.boot=verify-at-runtime \
   pm.dexopt.install=interpret-only \
   pm.dexopt.bg-dexopt=speed-profile \
   pm.dexopt.ab-ota=speed-profile \
   pm.dexopt.nsys-library=speed \
   pm.dexopt.shared-apk=speed \
   pm.dexopt.forced-dexopt=speed \
   pm.dexopt.core-app=speed

PRODUCT_PROPERTY_OVERRIDES += \
	 dalvik.vm.dex2oat-filter=speed \
	 dalvik.vm.dex2oat-swap=false

# IO Scheduler
PRODUCT_PROPERTY_OVERRIDES += \
    sys.io.scheduler=cfq

# Properties
PRODUCT_PROPERTY_OVERRIDES += \
	ro.hw.gyroscope=false \
	persist.radio.apn_delay=5000 \
	persist.sys.media.use-awesome=false \
	media.stagefright.use-awesome=false \
	media.stagefright.legacyencoder=0

#
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

###########################################################################
# ro.boot.optxxxx for telephnoy
# Add for opt_using_default, always set to 1
PRODUCT_PROPERTY_OVERRIDES += ro.boot.opt_using_default=1

#shim
PRODUCT_PACKAGES += \
	libshim_ril \
	libshim_camera \
	libshim_bionic \
	libshim_atomic \
	libxlog

#_hals.conf
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/config/sensors/_hals.conf:system/vendor/etc/sensors/_hals.conf

# Keyhandler package
PRODUCT_PACKAGES += \
    com.cyanogenmod.keyhandler

PRODUCT_SYSTEM_SERVER_JARS += com.cyanogenmod.keyhandler

# Never dexopt the keyhandler
$(call add-product-dex-preopt-module-config,com.cyanogenmod.keyhandler,disable)
