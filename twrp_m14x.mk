#
# Copyright (C) 2024 The Android Open Source Project
# Copyright (C) 2024 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from common AOSP config
$(call inherit-product, $(SRC_TARGET_DIR)/product/base.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)

# Enable project quotas and casefolding for emulated storage without sdcardfs
$(call inherit-product, $(SRC_TARGET_DIR)/product/emulated_storage.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/m14x/device.mk)

PRODUCT_DEVICE := m14x
PRODUCT_NAME := twrp_m14x
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-M146B
PRODUCT_MANUFACTURER := samsung

# SHRP

SHRP_PATH := device/samsung/m14x
SHRP_MAINTAINER := kip
SHRP_DEVICE_CODE := m14x
SHRP_EDL_MODE := 1
SHRP_EXTERNAL := /external_sd
SHRP_INTERNAL := /sdcard
SHRP_OTG := /usb_otg
SHRP_FLASH := 1
SHRP_REC := /dev/block/by-name/recovery
SHRP_REC_TYPE := Treble
SHRP_DEVICE_TYPE := A/B
SHRP_DARK := true
SHRP_OFFICIAL := true
SHRP_EXPRESS := true