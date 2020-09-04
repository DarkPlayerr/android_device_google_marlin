# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common ionOS stuff.
$(call inherit-product, vendor/ion/config/common_full_phone.mk)

TARGET_BOOT_ANIMATION_RES := 1440
TARGET_GAPPS_ARCH := arm64
ION_BUILD_TYPE := OFFICIAL
ION_RELEASE_TYPE := Release

PRODUCT_PROPERTY_OVERRIDES += \
ro.ion.maintainer = "DarkPlayer"

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

-include device/google/marlin/marlin/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := ion_marlin
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:8.1.0/OPM1.171019.021/4565141:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)