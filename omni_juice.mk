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
PRODUCT_MODEL := juice
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="aospa_juice-user 13 TKQ1.230420.001 eng.jake.20230510.181120 release-keys"

BUILD_FINGERPRINT := Xiaomi/aospa_juice/juice:13/TKQ1.230420.001/jake05101809:user/release-keys
