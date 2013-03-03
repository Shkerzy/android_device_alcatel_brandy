ifeq ($(TARGET_BOOTLOADER_BOARD_NAME),brandy)
include $(call all-makefiles-under,$(call my-dir))
endif
