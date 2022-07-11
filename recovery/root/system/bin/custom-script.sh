#!/system/bin/sh
# This script is needed to automatically set device props.

load_RMX1921() 
{
      resetprop "ro.product.device" "RMX1921"
      resetprop "ro.product.product.device" "RMX1921"
      resetprop "ro.build.product" "RMX1921"
      resetprop "ro.product.name" "RMX1921"
      resetprop "ro.product.model" "RMX1921"      
      resetprop "ro.product.product.model" "RMX1921"
      resetprop "ro.separate.soft" "19651"
      resetprop "ro.vendor.product.device.oem" "RMX1921"
}

load_RMX1901()
{
      resetprop "ro.product.device" "RMX1901"
      resetprop "ro.product.product.device" "RMX1901"
      resetprop "ro.build.product" "RMX1901"
      resetprop "ro.product.name" "RMX1901"      
      resetprop "ro.product.model" "RMX1901"
      resetprop "ro.product.product.model" "RMX1901"
      resetprop "ro.separate.soft" "19605"
      resetprop "ro.vendor.product.device.oem" "RMX1901"
}

load_RMX1901CN()
{
      resetprop "ro.product.device" "RMX1901CN"
      resetprop "ro.product.product.device" "RMX1901CN"
      resetprop "ro.build.product" "RMX1901CN"
      resetprop "ro.product.name" "RMX1901CN"      
      resetprop "ro.product.model" "RMX1901"
      resetprop "ro.product.product.model" "RMX1901"
      resetprop "ro.separate.soft" "19601"
      resetprop "ro.vendor.product.device.oem" "RMX1901"
}

load_RMX1851() 
{
      resetprop "ro.product.device" "RMX1851"
      resetprop "ro.product.product.device" "RMX1851"
      resetprop "ro.build.product" "RMX1851"
      resetprop "ro.product.name" "RMX1851"       
      resetprop "ro.product.model" "RMX1851"
      resetprop "ro.product.product.model" "RMX1851"
      resetprop "ro.separate.soft" "18621"
      resetprop "ro.vendor.product.device.oem" "RMX1851"      
}

load_RMX1971() 
{
      resetprop "ro.product.device" "RMX1971"
      resetprop "ro.product.product.device" "RMX1971"
      resetprop "ro.build.product" "RMX1971"
      resetprop "ro.product.name" "RMX1971"      
      resetprop "ro.product.model" "RMX1971"
      resetprop "ro.product.product.model" "RMX1971"
      resetprop "ro.separate.soft" "19691"
      resetprop "ro.vendor.product.device.oem" "RMX1971"   
}

load_RMX1971CN() 
{
      resetprop "ro.product.device" "RMX1971CN"
      resetprop "ro.product.product.device" "RMX1971CN"
      resetprop "ro.build.product" "RMX1971CN"
      resetprop "ro.product.name" "RMX1971CN"
      resetprop "ro.product.model" "RMX1971"
      resetprop "ro.product.product.model" "RMX1971"
      resetprop "ro.separate.soft" "19691"      
      resetprop "ro.vendor.product.device.oem" "RMX1971"      
}
		

prjName=$(cat /proc/oppoVersion/prjName)
echo "Running unifying script with $prjName" >> /tmp/recovery.log

case $prjName in
     "19651")
         load_RMX1921
       ;;
     "19605")
         load_RMX1901
              ;;
     "19601")
          load_RMX1901CN
              ;;
     "18621")
          load_RMX1851
              ;;          
     "19691")
          load_RMX1971
              ;;
esac

exit 0      
