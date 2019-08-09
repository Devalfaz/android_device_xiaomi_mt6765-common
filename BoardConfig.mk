# Copyright (C) 2017-2019 The LineageOS Project
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

DEVICE_PATH := device/xiaomi/cactus

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a53

TARGET_BOARD_PLATFORM := mt6765

TARGET_KERNEL_ARCH := arm
BOARD_KERNEL_BASE := 0x40000000
BOARD_KERNEL_CMDLINE := bootopt=64S3,32S1,32S1 androidboot.selinux=permissive
BOARD_KERNEL_IMAGE_NAME := zImage-dtb
BOARD_KERNEL_PAGESIZE :=  2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x11b00000 --second_offset 0x00f00000 --tags_offset 0x07880000
TARGET_KERNEL_CONFIG := cactus_defconfig
TARGET_KERNEL_SOURCE := kernel/xiaomi/mt6765

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := mt6765
TARGET_NO_BOOTLOADER := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_BLUETOOTH_BDROID_HCILP_INCLUDED := 0
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Display
BOARD_EGL_CFG := $(DEVICE_PATH)/configs/egl.cfg

USE_OPENGL_RENDERER := true
TARGET_USES_HWC2 := true
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false

# Dex
ifeq ($(HOST_OS),linux)
  ifneq ($(TARGET_BUILD_VARIANT),eng)
    ifeq ($(WITH_DEXPREOPT),)
      WITH_DEXPREOPT := true
      WITH_DEXPREOPT_BOOT_IMG_AND_SYSTEM_SERVER_ONLY := true
    endif
  endif
endif

# Keystore
TARGET_PROVIDES_KEYMASTER := true

# Filesystem
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_COPY_OUT_VENDOR := vendor

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_PERSISTIMAGE_PARTITION_SIZE := 67108864
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864
BOARD_USERDATAIMAGE_PARTITION_SIZE := 25765043200
BOARD_VENDORIMAGE_PARTITION_SIZE :=  805306368

BOARD_BUILD_SYSTEM_ROOT_IMAGE := true
TARGET_FS_CONFIG_GEN := $(DEVICE_PATH)/config.fs
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# Recovery
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/fstab.mt6765

# Security patch level
VENDOR_SECURITY_PATCH := 2019-07-05

# Seccomp
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/configs/seccomp

# Treble
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true
PRODUCT_COMPATIBLE_PROPERTY_OVERRIDE := true
PRODUCT_FULL_TREBLE_OVERRIDE := true
PRODUCT_VENDOR_MOVE_ENABLED := true
