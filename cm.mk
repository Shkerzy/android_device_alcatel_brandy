## Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release name
PRODUCT_RELEASE_NAME := brandy

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/alcatel/brandy/brandy.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := brandy
PRODUCT_NAME := cm_brandy
PRODUCT_BRAND := Alcatel
PRODUCT_MODEL := brandy
PRODUCT_MANUFACTURER := TCT
