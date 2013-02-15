$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# The gps config appropriate for this device
$(call inherit-product, device/common/gps/gps_us_supl.mk)

$(call inherit-product-if-exists, vendor/alcatel/brandy/brandy-vendor.mk)

DEVICE_PACKAGE_OVERLAYS += device/alcatel/brandy/overlay

LOCAL_PATH := device/alcatel/brandy
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# WiFi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/wifi/bcm4329.ko:system/lib/modules/bcm4329.ko \
    $(LOCAL_PATH)/prebuilt/wifi/librasdioif.ko:system/lib/modules/librasdioif.ko \
    $(LOCAL_PATH)/prebuilt/wifi/fw_bcm4329.bin:system/etc/wifi/fw_bcm4329.bin \
    $(LOCAL_PATH)/prebuilt/wifi/fw_bcm4329_apsta.bin:system/etc/wifi/fw_bcm4329_apsta.bin \
    $(LOCAL_PATH)/prebuilt/wifi/nvram.txt:system/etc/wifi/nvram.txt \
    $(LOCAL_PATH)/prebuilt/wifi/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/prebuilt/wifi/dhcpcd.conf:system/etc/dhcpcd/dhcpcd.conf

$(call inherit-product, build/target/product/full.mk)

PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
PRODUCT_NAME := brandy
PRODUCT_DEVICE := brandy
