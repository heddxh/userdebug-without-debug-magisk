export MODPATH="/data/adb/modules/userdebug-without-debug"

getprop | grep "userdebug" >> "$MODPATH/tmp.prop"

# [foo]: userdebug -> foo=user
sed -i 's/\[//g'  "$MODPATH/tmp.prop"
sed -i 's/\]//g'  "$MODPATH/tmp.prop"
sed -i 's/: /=/g' "$MODPATH/tmp.prop"
sed -i 's/userdebug/user/g' "$MODPATH/tmp.prop"

sort -u "$MODPATH/tmp.prop" > "$MODPATH/system.prop"
rm "$MODPATH/tmp.prop"
resetprop -n --file "$MODPATH/system.prop"
