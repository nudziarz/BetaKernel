#!/sbin/sh
# Script by ALEXNDR to add $1 to /system/etc/floating_feature.xml

if [ -z "`cat /system/etc/floating_feature.xml | grep "ALEXNDR"`" ] ; then
    sed -i '/\/SecFloatingFeatureSet/D' /system/etc/floating_feature.xml
    cat $1 >> /system/etc/floating_feature.xml
    echo '</SecFloatingFeatureSet>' >> /system/etc/floating_feature.xml
fi

chown 0:0 /system/etc/floating_feature.xml
chmod 644 /system/etc/floating_feature.xml
chcon u:object_r:system_file:s0 /system/etc/floating_feature.xml

sync
