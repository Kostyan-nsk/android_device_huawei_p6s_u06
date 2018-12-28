#
# Copyright (C) 2015 The CyanogenMod Project
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

$(call inherit-product, frameworks/native/build/phone-xhdpi-2048-dalvik-heap.mk)
$(call inherit-product, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Ramdisk
PRODUCT_COPY_FILES += \
  $(call find-copy-subdir-files,*,$(LOCAL_PATH)/rootdir,root)

# Screen density
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xhdpi

PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/recovery/twrp.fstab:recovery/root/etc/twrp.fstab

PRODUCT_PROPERTY_OVERRIDES += \
	persist.sys.usb.config=mtp \
	ro.dual.sim.phone=true \
	persist.radio.multisim.config=dsda \
	persist.sys.dualcards=true \
	persist.dsds.enabled=true
#	ro.multi.rild=true \
#	ro.config.hw_dsda=true \
#	ro.config.dsds_mode=umts_gsm

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=P6S-U06 \
    TARGET_DEVICE=hwp6s-u06
