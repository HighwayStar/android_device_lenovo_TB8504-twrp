#
# Copyright 2019 The Android Open Source Project
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
PRODUCT_RELEASE_NAME := TB8504

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit device configuration
$(call inherit-product, device/lenovo/TB8504/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := omni_TB8504
PRODUCT_DEVICE := TB8504
PRODUCT_BRAND := Lenovo
PRODUCT_MODEL := Lenovo TB-8504X
PRODUCT_MANUFACTURER := Lenovo

PRODUCT_GMS_CLIENTID_BASE := android-lenovo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="msm8937_64-user 8.1.0 OPM1.171019.019 7 release-keys" \
    TARGET_DEVICE="TB-8504X"

BUILD_FINGERPRINT := Lenovo/TB-8504X/TB-8504X:8.1.0/OPM1.171019.019/8504X_S001031_191204_ROW:user/release-keys
