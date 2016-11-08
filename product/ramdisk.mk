# Ramdisk
PRODUCT_PACKAGES += \
    $(LOCAL_PATH)/rootdir/etc/fstab.mt6755:root/fstab.mt6755 \
    $(LOCAL_PATH)/rootdir/etc/init.recovery.mt6755.rc:root/init.recovery.mt6755.rc

# F2FS
PRODUCT_PACKAGES += \
    mkfs.f2fs \
    fsck.f2fs \
    fibmap.f2fs
 
