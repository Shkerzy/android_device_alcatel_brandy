## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Correct bootanimation size for the screen
TARGET_BOOTANIMATION_NAME := vertical-320x480

# Release name
PRODUCT_RELEASE_NAME := brandy

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/brandy/brandy.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := brandy
PRODUCT_NAME := cm_brandy
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := brandy
PRODUCT_MANUFACTURER := TCT

PRODUCT_BUILD_PROP_OVERRIDES += \
	PRODUCT_NAME=one_touch_990_ALRU \
	BUILD_FINGERPRINT=TCT/one_touch_990_ALRU/one_touch_990_gsm:2.3.4/GINGERBREAD/v5H6-0:user/release-keys \
	PRIVATE_BUILD_DESC="one_touch_990_ALRU-user 2.3.4 GINGERBREAD v5H6-0 release-keys"
