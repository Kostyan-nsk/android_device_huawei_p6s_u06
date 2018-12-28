include device/huawei/hi6620oem-common/BoardConfigCommon.mk

TARGET_BOOTLOADER_BOARD_NAME := P6S-U06

# LEDs
TARGET_NO_BLUE_LED := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/huawei/p6s_u06/bluetooth

# Compass
AKMD_DEVICE_TYPE := 8963

# OTA
TARGET_OTA_ASSERT_DEVICE := hwp6s,hwp6s-u06,P6S-U06

# TWRP
DEVICE_RESOLUTION := 720x1280
TW_HAS_EXTERNAL := false
TW_NO_USB_STORAGE := true
