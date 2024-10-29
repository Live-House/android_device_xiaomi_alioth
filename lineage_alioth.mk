#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# risingOS Building Flags
PRODUCT_BUILD_PROP_OVERRIDES += \
    RISING_CHIPSET="Snapdragon 870 5G" \
    RISING_MAINTAINER="bxySo"

TARGET_ENABLE_BLUR := true
TARGET_PREBUILT_LAWNCHAIR_LAUNCHER := true

# risingOS GMS Build Flags
WITH_GMS := true
TARGET_CORE_GMS := true
TARGET_CORE_GMS_EXTRAS := true
TARGET_DEFAULT_PIXEL_LAUNCHER := true

# Inherit from alioth device
$(call inherit-product, device/xiaomi/alioth/device.mk)

PRODUCT_NAME := lineage_alioth
PRODUCT_DEVICE := alioth
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_BRAND := POCO
PRODUCT_MODEL := POCO F3

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

BUILD_FINGERPRINT := POCO/alioth_global/alioth:13/TKQ1.221114.001/V816.0.2.0.TKHMIXM:user/release-keys
