#!/system/bin/sh

FP_ID=$(cat /proc/fp_id)

# setprop *boot* property because we dont like resetting it
# ro.build.product overrides to support non-unified custom ROMs
# ro.product.product.device overrides to support realme ui 1 flash

if grep -q androidboot.prjname /proc/cmdline; then
    echo "custom-script: Detected realme UI 2 firmware" > /tmp/recovery.log
    resetprop ro.device.latest_fw true
else
    echo "custom-script: Detected realme UI 1 firmware" > /tmp/recovery.log
    resetprop ro.device.latest_fw false
fi

setprop ro.boot.prjname 19651
resetprop ro.build.product RMX1921
resetprop ro.product.product.device $(getprop ro.build.product)
