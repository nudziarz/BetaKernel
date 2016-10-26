#!/sbin/sh
# Script by ALEXNDR to add $1 to /system/csc/feature.xml

if [ -z "`cat /system/csc/feature.xml | grep "ALEXNDR"`" ] ; then
    sed -i '/\/FeatureSet/D' /system/csc/feature.xml
    sed -i '/\/SamsungMobileFeature/D' /system/csc/feature.xml
    cat $1 >> /system/csc/feature.xml
    echo '  </FeatureSet>' >> /system/csc/feature.xml
    echo '</SamsungMobileFeature>' >> /system/csc/feature.xml
fi

chown 0:0 /system/csc/feature.xml
chmod 644 /system/csc/feature.xml
chcon u:object_r:system_file:s0 /system/csc/feature.xml

sync
