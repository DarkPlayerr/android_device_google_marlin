# Boot animation
TARGET_SCREEN_HEIGHT := 2560
TARGET_SCREEN_WIDTH := 1440

# Inherit some common RessurectionRemix stuff.
$(call inherit-product, vendor/rr/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_marlin.mk)

# PixelExperience Gapps
TARGET_GAPPS_ARCH := arm64

-include device/google/marlin/marlin/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := rr_marlin
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel XL
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false
RR_BUILDTYPE := Official
TARGET_FACE_UNLOCK_SUPPORT := true

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=marlin \
    PRIVATE_BUILD_DESC="marlin-user 8.1.0 OPM1.171019.021 4565141 release-keys"

BUILD_FINGERPRINT := google/marlin/marlin:8.1.0/OPM1.171019.021/4565141:user/release-keys

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)
