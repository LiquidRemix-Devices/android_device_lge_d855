#
# Copyright 2014 The CyanogenMod Project
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

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from d855 device
$(call inherit-product, device/lge/d855/device.mk)

# Inherit some common LiquidRemix stuff.
$(call inherit-product, vendor/liquid/config/common_full_phone.mk)

# Set those variables here to overwrite the inherited values.
PRODUCT_DEVICE := d855
PRODUCT_NAME := liquid_d855
PRODUCT_BRAND := lge
PRODUCT_MODEL := LG-D855
PRODUCT_MANUFACTURER := LGE

PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="g3_global_com-user 6.0 MRA58K 1811508491752 release-keys"
BUILD_FINGERPRINT="lge/g3_global_com/g3:6.0/MRA58K/1811508491752:user/release-keys"

# Vendor security patch level
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lineage.build.vendor_security_patch=2016-08-01