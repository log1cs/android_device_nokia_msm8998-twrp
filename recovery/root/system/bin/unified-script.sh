#!/system/bin/sh
# This script is needed to automatically set device props.

load_NB1()
{
    resetprop "ro.product.name" "Nokia 8"
    resetprop "ro.display.series" "Nokia 8"
    resetprop "ro.product.model" "TA-1004"
    resetprop "ro.build.product" "NLA"
    resetprop "ro.product.device" "NLA"
    resetprop "ro.product.vendor.device" "NLA"
}

load_A1N()
{
    resetprop "ro.product.name" "Nokia 8 Sirocco"
    resetprop "ro.display.series" "Nokia 8 Sirocco"
    resetprop "ro.product.model" "TA-1005"
    resetprop "ro.build.product" "A1N_sprout"
    resetprop "ro.product.device" "A1N_sprout"
    resetprop "ro.product.vendor.device" "A1N_sprout"
}

rf=$(getprop ro.boot.project_codename)
echo $rf

case $rf in
    "NB1")
        load_NB1
        ;;
    "A1N")
        load_A1N
        ;;
    *)
        load_NB1
        ;;
esac

exit 0
