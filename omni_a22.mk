#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from a22 device
$(call inherit-product, device/samsung/a22/device.mk)

PRODUCT_DEVICE := a22
PRODUCT_NAME := omni_a22
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-A225M
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung-ss

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="a22ub-user 12 SP1A.210812.016 A225MUBU4CVK5 release-keys"

BUILD_FINGERPRINT := samsung/a22ub/a22:12/SP1A.210812.016/A225MUBU4CVK5:user/release-keys
