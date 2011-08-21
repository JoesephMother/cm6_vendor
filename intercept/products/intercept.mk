# Inherit AOSP device configuration for galaxy intercept.
$(call inherit-product, device/samsung/intercept/full_intercept.mk)

# Inherit some common cyanogenmod stuff.
$(call inherit-product, device/samsung/intercept/generic_intercept.mk)

#
# Setup device specific product configuration.
#
PRODUCT_NAME := intercept
PRODUCT_DEVICE := SPH-M910
PRODUCT_MODEL := SPH-M910
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_ID=FRG83 BUILD_DISPLAY_ID=FRG83 PRODUCT_NAME=SPH-M910 BUILD_FINGERPRINT=samsung/SPH-M910/SPH-M910/SPH-M910:2.2.1/FRG83/60505:user/release-keys TARGET_BUILD_TYPE=userdebug BUILD_VERSION_TAGS=release-keys
PRIVATE_BUILD_DESC="intercept-user 2.2.1 FRG83 60505 release-keys"

ifdef CYANOGEN_NIGHTLY
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6-$(shell date +%m%d%Y)-NIGHTLY-intercept
else
    PRODUCT_PROPERTY_OVERRIDES += \
        ro.modversion=CyanogenMod-6.1.1-intercept-alpha1
endif

