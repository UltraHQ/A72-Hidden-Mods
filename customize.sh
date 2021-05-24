# The safety checks
# Delete this file, if you still want to continue the installation
pda=$(get_file_prop /system/build.prop ro.build.PDA)
if [[ "$pda" != "A725FXXU1AUD2" ]]; then
    ui_print ""
    ui_print "---------------------~WARNING~---------------------"
    ui_print "It seems that you're not on the Android April Patch!"
    ui_print "For your safety, the installation was canceled"
    ui_print ""
    ui_print "If you want to overwrite this behaviour, delete the"
    ui_print "customize.sh file in the .zip of the module"
    ui_print "---------------------~WARNING~---------------------"
    ui_print ""
    abort
fi

sysch=$(get_file_prop /system/build.prop ro.product.system.model)
if [[ "$sysch" != "SM-A725F" ]]; then
    ui_print ""
    ui_print "---------------------~WARNING~---------------------"
    ui_print "It seems that you're not on the Galaxy A72!"
    ui_print "For your safety, the installation was canceled"
    ui_print ""
    ui_print "If you want to overwrite this behaviour, delete the"
    ui_print "customize.sh file in the .zip of the module"
    ui_print "---------------------~WARNING~---------------------"
    ui_print ""
    abort
fi

osver=$(get_file_prop /system/build.prop ro.build.version.release)
if [[ "$osver" != "11y" ]]; then
    ui_print ""
    ui_print "---------------------~WARNING~---------------------"
    ui_print "It seems that you're not on Android 11!"
    ui_print "For your safety, the installation was canceled"
    ui_print ""
    ui_print "If you want to overwrite this behaviour, delete the"
    ui_print "customize.sh file in the .zip of the module"
    ui_print "---------------------~WARNING~---------------------"
    ui_print ""
    abort
fi