TARGET_KERNEL_SOURCE := kernel/goldfish
TARGET_KERNEL_CONFIG := mokee_goldfish_armv7_defconfig

# Inherit MK common GSM stuff.
$(call inherit-product, vendor/mk/config/gsm.mk)

# Inherit MK common Phone stuff.
$(call inherit-product, vendor/mk/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/generic/goldfish/goldfish.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := mk_goldfish
PRODUCT_DEVICE := generic
PRODUCT_BRAND := MoKee OpenSource
PRODUCT_MODEL := Full MoKee OpenSource on Emulator
