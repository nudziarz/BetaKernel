#!/sbin/sh

chown 0:0 /system/etc/tools/*
chmod 777 /system/etc/tools/*
chcon u:object_r:system_file:s0 /system/etc/tools/*

chown 0:0 /system/etc/tools/models/*
chmod 777 /system/etc/tools/models/*
chcon u:object_r:system_file:s0 /system/etc/tools/models/*

rm -rf /data/dalvik-cache
rm -r /cache/*
