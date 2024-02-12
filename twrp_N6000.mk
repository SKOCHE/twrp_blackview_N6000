#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common twrp stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit from N6000 device
$(call inherit-product, device/blackview/N6000/device.mk)

PRODUCT_DEVICE := N6000
PRODUCT_NAME := omni_N6000
PRODUCT_BRAND := Blackview
PRODUCT_MODEL := N6000
PRODUCT_MANUFACTURER := blackview

PRODUCT_GMS_CLIENTID_BASE := android-blackview

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="hal_mgvi_64_armv82-user 12 SP1A.210812.016 1703064338 release-keys"

BUILD_FINGERPRINT := Blackview/N6000_RU/N6000:12/SP1A.210812.016/1703064338:user/release-keys
