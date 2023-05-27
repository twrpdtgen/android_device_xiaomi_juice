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

# Inherit from juice device
$(call inherit-product, device/xiaomi/juice/device.mk)

PRODUCT_DEVICE := juice
PRODUCT_NAME := omni_juice
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := SM6115
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="twrp_juice-eng 127 SP2A.220405.004 eng.builde.20220717.152923 test-keys"

BUILD_FINGERPRINT := Xiaomi/twrp_juice/juice:127/SP2A.220405.004/builder07171528:eng/test-keys
