# Inherit device configuration for brandy.
$(call inherit-product, device/alcatel/brandy/brandy.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, vendor/cyanogen/products/common_full.mk)

# Include GSM stuff
$(call inherit-product, vendor/cyanogen/products/gsm.mk)

# BCM FM radio
$(call inherit-product, vendor/cyanogen/products/bcm_fm_radio.mk)

# Prelink map
PRODUCT_SPECIFIC_DEFINES += TARGET_PRELINKER_MAP=$(TOP)/vendor/cyanogen/prelink-linux-arm-msm722x.map

#
# Setup device specific product configuration.
#
PRODUCT_NAME := cyanogen_brandy
PRODUCT_DEVICE := brandy
PRODUCT_MODEL := ALCATEL ONE TOUCH 990
PRODUCT_BRAND := Alcatel
PRODUCT_BOARD := Brandy
PRODUCT_MANUFACTURER := TCT

PRODUCT_BUILD_PROP_OVERRIDES +=  \
				PRODUCT_NAME=one_touch_990_ALRU \
				BUILD_FINGERPRINT=TCT/one_touch_990_ALRU/one_touch_990_gsm:2.3.4/GINGERBREAD/v5H6-0:user/release-keys \
				PRIVATE_BUILD_DESC="one_touch_990_ALRU-user 2.3.4 GINGERBREAD v5H6-0 release-keys" \
				BUILD_NUMBER=v5H6-0

# Release name and versioning
PRODUCT_RELEASE_NAME := ALCATEL ONE TOUCH 990
PRODUCT_VERSION_DEVICE_SPECIFIC :=
-include vendor/cyanogen/products/common_versions.mk

#
# Copy brandy specific prebuilt files
#
PRODUCT_COPY_FILES +=  \
    device/alcatel/brandy/bootanimation.zip:system/media/bootanimation.zip
