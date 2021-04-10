# Boot animation
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080
TARGET_BOOT_ANIMATION_RES := 1080

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/google/marlin/aosp_sailfish.mk)

-include device/google/marlin/sailfish/device-lineage.mk

## Device identifier. This must come after all inclusions
PRODUCT_NAME := lineage_sailfish
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel
TARGET_MANUFACTURER := Google
PRODUCT_RESTRICT_VENDOR_FILES := false

$(call inherit-product-if-exists, vendor/google/marlin/marlin-vendor.mk)

# Pixel 5 props, to pass CTS
TARGET_SYSTEM_PROP := device/google/marlin/sailfish/sailfish.prop
