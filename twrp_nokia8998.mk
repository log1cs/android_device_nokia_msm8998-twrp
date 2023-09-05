#
# Copyright 2017 - 2023 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := nokia8998

DEVICE_PATH := device/nokia/$(PRODUCT_RELEASE_NAME)

# Inherit from nokia8998 device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := $(PRODUCT_RELEASE_NAME)
PRODUCT_NAME := twrp_$(PRODUCT_RELEASE_NAME)
PRODUCT_BRAND := Nokia
PRODUCT_MODEL := Nokia 8 / Sirocco
PRODUCT_MANUFACTURER := HMD Global

# Use A1N build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="A1N_00WW_FIH-user 10 QKQ1.190828.002 00WW_5_14L release-keys"

BUILD_FINGERPRINT := Nokia/Avenger_00WW/A1N_sprout:10/QKQ1.190828.002/00WW_5_120:user/release-keys