USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/micromax/a70/BoardConfigVendor.mk

TARGET_NO_BOOTLOADER := true
TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v6l
TARGET_CPU_ABI2 := armeabi
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_BOOTLOADER_BOARD_NAME := a70

BOARD_KERNEL_CMDLINE := mem=212M console=ttyMSM2 androidboot.hardware=qcom
BOARD_KERNEL_BASE := 0x00200000
BOARD_PAGE_SIZE := 0x00000800

# fix this up by examining /proc/mtd on a running device
#dev:    size   erasesize  name
#mtd0: 00500000 00020000 "boot"
#mtd1: 00080000 00020000 "panic"
#mtd2: 09100000 00020000 "system"
#mtd3: 05f00000 00020000 "cache"
#mtd4: 0be00000 00020000 "userdata"
#mtd5: 00500000 00020000 "recovery"
#mtd6: 00040000 00020000 "misc"

BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00500000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00500000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x09100000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x0be00000
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_UMS_LUNFILE := "/sys/devices/platform/msm_sdcc.1/mmc_host"

TARGET_PREBUILT_KERNEL := device/micromax/a70/kernel

BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
