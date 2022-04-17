#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}
# This script will be executed in post-fs-data mode

gpath=/system/product
gphoto=Photos
if [ -e ${gpath}/data-app/${gphoto}/${gphoto}.apk ]; then
	cp -a ${gpath}/data-app/${gphoto}/${gphoto}.apk ${MODDIR}${gpath}/app/${gphoto}/${gphoto}.apk
fi

cmd role add-role-holder android.app.role.SYSTEM_GALLERY com.google.android.apps.photos