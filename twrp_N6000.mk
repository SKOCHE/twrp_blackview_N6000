#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 The Team Win Recovery Project
#

# Configure base.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)

# Configure core_64_bit.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Configure launch_with_vendor_ramdisk.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/virtual_ab_ota/launch_with_vendor_ramdisk.mk)

# Configure emulated_storage.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Configure twrp config common.mk
$(call inherit-product, vendor/twrp/config/common.mk)

# Device specific configs
$(call inherit-product, device/blackview/N6000/device.mk)

# Device identifier
PRODUCT_DEVICE := N6000
PRODUCT_NAME := twrp_N6000
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := N6000
PRODUCT_MANUFACTURER := Blackview

PRODUCT_GMS_CLIENTID_BASE := android-blackview
