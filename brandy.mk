#
# Copyright (C) 2009 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

DEVICE_PACKAGE_OVERLAYS += device/alcatel/brandy/overlay


ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/alcatel/brandy/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/base/data/etc/android.hardware.camera.xml:system/etc/permissions/android.hardware.camera.xml \
    frameworks/base/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/base/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.xml:system/etc/permissions/android.hardware.touchscreen.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.distinct.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.distinct.xml

PRODUCT_PACKAGES += \
    libril \
    libOmxCore \
    libOmxVidEnc \
    copybit.brandy \
    gralloc.brandy \
    lights.brandy \
    gps.brandy \
    apversion \
    bdaddr_read


PRODUCT_COPY_FILES += \
    device/alcatel/brandy/AutoVolumeControl.txt:system/etc/AutoVolumeControl.txt \
    device/alcatel/brandy/media_profiles.xml:system/etc/media_profiles.xml

# Boot
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/boot/ueventd.rc:root/ueventd.rc \
    device/alcatel/brandy/boot/init.brandy.rc:root/init.brandy.rc \
    device/alcatel/brandy/boot/initlogo.rle:root/initlogo.rle

# Audio
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/libaudioeq.so:/system/lib/libaudioeq.so \
    device/alcatel/brandy/proprietary/etc/AudioFilter.csv:/system/etc/AudioFilter.csv \
    device/alcatel/brandy/proprietary/lib/libaudioalsa.so:/system/lib/libaudioalsa.so

# WiFi
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/modules/bcm4329.ko:system/lib/modules/bcm4329.ko \
    device/alcatel/brandy/proprietary/lib/modules/librasdioif.ko:system/lib/modules/librasdioif.ko \
    device/alcatel/brandy/proprietary/wlan/broadcom/fw_bcm4329.bin:/system/etc/wifi/fw_bcm4329.bin \
    device/alcatel/brandy/proprietary/wlan/broadcom/fw_bcm4329_apsta.bin:/system/etc/wifi/fw_bcm4329_apsta.bin \
    device/alcatel/brandy/proprietary/configs/nvram.txt:/system/etc/wifi/nvram.txt \
    device/alcatel/brandy/proprietary/configs/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf \
    device/alcatel/brandy/proprietary/configs/dhcpcd.conf:/system/etc/dhcpcd/dhcpcd.conf

# G-Sensors, Compass and BT
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/bin/akmd8975:/system/bin/akmd8975 \
    device/alcatel/brandy/proprietary/bin/BCM4329B1_002_1_002_023_0797_0834.hcd:system/bin/BCM4329B1_002_1_002_023_0797_0834.hcd

# RIL
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/bin/cnd:system/bin/cnd \
    device/alcatel/brandy/proprietary/bin/qmuxd:system/bin/qmuxd \
    device/alcatel/brandy/proprietary/bin/port-bridge:system/bin/port-bridge \
    device/alcatel/brandy/proprietary/lib/libauth.so:system/lib/libauth.so \
    device/alcatel/brandy/proprietary/lib/libcm.so:system/lib/libcm.so \
    device/alcatel/brandy/proprietary/lib/libdiag.so:system/lib/libdiag.so \
    device/alcatel/brandy/proprietary/lib/libdll.so:system/lib/libdll.so \
    device/alcatel/brandy/proprietary/lib/libdsm.so:system/lib/libdsm.so \
    device/alcatel/brandy/proprietary/lib/libdss.so:system/lib/libdss.so \
    device/alcatel/brandy/proprietary/lib/libgsdi_exp.so:system/lib/libgsdi_exp.so \
    device/alcatel/brandy/proprietary/lib/libgstk_exp.so:system/lib/libgstk_exp.so \
    device/alcatel/brandy/proprietary/lib/libmmgsdilib.so:system/lib/libmmgsdilib.so \
    device/alcatel/brandy/proprietary/lib/libnv.so:system/lib/libnv.so \
    device/alcatel/brandy/proprietary/lib/liboncrpc.so:system/lib/liboncrpc.so \
    device/alcatel/brandy/proprietary/lib/libpbmlib.so:system/lib/libpbmlib.so \
    device/alcatel/brandy/proprietary/lib/libqmi.so:system/lib/libqmi.so \
    device/alcatel/brandy/proprietary/lib/libqueue.so:system/lib/libqueue.so \
    device/alcatel/brandy/proprietary/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \
    device/alcatel/brandy/proprietary/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so \
    device/alcatel/brandy/proprietary/lib/libwms.so:system/lib/libwms.so \
    device/alcatel/brandy/proprietary/lib/libwmsts.so:system/lib/libwmsts.so \
    device/alcatel/brandy/proprietary/etc/apns-conf.xml:system/etc/apns-conf.xml

# GPS
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/etc/gps.conf:/system/etc/gps.conf

# OMX
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/etc/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \
    device/alcatel/brandy/proprietary/etc/pvplayer.cfg:/system/etc/pvplayer.cfg \
    device/alcatel/brandy/proprietary/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \
    device/alcatel/brandy/proprietary/lib/libdivxdrmdecrypt.so:system/lib/libdivxdrmdecrypt.so \
    device/alcatel/brandy/proprietary/lib/libdrmagent_jni.so:system/lib/libdrmagent_jni.so \
    device/alcatel/brandy/proprietary/lib/libmmosal.so:system/lib/libmmosal.so \
    device/alcatel/brandy/proprietary/lib/libmm-omxcore.so:system/lib/libmm-omxcore.so \
    device/alcatel/brandy/proprietary/lib/libmmparser.so:system/lib/libmmparser.so \
    device/alcatel/brandy/proprietary/lib/libmmparser_divxdrmlib.so:system/lib/libmmparser_divxdrmlib.so \
    device/alcatel/brandy/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \
    device/alcatel/brandy/proprietary/lib/libomx_aacdec_sharedlibrary.so:/system/lib/libomx_aacdec_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \
    device/alcatel/brandy/proprietary/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \
    device/alcatel/brandy/proprietary/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \
    device/alcatel/brandy/proprietary/lib/libomx_amrdec_sharedlibrary.so:/system/lib/libomx_amrdec_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \
    device/alcatel/brandy/proprietary/lib/libomx_amrenc_sharedlibrary.so:/system/lib/libomx_amrenc_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \
    device/alcatel/brandy/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \
    device/alcatel/brandy/proprietary/lib/libomx_avcdec_sharedlibrary.so:/system/lib/libomx_avcdec_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \
    device/alcatel/brandy/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \
    device/alcatel/brandy/proprietary/lib/libOmxEvrcHwDec.so:/system/lib/libOmxEvrcHwDec.so \
    device/alcatel/brandy/proprietary/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \
    device/alcatel/brandy/proprietary/lib/libomx_m4vdec_sharedlibrary.so:/system/lib/libomx_m4vdec_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libomx_mp3dec_sharedlibrary.so:/system/lib/libomx_mp3dec_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \
    device/alcatel/brandy/proprietary/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \
    device/alcatel/brandy/proprietary/lib/libOmxOn2Dec.so:/system/lib/libOmxOn2Dec.so \
    device/alcatel/brandy/proprietary/lib/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \
    device/alcatel/brandy/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \
    device/alcatel/brandy/proprietary/lib/libOmxQcelpHwDec.so:/system/lib/libOmxQcelpHwDec.so \
    device/alcatel/brandy/proprietary/lib/libomx_sharedlibrary.so:/system/lib/libomx_sharedlibrary.so \
    device/alcatel/brandy/proprietary/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \
    device/alcatel/brandy/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \
    device/alcatel/brandy/proprietary/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \
    device/alcatel/brandy/proprietary/lib/libqcomm_omx.so:/system/lib/libqcomm_omx.so

# Opencore libs
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/libopencore_author.so:/system/lib/libopencore_author.so \
    device/alcatel/brandy/proprietary/lib/libopencore_common.so:/system/lib/libopencore_common.so \
    device/alcatel/brandy/proprietary/lib/libopencore_download.so:/system/lib/libopencore_download.so \
    device/alcatel/brandy/proprietary/lib/libopencore_downloadreg.so:/system/lib/libopencore_downloadreg.so \
    device/alcatel/brandy/proprietary/lib/libopencorehw.so:/system/lib/libopencorehw.so \
    device/alcatel/brandy/proprietary/lib/libopencore_mp4local.so:/system/lib/libopencore_mp4local.so \
    device/alcatel/brandy/proprietary/lib/libopencore_mp4localreg.so:/system/lib/libopencore_mp4localreg.so \
    device/alcatel/brandy/proprietary/lib/libopencore_net_support.so:/system/lib/libopencore_net_support.so \
    device/alcatel/brandy/proprietary/lib/libopencore_player.so:/system/lib/libopencore_player.so \
    device/alcatel/brandy/proprietary/lib/libopencore_rtsp.so:/system/lib/libopencore_rtsp.so \
    device/alcatel/brandy/proprietary/lib/libopencore_rtspreg.so:/system/lib/libopencore_rtspreg.so

# Camera
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so \
    device/alcatel/brandy/proprietary/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \
    device/alcatel/brandy/proprietary/lib/libmmipl.so:/system/lib/libmmipl.so \
    device/alcatel/brandy/proprietary/lib/libcamera_client.so:/system/lib/libcamera_client.so \
    device/alcatel/brandy/proprietary/lib/libcameraservice.so:/system/lib/libcameraservice.so \
    device/alcatel/brandy/proprietary/lib/libcamera.so:/obj/lib/libcamera.so \
    device/alcatel/brandy/proprietary/lib/libcamera.so:/system/lib/libcamera.so

# Adreno proprietary
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/egl/libGLESv1_CM_adreno200.so:system/lib/egl/libGLESv1_CM_adreno200.so \
    device/alcatel/brandy/proprietary/lib/egl/libq3dtools_adreno200.so:system/lib/egl/libq3dtools_adreno200.so \
    device/alcatel/brandy/proprietary/lib/egl/libEGL_adreno200.so:system/lib/egl/libEGL_adreno200.so \
    device/alcatel/brandy/proprietary/lib/egl/libGLESv2_adreno200.so:system/lib/egl/libGLESv2_adreno200.so \
    device/alcatel/brandy/proprietary/etc/firmware/yamato_pfp.fw:system/etc/firmware/yamato_pfp.fw \
    device/alcatel/brandy/proprietary/etc/firmware/yamato_pm4.fw:system/etc/firmware/yamato_pm4.fw \
    device/alcatel/brandy/proprietary/lib/libgsl.so:system/lib/libgsl.so \
    device/alcatel/brandy/proprietary/lib/libOpenVG.so:system/lib/libOpenVG.so

# Mac addr
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/bin/jrd_bcm4329_mac:system/bin/jrd_bcm4329_mac \
    device/alcatel/brandy/proprietary/bin/nvcmd:system/bin/nvcmd

# various files
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/bin/sd_test:system/bin/sd_test \
    device/alcatel/brandy/proprietary/etc/vold.fstab:/system/etc/vold.fstab

# hw libs
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/lib/hw/sensors.msm7k.so:system/lib/hw/sensors.msm7k.so

# Keys
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/keys/7k_ffa_keypad.kcm.bin:/system/usr/keychars/7k_ffa_keypad.kcm.bin \
    device/alcatel/brandy/proprietary/keys/7k_ffa_keypad.kl:/system/usr/keylayout/7k_ffa_keypad.kl \
    device/alcatel/brandy/proprietary/keys/7k_handset.kl:/system/usr/keylayout/7k_handset.kl \
    device/alcatel/brandy/proprietary/keys/qwerty.kl:/system/usr/keylayout/qwerty.kl

# sh scripts
PRODUCT_COPY_FILES += \
    device/alcatel/brandy/proprietary/etc/init.qcom.bt.sh:system/etc/init.qcom.bt.sh \
    device/alcatel/brandy/proprietary/etc/init.qcom.post_boot.sh:system/etc/init.qcom.post_boot.sh \
    device/alcatel/brandy/proprietary/etc/init.baseband_version.sh:system/etc/init.baseband_version.sh

PRODUCT_LOCALES += mdpi

PRODUCT_PROPERTY_OVERRIDES := \
    keyguard.no_require_sim=true \
    ro.com.android.dateformat=dd-MM-yyyy \
    ro.ril.hsxpa=1 \
    ro.ril.gprsclass=10 \
    ro.media.dec.jpeg.memcap=10000000 \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=120 \
    ro.com.android.dataroaming=false \
    ro.telephony.default_network=0 \
    ro.com.google.clientidbase=android-alcatel \
    ro.com.google.clientidbase.ms=android-alcatel \
    ro.com.google.clientidbase.gmm=android-alcatel \
    ro.com.google.clientidbase.am=android-alcatel \
    ro.com.google.clientidbase.yt=android-alcatel \
    ro.com.google.gmsversion=2.3_r9 \


PRODUCT_PACKAGES += \
    LiveWallpapers \
    LiveWallpapersPicker \
    VisualizationWallpapers \
    MagicSmokeWallpapers \
    librs_jni \
    Gallery3d \
    SpareParts \
    Term \
    Stk \
    Torch

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

## Device identifier. This must come after all inclusions
PRODUCT_NAME := brandy
PRODUCT_DEVICE := brandy
PRODUCT_MODEL := ALCATEL ONE TOUCH 990
PRODUCT_BRAND := Alcatel
PRODUCT_MANUFACTURER := TCT
