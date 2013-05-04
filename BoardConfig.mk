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

# CPU
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv6-vfp

# Target and board properties
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := brandy
TARGET_SPECIFIC_HEADER_PATH := device/alcatel/brandy/include

BOARD_EGL_CFG := device/alcatel/brandy/egl.cfg

# Kernel
BOARD_KERNEL_CMDLINE := mem=458M console=ttyMSM2,115200n8 androidboot.hardware=brandy
BOARD_KERNEL_BASE := 0x13600000
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/alcatel/brandy/kernel

# Audio
BOARD_USES_GENERIC_AUDIO := false
TARGET_PROVIDES_LIBAUDIO := true

# RIL
TARGET_PROVIDES_LIBRIL := true

# Camera
USE_CAMERA_STUB := false
BOARD_USE_CAF_LIBCAMERA := true
BOARD_USE_CAF_LIBCAMERA_GB_REL := true
BOARD_CAMERA_USE_GETBUFFERINFO := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
WITH_A2DP := true

# Wifi
WPA_SUPPLICANT_VERSION := VER_0_6_X
BOARD_WPA_SUPPLICANT_DRIVER := WEXT
BOARD_WLAN_DEVICE := bcm4329
WIFI_DRIVER_MODULE_PATH := "/system/lib/modules/bcm4329.ko"
WIFI_DRIVER_FW_STA_PATH := "/system/etc/wifi/fw_bcm4329.bin"
WIFI_DRIVER_FW_AP_PATH := "/system/etc/wifi/fw_bcm4329_apsta.bin"
WIFI_DRIVER_MODULE_ARG := "firmware_path=/system/etc/wifi/fw_bcm4329.bin nvram_path=/system/etc/wifi/nvram.txt"
WIFI_DRIVER_MODULE_NAME := "bcm4329"
WIFI_EXT_MODULE_PATH := "/system/lib/modules/librasdioif.ko"
WIFI_EXT_MODULE_NAME := "librasdioif"

# FM
BOARD_HAVE_FM_RADIO := true
BOARD_GLOBAL_CFLAGS += -DHAVE_FM_RADIO

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := brandy
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Graphics
TARGET_LIBAGL_USE_GRALLOC_COPYBITS := true
TARGET_DO_NOT_SETS_CAN_DRAW := true

# Browser
JS_ENGINE := v8
WITH_JIT := true
ENABLE_JSC_JIT := true

DISABLE_DEXPREOPT := true

BOARD_USE_USB_MASS_STORAGE_SWITCH := true

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
BOARD_CACHEIMAGE_PARTITION_SIZE := 0x03C00000
BOARD_FLASH_BLOCK_SIZE := 131072 # (BOARD_KERNEL_PAGESIZE * 64)

# Recovery
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/alcatel/brandy/recovery/recovery_ui.c
TARGET_RECOVERY_INITRC := device/alcatel/brandy/recovery/init.rc
BOARD_UMS_LUNFILE := "/sys/devices/platform/usb_mass_storage/lun0/file"
