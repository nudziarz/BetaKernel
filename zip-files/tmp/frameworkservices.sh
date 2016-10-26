#!/sbin/sh
# This original script is created by glewarne@xda

if [ "`grep "G920FOXA3DPDP" /system/CSCVersion.txt`" != "" ]; then
	cp -r /tmp/920/HwModuleTest /system/priv-app
elif [ "`grep "G925FOXA3DPDP" /system/CSCVersion.txt`" != "" ]; then
	cp -r /tmp/925/HwModuleTest /system/priv-app
fi


sleep 1.5

rm -rf /tmp/920
rm -rf /tmp/925
