# Inherit AOSP device configuration for honami.
$(call inherit-product, device/sony/honami/full_togari.mk)

# Inherit common product files.
$(call inherit-product, vendor/xylon/config/common.mk)

# Inherit GSM common stuff
$(call inherit-product, vendor/xylon/config/gsm.mk)

# Setup device specific product configuration.
PRODUCT_NAME := xylon_togari
PRODUCT_DEVICE := honami

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=C6903 BUILD_FINGERPRINT=Sony/C6903_1276-7948/C6903:4.2.2/14.1.G.1.526/8Xl-jw:user/release-keys PRIVATE_BUILD_DESC="C6903-user 4.2.2 14.1.G.1.526 8Xl-jw test-keys"

# Copy prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/hybrid_xxhdpi.conf:system/etc/beerbong/properties.conf \
