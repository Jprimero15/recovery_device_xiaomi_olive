#
# Copyright (C) 2022 OrangeFox Recovery Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from the common Open Source product configuration
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, build/target/product/core_64_bit.mk)

# Default device path for common folder
DEVICE_PATH := device/xiaomi/olive

# Platform version
PLATFORM_VERSION := 80
PLATFORM_SECURITY_PATCH := 2099-12-31

# Qcom standard decryption
PRODUCT_PACKAGES += \
    qcom_decrypt \
    qcom_decrypt_fbe

# Overrides
PRODUCT_PROPERTY_OVERRIDES += \
    ro.product.name=olive \
    ro.product.device=olive \
    ro.product.brand=xiaomi \
    ro.secure=1 \
    ro.adb.secure=0 \
    ro.vendor.build.security_patch=$(PLATFORM_SECURITY_PATCH)

# OEM otacert
PRODUCT_EXTRA_RECOVERY_KEYS += \
    vendor/recovery/security/miui
