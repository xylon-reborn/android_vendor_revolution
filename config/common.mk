PRODUCT_BRAND ?= Xylon

# bootanimation
PRODUCT_COPY_FILES += \
        vendor/xylon/prebuilt/bootanimation.zip:system/media/bootanimation.zip

# general properties
PRODUCT_PROPERTIES_OVERRIDE += \
	keyguard.no_require_sim=true \
	ro.url.legal=http://www.google.com/intl/%s/mobile/android/basic/phone-legal.html \
	ro.com.google.clientidbase=android-google \
	ro.com.android.wifi-watchlist=GoogleGuest \
	ro.setupwizard.enterprise_mode=1 \
	ro.com.android.dateformat=MM-dd-yyyy \
	ro.com.android.dataroaming=false \
	persist.sys.root_access=1

# enable ADB authentication if not on eng build
ifneq ($(TARGET_BUILD_VARIANT),eng)
ADDITIONAL_DEFAULT_PROPERTIES += ro.adb.secure=1
endif

# Backup Tool
PRODUCT_COPY_FILES += \
    vendor/xylon/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/xylon/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/xylon/prebuilt/bin/50-xy.sh:system/addon.d/50-xy.sh \
    vendor/xylon/prebuilt/bin/blacklist:system/addon.d/blacklist

# Build.prop Modifications, Tweaks, blah.
include vendor/xylon/config/buildprop_common.mk
	
# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# NFC
PRODUCT_COPY_FILES += \
    vendor/xylon/config/permissions/com.xylon.android.xml:system/etc/permissions/com.xylon.android.xml \
    vendor/xylon/config/permissions/com.xylon.nfc.enhanced.xml:system/etc/permissions/com.xylon.nfc.enhanced.xml

# SuperSU and sysrw
PRODUCT_COPY_FILES += \
    vendor/xylon/prebuilt/xbin/sysrw:system/xbin/sysrw \
    vendor/xylon/prebuilt/xbin/sysro:system/xbin/sysro
	
# Additional packages
-include vendor/xylon/config/packages.mk

# Versioning
-include vendor/xylon/config/version.mk

# Add our overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/xylon/overlay/common
