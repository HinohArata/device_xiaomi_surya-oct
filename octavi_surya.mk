#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from surya device
$(call inherit-product, device/xiaomi/surya/device.mk)

# Inherit some common Afterlife stuff.
$(call inherit-product, vendor/octavi/config/common_full_phone.mk)

# AfterLife flags
OCTAVI_BUILD_TYPE := COMMUNITY
OCTAVI_MAINTAINER := Skyy丨アラタ

# QuickTaps
TARGET_SUPPORTS_QUICK_TAP := true

# Bootanimation
TARGET_BOOT_ANIMATION_RES := 1080

# disable/enable blur support, default is false
TARGET_SUPPORTS_BLUR := true
TARGET_USES_BLUR := true

# Face Unlock
TARGET_FACE_UNLOCK_SUPPORTED := true

# Pixel Charger
USE_PIXEL_CHARGER := true

# Device Manufacture
PRODUCT_NAME := octavi_surya
PRODUCT_DEVICE := surya
PRODUCT_BRAND := POCO
PRODUCT_MODEL := M2007J20CG
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
