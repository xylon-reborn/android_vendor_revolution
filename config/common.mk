PRODUCT_BRAND ?= Revolution

# bootanimation
PRODUCT_COPY_FILES += \
        vendor/revolution/bootanimation.zip:system/media/bootanimation.zip

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
    vendor/revolution/prebuilt/bin/backuptool.sh:system/bin/backuptool.sh \
    vendor/revolution/prebuilt/bin/backuptool.functions:system/bin/backuptool.functions \
    vendor/revolution/prebuilt/bin/50-hosts.sh:system/addon.d/50-hosts.sh \
    vendor/revolution/prebuilt/bin/blacklist:system/addon.d/blacklist

# init.d support
PRODUCT_COPY_FILES += \
	vendor/revolution/prebuilt/bin/sysinit:system/bin/sysinit

# userinit support
PRODUCT_COPY_FILES += \
    vendor/revolution/prebuilt/etc/init.d/90userinit:system/etc/init.d/90userinit

# Init script file with revolution extras
PRODUCT_COPY_FILES += \
    vendor/revolution/prebuilt/etc/init.local.rc:root/init.revolution.rc

# Enable SIP and VoIP on all targets
PRODUCT_COPY_FILES += \
	frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml

# Additional packages
-include vendor/revolution/config/packages.mk

# Versioning
-include vendor/revolution/config/version.mk

# Add our overlays
PRODUCT_PACKAGE_OVERLAYS += vendor/revolution/overlay/common
