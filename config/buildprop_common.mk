# Build.Prop Tweaks
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    ro.media.enc.jpeg.quality=100 \
    persist.sys.root_access=3

# Misc Files & init.d files
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/common/etc/init.local.rc:root/init.xylon.rc \
    vendor/xylon/prebuilt/common/bin/sysinit:system/bin/sysinit

# extras
PRODUCT_COPY_FILES +=  \
    vendor/xylon/prebuilt/common/etc/init.d/90userinit:system/etc/init.d/90userinit \
    vendor/xylon/prebuilt/common/etc/init.d/95zipalign:system/etc/init.d/95zipalign \
    vendor/xylon/prebuilt/common/bin/zipalign:system/bin/zipalign