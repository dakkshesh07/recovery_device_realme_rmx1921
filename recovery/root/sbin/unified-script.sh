#!/system/bin/sh
# This script is needed to automatically set device props.


load_rmx1921eu()
{
    resetprop "ro.product.device" "RMX1921EU"
    resetprop "ro.product.product.device" "RMX1921EU"
    resetprop "ro.build.product" "RMX1921EU"
    resetprop "ro.product.name" "RMX1921EU"
    resetprop "ro.product.model" "RMX1921EU"   
    resetprop "ro.product.product.model" "RMX1921EU"
}

load_rmx1921()
{
    resetprop "ro.product.device" "RMX1921"
    resetprop "ro.product.product.device" "RMX1921"
    resetprop "ro.build.product" "RMX1921"
    resetprop "ro.product.name" "RMX1921"
    resetprop "ro.product.model" "RMX1921"   
    resetprop "ro.product.product.model" "RMX1921"
}


project=$(getprop ro.boot.product.hardware.sku)
echo $project

case $project in
    "RMX1921")
        load_rmx1921
        ;;
    *)
        load_rmx1921eu
        ;;
esac

exit 0