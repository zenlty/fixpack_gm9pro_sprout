#!/sbin/sh

# Detect Source type, AB or not
sourcetype="Aonly"
if [[ -e "/system/init.rc" ]]; then
    sourcetype="AB"
fi

if [ "$sourcetype" == "Aonly" ]; then
	busybox echo "
" >> /system/build.prop;
	busybox echo "# Internal Storage Fix by Zenlty" >> /system/build.prop;
	busybox echo "ro.build.system_root_image=true" >> /system/build.prop;
else
	busybox echo "
" >> /system/system/build.prop;
	busybox echo "# Internal Storage Fix by Zenlty" >> /system/build.prop;
	busybox echo "ro.build.system_root_image=true" >> /system/build.prop;
fi

exit 0;
