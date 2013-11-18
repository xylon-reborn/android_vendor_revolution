# Inherit AOSP device configuration for yuga.
$(call inherit-product, device/sony/yuga/full_yuga.mk)

# Inherit common product files.
$(call inherit-product, vendor/xylon/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/xylon/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xylon_yuga
PRODUCT_DEVICE := yuga

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6603 BUILD_FINGERPRINT=Sony/C6603_1270-6697/C6603:4.2.2/10.3.A.0.423/WP5_rg:user/release-keys PRIVATE_BUILD_DESC="C6603-user 4.2.2 10.3.A.0.423 WP5_rg test-keys"

# Copy prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf \
