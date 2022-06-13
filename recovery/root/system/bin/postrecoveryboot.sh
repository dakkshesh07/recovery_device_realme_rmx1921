load_RMX1921() {
	resetprop "ro.product.device" "RMX1921"
	resetprop "ro.product.product.device" "RMX1921"
	resetprop "ro.build.product" "RMX1921"
	resetprop "ro.product.name" "RMX1921"
	resetprop "ro.product.model" "RMX1921"
	resetprop "ro.product.product.model" "RMX1921"
	resetprop "ro.separate.soft" "19651"
	resetprop "ro.vendor.product.device.oem" "RMX1921"
}

load_RMX1921EU() {
	resetprop "ro.product.device" "RMX1921EU"
	resetprop "ro.product.product.device" "RMX1921EU"
	resetprop "ro.build.product" "RMX1921EU"
	resetprop "ro.product.name" "RMX1921EU"
	resetprop "ro.product.model" "RMX1921"
	resetprop "ro.product.product.model" "RMX1921"
	resetprop "ro.separate.soft" "19651"
	resetprop "ro.vendor.product.device.oem" "RMX1921"
}

sku=$(getprop ro.boot.product.hardware.sku)
if [ "$sku" = "nfc_ese" ] || [ "$sku" = "RMX1921EU" ] ; then
	load_RMX1921EU
else
	load_RMX1921
fi
resetprop "ro.build.date.utc" "1640000000"

exit 0
