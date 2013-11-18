# Inherit AOSP device configuration for dogo.
$(call inherit-product, device/sony/dogo/full_togari.mk)

# Inherit common product files.
$(call inherit-product, vendor/xylon/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/xylon/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xylon_dogo
PRODUCT_DEVICE := dogo

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C5503 BUILD_FINGERPRINT=Sony/C5503_1270-6697/C5503:4.2.2/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C5503-user 4.2.2 10.3.A.0.423 WP5_rg test-keys"

# Copy prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf \
