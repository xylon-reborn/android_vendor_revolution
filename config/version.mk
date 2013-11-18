## Xylon Version prop ##

# Let's make life easier
DATE = $(shell date -u +%Y%m%d)
XYLON_VERSION_MAJOR = 1
XYLON_VERSION_MINOR = 0
XYLON_VERSION_MAINTENANCE = 0

XYLON_VERSION := XYLON-4.4-v$(XYLON_VERSION_MAJOR).$(XYLON_VERSION_MINOR).$(XYLON_VERSION_MAINTENANCE)

# For System Information & Build zip name
PRODUCT_PROPERTY_OVERRIDES += \
    ro.xylon.version=$(XYLON_VERSION) \
    ro.modversion=$(TARGET_PRODUCT)_$(XYLON_VERSION_MAJOR).$(XYLON_VERSION_MINOR).$(XYLON_VERSION_MAINTENANCE)_$(DATE)


# Apply it to build.prop
PRODUCT_PROPERTY_OVERRIDES += \
	ro.modversion=XylonnROM-$(ROM_VERSION) \
	ro.xylon.version=$(ROM_VERSION)
