#
# Copyright (C) 2019 The Android Open-Source Project
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

TARGET_BOARD_PLATFORM := sdm710
USES_DEVICE_GOOGLE_B4S4 := true
TARGET_NO_BOOTLOADER := true

TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-2a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a75

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv8-a
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a75

TARGET_BOARD_COMMON_PATH := device/google/bonito/sdm710

BOARD_KERNEL_CMDLINE += console=ttyMSM0,115200n8 androidboot.console=ttyMSM0 printk.devkmsg=on
BOARD_KERNEL_CMDLINE += msm_rtb.filter=0x237
BOARD_KERNEL_CMDLINE += ehci-hcd.park=3
BOARD_KERNEL_CMDLINE += service_locator.enable=1
BOARD_KERNEL_CMDLINE += firmware_class.path=/vendor/firmware
BOARD_KERNEL_CMDLINE += cgroup.memory=nokmem
BOARD_KERNEL_CMDLINE += lpm_levels.sleep_disabled=1
BOARD_KERNEL_CMDLINE += androidboot.fastboot=1
BOARD_KERNEL_CMDLINE += usbcore.autosuspend=7

TARGET_KERNEL_CROSS_COMPILE_PREFIX := aarch64-linux-android-
BOARD_KERNEL_IMAGE_NAME := Image.lz4-dtb
TARGET_KERNEL_SOURCE := kernel/google/bonito
TARGET_KERNEL_CONFIG := bonito_defconfig

BOARD_KERNEL_BASE        := 0x00000000
BOARD_KERNEL_PAGESIZE    := 4096
BOARD_KERNEL_OFFSET      := 0x80000
BOARD_KERNEL_TAGS_OFFSET := 0x02500000
BOARD_RAMDISK_OFFSET     := 0x02700000
BOARD_MKBOOTIMG_ARGS     := --kernel_offset $(BOARD_KERNEL_OFFSET) --ramdisk_offset $(BOARD_RAMDISK_OFFSET) --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)
BOARD_KERNEL_TAGS_OFFSET := 0x01E00000
BOARD_RAMDISK_OFFSET     := 0x02000000

BOARD_BOOT_HEADER_VERSION := 1
BOARD_MKBOOTIMG_ARGS += --header_version $(BOARD_BOOT_HEADER_VERSION)

TARGET_NO_BOOTLOADER ?= true
TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := true
BOARD_USES_RECOVERY_AS_BOOT := true
BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
BOARD_USES_METADATA_PARTITION := true

# Partitions (listed in the file) to be wiped under recovery.
TARGET_RECOVERY_WIPE := device/google/bonito/recovery.wipe
TARGET_RECOVERY_FSTAB := device/google/bonito/fstab.hardware

TARGET_RECOVERY_UI_LIB := \
  librecovery_ui_bonito \
  libnos_citadel_for_recovery \
  libnos_for_recovery

TARGET_RECOVERY_TWRP_LIB := \
  librecovery_twrp_bonito \
  libnos_citadel_for_recovery \
  libnos_for_recovery liblog

# Partitions
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3267362816
BOARD_SYSTEMIMAGE_JOURNAL_SIZE := 0
BOARD_SYSTEMIMAGE_EXTFS_INODE_COUNT := 4096
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x04000000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_COPY_OUT_VENDOR := vendor

BOARD_ROOT_EXTRA_SYMLINKS := /mnt/vendor/persist:/persist
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/firmware_mnt:/firmware
BOARD_ROOT_EXTRA_SYMLINKS += /vendor/dsp:/dsp

QCOM_BOARD_PLATFORMS += sdm710

# Use MKE2FS to create EXT4 images
TARGET_USES_MKE2FS := true

# TWRP
TW_THEME := portrait_hdpi
BOARD_SUPPRESS_SECURE_ERASE := true
TARGET_RECOVERY_QCOM_RTC_FIX := true
TW_INPUT_BLACKLIST := "hbtp_vm"
TW_DEFAULT_BRIGHTNESS := "80"
TW_INCLUDE_CRYPTO := true
AB_OTA_UPDATER := true
TW_EXCLUDE_DEFAULT_USB_INIT := true
TARGET_USES_LOGD := true
TWRP_INCLUDE_LOGCAT := true
TW_NO_HAPTICS := true
PLATFORM_SECURITY_PATCH := 2025-12-31
TARGET_RECOVERY_PIXEL_FORMAT := RGBX_8888
TW_USE_TOOLBOX := true
LZMA_RAMDISK_TARGETS := recovery,boot
