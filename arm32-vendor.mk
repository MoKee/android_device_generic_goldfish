
PRODUCT_PROPERTY_OVERRIDES += \
       vendor.rild.libpath=/vendor/lib/libgoldfish-ril.so

# Note: the following lines need to stay at the beginning so that it can
# take priority  and override the rules it inherit from other mk files
# see copy file rules in core/Makefile
PRODUCT_COPY_FILES += \
    device/generic/goldfish/manifest-arm.xml:$(TARGET_COPY_OUT_VENDOR)/manifest.xml \
    development/sys-img/advancedFeatures.ini.arm:advancedFeatures.ini \
    prebuilts/qemu-kernel/arm64/4.4/kernel-qemu2:kernel-ranchu-64 \
    device/generic/goldfish/fstab.ranchu.arm:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ranchu
PRODUCT_SDK_ADDON_COPY_FILES += \
    development/sys-img/advancedFeatures.ini.arm:images/armeabi-v7a/advancedFeatures.ini \
    prebuilts/qemu-kernel/arm64/4.4/kernel-qemu2:images/armeabi-v7a/kernel-ranchu-64

EMULATOR_VENDOR_NO_GNSS := true
