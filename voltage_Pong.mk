#
# Copyright (C) 2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

PRODUCT_NAME := voltage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_SYSTEM_NAME := Pong
PRODUCT_SYSTEM_DEVICE := Pong

# UDFPS
TARGET_HAS_UDFPS := true

# UDFPS animations
EXTRA_UDFPS_ANIMATIONS := true

# Boot animation resolution
TARGET_BOOT_ANIMATION_RES := 2160

# Quick Tap
TARGET_SUPPORTS_QUICK_TAP := true

# Whether the package supports BLURS
TARGET_SUPPORTS_BLUR := true

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.230722.001 2408281751 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.230722.001/2408281751:user/release-keys \
    DeviceName=$(PRODUCT_SYSTEM_DEVICE) \
    DeviceProduct=$(PRODUCT_SYSTEM_NAME)
