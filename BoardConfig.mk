# Copyright (C) 2007 The Android Open Source Project
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
# config.mk
#
# Product-specific compile-time definitions.
#

LOCAL_PATH:= $(call my-dir)

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).

TARGET_NO_BOOTLOADER := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := beni
TARGET_OTA_ASSERT_DEVICE := beni,GT-S5670

# Kernel
BOARD_KERNEL_CMDLINE :=
BOARD_KERNEL_BASE := 0x13600000 
BOARD_KERNEL_PAGESIZE := 4096 
BOARD_PAGE_SIZE := 0x00001000
BOARD_NAND_PAGE_SIZE := 4096 -s 128
#TARGET_KERNEL_CONFIG := beni_cm_rev00_defconfig
#TARGET_KERNEL_SOURCE := /home/dan/jb/kernel/

#twrp
DEVICE_RESOLUTION := 240x320
TW_NO_REBOOT_BOOTLOADER := true
TW_FLASH_FROM_STORAGE := true
BOARD_USES_BML_OVER_MTD := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGB_565"
TWRP_EVENT_LOGGING := true
TARGET_PREBUILT_RECOVERY_KERNEL := device/samsung/beni/kernel
#TARGET_PREBUILT_KERNEL := device/samsung/tass/kernel2
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_FSTAB := device/samsung/beni/twrp/recovery.fstab
TW_CUSTOM_POWER_BUTTON := 107
TW_ALWAYS_RMRF := true 
TW_HAS_DOWNLOAD_MODE := true
TW_BRIGHTNESS_PATH := "/sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness"
TW_MAX_BRIGHTNESS := 255

# Recovery
TARGET_RECOVERY_INITRC := device/samsung/beni/recovery/recovery.rc
#TARGET_RECOVERY_FSTAB := device/samsung/tass/recovery/recovery.fstab
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/beni/recovery/recovery_ui.c
BOARD_CUSTOM_GRAPHICS := ../../../device/samsung/beni/recovery/graphics.c
BOARD_BML_BOOT := "/dev/block/bml8"
BOARD_BML_RECOVERY := "/dev/block/bml9"
BOARD_RECOVERY_HANDLES_MOUNT := true
BOARD_LDPI_RECOVERY := true
BOARD_HAS_DOWNLOAD_MODE := true
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 8388608
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 219938816
BOARD_USERDATAIMAGE_PARTITION_SIZE := 190054400
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_CUSTOM_USB_CONTROLLER := ../../device/samsung/beni/UsbController.cpp
BOARD_LDPI_RECOVERY := true
BOARD_USE_CUSTOM_RECOVERY_FONT := "<font_7x16.h>"

# UMS
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/usb_mass_storage/lun0/file
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
BOARD_USE_USB_MASS_STORAGE_SWITCH := true

