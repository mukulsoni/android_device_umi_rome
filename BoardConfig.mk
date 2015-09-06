USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/alps/k05ts_a/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := mt6753
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv8-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

TARGET_BOOTLOADER_BOARD_NAME := k05ts_a

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_BASE := 0x40078000
#extracted from stock recovery
BOARD_KERNEL_PAGESIZE := 2048

#extracted from /proc/partinfo
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16777216 
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2147483648 
BOARD_USERDATAIMAGE_PARTITION_SIZE := 12529958912 
BOARD_CACHEIMAGE_PARTITION_SIZE := 444596224
#pagesize * 64
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTING_ARGS := --base 0x40078000 --pagesize 2048 --kernel_offset 0x00008000 --ramdisk_offset 0x03f88000 --tags_offset 0x0df88000 --board Auxus_PRIME_201 --cmdline bootopt=64S3,32N1,32N1 

TARGET_PREBUILT_KERNEL := $(LOCAL_PATH)/prebuilt/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
