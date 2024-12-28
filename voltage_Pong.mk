#
# Copyright (C) 2023 The voltageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from Pong device
$(call inherit-product, device/nothing/Pong/device.mk)

# Inherit some common voltage stuff.
$(call inherit-product, vendor/voltage/config/common_full_phone.mk)

PRODUCT_NAME := voltage_Pong
PRODUCT_DEVICE := Pong
PRODUCT_MANUFACTURER := nothing
PRODUCT_BRAND := Nothing
PRODUCT_MODEL := A065

PRODUCT_CHARACTERISTICS := nosdcard

PRODUCT_GMS_CLIENTID_BASE := android-nothing

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="Pong-user 12 SKQ1.240903.001 2412070124 release-keys" \
    BuildFingerprint=Nothing/Pong/Pong:12/SKQ1.240903.001/2412070124:user/release-keys \
    DeviceName=Pong \
    DeviceProduct=A065 \
    SystemDevice=Pong \
    SystemName=Pong

# UDFPS
#TARGET_HAS_UDFPS := true

# UDFPS Animations
EXTRA_UDFPS_ANIMATIONS := true

# Boot Animation Resolution
TARGET_BOOT_ANIMATION_RES := 2160
