#!/system/bin/sh

if dd if=/dev/block/by-name/system bs=256k count=1 | strings | grep main_dynapart >/dev/null; then
    # Dynamic partitions
    echo "Dynamic partitions detected" >>/tmp/recovery.log
else
    # Non Dynamic partitions
    echo "Normal partitions detected" >>/tmp/recovery.log
    cp -fr /system/etc/recovery.fstab.nondynamic /system/etc/recovery.fstab
    cp -fr /system/etc/twrp.flags.nondynamic /system/etc/twrp.flags
    chmod 644 /system/etc/recovery.fstab
    chmod 644 /system/etc/twrp.flags
fi
