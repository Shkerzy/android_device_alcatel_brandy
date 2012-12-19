# Copyright (c) 2009, Code Aurora Forum.
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

#
# BoardConfig.mk
#
# Product-specific compile-time definitions.
#

TARGET_NO_BOOTLOADER := true
TARGET_NO_KERNEL := false
TARGET_NO_RADIOIMAGE := true
TARGET_NO_RECOVERY := false

TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOOTLOADER_BOARD_NAME := brandy

BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true
TARGET_PROVIDES_LIBRIL := true

BOARD_AVOID_DRAW_TEXTURE_EXTENSION := true
TARGET_DO_NOT_SETS_CAN_DRAW := true

USE_CAMERA_STUB := false
BOARD_USE_FROYO_LIBCAMERA := true

BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
BOARD_USE_QCOM_PMEM := true

BOARD_USES_ADRENO_200 := true
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

BOARD_KERNEL_BASE    := 0x13600000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := mem=458M console=ttyMSM2,115200n8 androidboot.hardware=qcom
BOARD_EGL_CFG := device/alcatel/brandy/egl.cfg

TARGET_PREBUILT_KERNEL := device/alcatel/brandy/kernel

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x005C0000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0D200000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x09E60000
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x03C00000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

JS_ENGINE :=v8
HTTP := chrome
WITH_JIT := true
TARGET_WEBKIT_USE_MORE_MEMORY := true
ENABLE_GIF_ANIMATION := true

BOARD_VENDOR_USE_AKMD := akm8975

BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
WITH_A2DP := true

BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := brandy
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE

TARGET_SPECIFIC_HEADER_PATH := device/alcatel/brandy/include

# Wifi related defines
BOARD_HAVE_WIFI := true
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/wlan/broadcom/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/wlan/broadcom/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/wlan/broadcom/fw_bcm4329.bin nvram_path=/system/wlan/broadcom/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "bcm4329"
WIFI_SDIO_IF_DRIVER_MODULE_ARG := ""

DISABLE_DEXPREOPT := true
