#
# This is the product configuration for a full maserati
#

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

## (3)  Finally, the least specific parts, i.e. the non-GSM-specific aspects

# Device overlay
    DEVICE_PACKAGE_OVERLAYS += device/motorola/maserati/overlay/aosp

# high-density artwork where available
PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_PACKAGES := \
    charger \
    charger_res_images

# Audio
PRODUCT_COPY_FILES += \
    device/motorola/maserati/audio/alsa.omap4.so:/system/lib/hw/alsa.omap4.so \
    device/motorola/maserati/audio/audio.primary.omap4.so:/system/lib/hw/audio.primary.omap4.so \
    device/motorola/maserati/audio/audio_policy.omap4.so:/system/lib/hw/audio_policy.omap4.so \
    device/motorola/maserati/audio/libasound.so:/system/lib/libasound.so \
    device/motorola/maserati/audio/libaudio_ext.so:/system/lib/libaudio_ext.so \

#    device/motorola/maserati/audio/audio.a2dp.default.so:/system/lib/hw/audio.a2dp.default.so \
PRODUCT_PACKAGES += \
    parse_hdmi_edid \
    libedid \
    hwcomposer.maserati \
    libinvensense_mpl \
    camera.omap4

PRODUCT_PACKAGES += \
    libaudioutils \
    libaudiohw_legacy \

# BlueZ a2dp Audio HAL module
PRODUCT_PACKAGES += \
    audio.a2dp.default

# BlueZ test tools
PRODUCT_PACKAGES += \
    hciconfig \
    hcitool

# Tiler
PRODUCT_PACKAGES += \
    libtimemmgr

# Modem
PRODUCT_PACKAGES += \
    nc \
    Stk \
    libaudiomodemgeneric \
    libreference-cdma-sms \
    rild \
    radiooptions \
    sh 

# Wifi
PRODUCT_PACKAGES += \
    dhcpcd.conf \
    hostapd.conf \
    wifical.sh \
    TQS_D_1.7.ini \
    TQS_D_1.7_127x.ini \
    crda \
    regulatory.bin \
    calibrator \
    busybox \

# Bluetooth
PRODUCT_PACKAGES += \
    bt_sco_app \
    uim-sysfs 

# Release utilities
PRODUCT_PACKAGES += \
    maserati_releaseutils-check_kernel \
    maserati_releaseutils-finalize_release \
    maserati_releaseutils-mke2fs \
    maserati_releaseutils-tune2fs

PRODUCT_PACKAGES += \
    camera_test \
    Camera \
    CameraOMAP4 \
    Superuser \
    su \
    DockAudio \


PRODUCT_PACKAGES += \
    librs_jni \
    com.android.future.usb.accessory \
    FileManager \
    MusicFX \
    Apollo \
    VideoEditor \
    VoiceDialer \
    Basic \
    HoloSpiralWallpaper \
    MagicSmokeWallpapers \
    NoiseField \
    Galaxy4 \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    PhaseBeam \

# WirelessTether
PRODUCT_PACKAGES += wifi_tether_v3_2-pre1
PRODUCT_COPY_FILES += \
    device/motorola/maserati/prebuilt/lib/libwtnativetask.so:system/lib/libwtnativetask.so \

# Rootfs files
PRODUCT_COPY_FILES += \
    out/target/product/maserati/root/init:system/etc/rootfs/init \
    out/target/product/maserati/root/sbin/adbd:system/etc/rootfs/sbin/adbd \
    device/motorola/maserati/root/default.prop:system/etc/rootfs/default.prop \
    device/motorola/maserati/root/init.rc:system/etc/rootfs/init.rc \
    device/motorola/maserati/root/init.trace.rc:system/etc/rootfs/init.trace.rc \
    device/motorola/maserati/root/init.usb.rc:system/etc/rootfs/init.usb.rc \
    device/motorola/maserati/root/init.mapphone_cdma.rc:system/etc/rootfs/init.mapphone_cdma.rc \
    device/motorola/maserati/root/init.mapphone_umts.rc:system/etc/rootfs/init.mapphone_umts.rc \
    device/motorola/maserati/root/usbcheck.sh:system/etc/rootfs/usbcheck.sh \
    device/motorola/maserati/root/ueventd.rc:system/etc/rootfs/ueventd.rc \
    device/motorola/maserati/root/ueventd.mapphone_cdma.rc:system/etc/rootfs/ueventd.mapphone_cdma.rc \
    device/motorola/maserati/root/ueventd.mapphone_umts.rc:system/etc/rootfs/ueventd.mapphone_umts.rc \

# Hijack files
PRODUCT_COPY_FILES += \
    device/motorola/maserati/root/default.prop:root/default.prop \
    device/motorola/maserati/root/init.rc:root/init.rc \
    device/motorola/maserati/root/init.trace.rc:root/init.trace.rc \
    device/motorola/maserati/root/init.usb.rc:root/init.usb.rc \
    device/motorola/maserati/root-hijack/init.mapphone_cdma.rc:root/init.mapphone_cdma.rc \
    device/motorola/maserati/root-hijack/init.mapphone_umts.rc:root/init.mapphone_umts.rc \
    device/motorola/maserati/root/usbcheck.sh:root/usbcheck.sh \
    device/motorola/maserati/root/ueventd.rc:root/ueventd.rc \
    device/motorola/maserati/root/ueventd.mapphone_cdma.rc:root/ueventd.mapphone_cdma.rc \
    device/motorola/maserati/root/ueventd.mapphone_umts.rc:root/ueventd.mapphone_umts.rc \


# Permissions files
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:/system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:/system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.camera.xml:/system/etc/permissions/android.hardware.camera.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:/system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:/system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:/system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:/system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:/system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.cdma.xml:/system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:/system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.xml:/system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:/system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/handheld_core_hardware.xml:/system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \

#    frameworks/native/data/etc/android.hardware.wifi.direct.xml:/system/etc/permissions/android.hardware.wifi.direct.xml \
# Prebuilts
PRODUCT_COPY_FILES += \
    device/motorola/maserati/prebuilt/bin/battd:system/bin/battd \
    device/motorola/maserati/prebuilt/bin/hijack:system/bin/hijack \
    device/motorola/maserati/prebuilt/bin/hijack.log_dump:system/bin/hijack.log_dump \
    device/motorola/maserati/prebuilt/bin/mount_ext3.sh:system/bin/mount_ext3.sh \
    device/motorola/maserati/prebuilt/bin/strace:system/bin/strace \
    device/motorola/maserati/prebuilt/etc/gps.conf:system/etc/gps.conf \
    device/motorola/maserati/prebuilt/etc/vold.fstab:system/etc/vold.fstab \
    device/motorola/maserati/prebuilt/etc/hijack-boot.zip:system/etc/hijack-boot.zip \
    device/motorola/maserati/prebuilt/etc/TICameraCameraProperties.xml:system/etc/TICameraCameraProperties.xml \
    device/motorola/maserati/prebuilt/etc/media_codecs.xml:system/etc/media_codecs.xml \
    device/motorola/maserati/prebuilt/etc/audio_policy.conf:system/etc/audio_policy.conf \

#    device/motorola/maserati/prebuilt/etc/media_profiles.xml:system/etc/media_profiles.xml \
# omapzoom wifi firmware
PRODUCT_COPY_FILES += \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-mr.bin.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-plt.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl127x-fw-4-sr.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-mr.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-plt.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin:/system/etc/firmware/ti-connectivity/wl128x-fw-4-sr.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs.bin \
    device/motorola/maserati/prebuilt/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin:/system/etc/firmware/ti-connectivity/wl1271-nvs_127x.bin \

# Backup Tool
PRODUCT_COPY_FILES += \
    device/motorola/maserati/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    device/motorola/maserati/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    device/motorola/maserati/prebuilt/bin/50-backup.sh:system/addon.d/50-backup.sh

# prebuilt hwc
PRODUCT_COPY_FILES += \
    device/motorola/maserati/hwc/hwcomposer.spyder.so:system/vendor/lib/hw/hwcomposer.maserati.so
    device/motorola/maserati/hwc/libedid.so:syste/lib/libedid.so

# Phone settings
PRODUCT_COPY_FILES += \
    device/motorola/maserati/prebuilt/etc/apns-conf.xml:system/etc/apns-conf.xml \
    device/motorola/maserati/prebuilt/etc/spn-conf.xml:system/etc/spn-conf.xml \
#   device/sample/etc/apns-conf_verizon.xml:system/etc/apns-conf.xml 

# we have enough storage space to hold precise GC data
PRODUCT_TAGS += dalvik.gc.type-precise

# still need to set english for audio init
PRODUCT_LOCALES += en_US

# copy all kernel modules under the "modules" directory to system/lib/modules
PRODUCT_COPY_FILES += $(shell \
    find device/motorola/maserati/modules -name '*.ko' \
    | sed -r 's/^\/?(.*\/)([^/ ]+)$$/\1\2:system\/lib\/modules\/\2/' \
    | tr '\n' ' ')

ifeq ($(TARGET_PREBUILT_KERNEL),)
LOCAL_KERNEL := device/motorola/maserati/kernel
else
LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# stuff specific to ti OMAP4 hardware
$(call inherit-product, hardware/ti/omap4xxx/omap4.mk)
$(call inherit-product, hardware/ti/wpan/ti-wpan-products.mk)
$(call inherit-product-if-exists, vendor/verizon/verizon.mk)

$(call inherit-product-if-exists, vendor/motorola/maserati/maserati-vendor.mk)

# stuff common to all Motorola phones -- disabled for Sandbox
#$(call inherit-product, device/motorola/common/common_hijack.mk)
