#
# Copyright (C) 2011 The Android Open-Source Project
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

# This variable is set first, so it can be overridden
# by BoardConfigVendor.mk
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alcatel/brandy/BoardConfigVendor.mk

# CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7x27
TARGET_BOOTLOADER_BOARD_NAME := brandy
TARGET_SPECIFIC_HEADER_PATH := device/alcatel/brandy/include

BOARD_KERNEL_CMDLINE := mem=458M console=ttyMSM2,115200n8 androidboot.hardware=brandy
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 2048

# # cat /proc/mtd
# dev:     size   erasesize  name
# mtd0:  005c0000 00020000 "boot"
# mtd1:  03c00000 00020000 "cache"
# mtd2:  00500000 00020000 "recovery"
# mtd3:  000c0000 00020000 "splash"
# mtd4:  00040000 00020000 "misc"
# mtd5:  05f00000 00020000 "system"
# mtd6:  07300000 00020000 "custpack"
# mtd7:  09e60000 00020000 "userdata"
# mtd8:  00080000 00020000 "securo"
# mtd9:  00080000 00020000 "studypara"
# mtd10: 00080000 00020000 "tracability"
# mtd11: 000a0000 00020000 "tuningpara"
# mtd12: 1bae0000 00020000 ""
# mtd13: 00040000 00020000 "FOTAFLAG"
# mtd14: 01b40000 00020000 "FOTA"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x005C0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0D200000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09E60000
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_PREBUILT_KERNEL := device/alcatel/brandy/kernel
