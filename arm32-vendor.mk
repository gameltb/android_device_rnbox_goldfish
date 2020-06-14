PRODUCT_KERNEL_VERSION := 4.4

PRODUCT_PROPERTY_OVERRIDES += \
       vendor.rild.libpath=/vendor/lib/libgoldfish-ril.so

# Note: the following lines need to stay at the beginning so that it can
# take priority  and override the rules it inherit from other mk files
# see copy file rules in core/Makefile
PRODUCT_SDK_ADDON_COPY_FILES += \
    device/rnbox/goldfish/data/etc/advancedFeatures.ini.arm:images/armeabi-v7a/advancedFeatures.ini \
    prebuilts/qemu-kernel/arm64/$(PRODUCT_KERNEL_VERSION)/kernel-qemu2:images/armeabi-v7a/kernel-ranchu-64
PRODUCT_COPY_FILES += \
    device/rnbox/goldfish/fstab.ranchu.initrd.arm:$(TARGET_COPY_OUT_RAMDISK)/fstab.ranchu \
    device/rnbox/goldfish/manifest-arm.xml:$(TARGET_COPY_OUT_VENDOR)/manifest.xml \
    device/rnbox/goldfish/data/etc/advancedFeatures.ini.arm:advancedFeatures.ini \
    prebuilts/qemu-kernel/arm64/$(PRODUCT_KERNEL_VERSION)/kernel-qemu2:kernel-ranchu-64 \
    device/rnbox/goldfish/fstab.ranchu.arm:$(TARGET_COPY_OUT_VENDOR)/etc/fstab.ranchu

EMULATOR_VENDOR_NO_GNSS := true
