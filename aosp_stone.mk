#
# Copyright (C) 2022 The LineageOS Project
# Copyright (C) 2022 The Project Elixir
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Project Elixir stuff.
$(call inherit-product, vendor/aosp/config/common_full_phone.mk)

# Inherit from stone device
$(call inherit-product, device/xiaomi/stone/device.mk)

# Elixir props
TARGET_SUPPORTS_BLUR := true
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_DISABLE_EPPE := true
TARGET_DEBLOAT := true
ELIXIR_MAINTAINER := ARIJIT-SAHA
ELIXIR_BUILD_TYPE := OFFICIAL
BUILD_USERNAME := ARIJIT-SAHA
BUILD_HOSTNAME := Elixir
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Charging Animation
TARGET_USE_PIXEL_CHARGER := true

# Use Prebuilt Kernel
PREBUILT_KERNEL := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := aosp_stone
PRODUCT_DEVICE := stone
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="husky-user 14 UQ1A.231205.015 11084887 release-keys"

BUILD_FINGERPRINT := "google/husky/husky:14/UQ1A.231205.015/11084887:user/release-keys"

