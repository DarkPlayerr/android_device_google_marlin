# Common board config for marlin, sailfish

# Build vendor image
BOARD_VENDORIMAGE_PARTITION_SIZE := 314572800
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Kernel
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_HEADER_ARCH := arm64
TARGET_KERNEL_CLANG_COMPILE := true
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_COMPILE_WITH_MSM_KERNEL := true
TARGET_KERNEL_CONFIG := NeutrinoKernel_defconfig
TARGET_KERNEL_SOURCE := kernel/google/marlin

BUILD_BROKEN_DUP_RULES := true

# Wi-Fi
WIFI_AVOID_IFACE_RESET_MAC_CHANGE := true
