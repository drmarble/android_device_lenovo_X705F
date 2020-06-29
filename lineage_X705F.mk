#
# Copyright (C) 2018 The Android Open-Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Boot Animation
TARGET_SCREEN_HEIGHT := 1200
TARGET_SCREEN_WIDTH := 1920

# Inherit some common AOSP stuff
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit some device specific stuff
$(call inherit-product, device/lenovo/X705F/device.mk)

# Define the shipping api level
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Allow building otatools
TARGET_FORCE_OTA_PACKAGE := true

TARGET_OTA_ASSERT_DEVICE := X705,X705F,X705L

PRODUCT_NAME := lineage_X705F
PRODUCT_DEVICE := X705F
PRODUCT_MANUFACTURER := LENOVO
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-X705F

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="tab5_p10_row_wifi-user 9 PKQ1.190319.001 TB-X705F_U release-keys" \
    PRODUCT_NAME="LenovoTB-X705F" \
    TARGET_DEVICE="X705F"

BUILD_FINGERPRINT := Lenovo/LenovoTB-X705F/X705F:9/PKQ1.190319.001/S210068_190904_ROW:user/release-keys
