# Inherit AOSP device configuration for togari.
$(call inherit-product, device/sony/togari/full_togari.mk)

# Inherit common product files.
$(call inherit-product, vendor/xylon/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/xylon/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xylon_togari
PRODUCT_DEVICE := togari

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6833 BUILD_FINGERPRINT=Sony/C6833_1274-8613/C6833:4.2.2/14.1.B.1.526/8bl_jw:user/release-keys PRIVATE_BUILD_DESC="C6833-user 4.2.2 14.1.B.1.526 8bl_jw test-keys"

# Copy prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf \
