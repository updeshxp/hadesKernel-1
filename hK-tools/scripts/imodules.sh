#!/sbin/sh
######################################################################
# Module replacement script - PLS DO NOT TOUCH THIS K THX			##
#																	##
# Old modules will be beside new ones, as backup, with bkp extension##
#																	##
# Maybe sometime i will do a script to restore modules...			##
# or maybe not.. LMAO												##
######################################################################
if [ -f /system/lib/modules/pronto/pronto_wlan.ko.bkp ]; 
  then
	cp /tmp/hades/hades /system/lib/modules/pronto/pronto_wlan.ko
	chmod 644 /system/lib/modules/pronto/pronto_wlan.ko
  else
	mv /system/lib/modules/pronto/pronto_wlan.ko /system/lib/modules/pronto/pronto_wlan.ko.bkp
	cp /tmp/hades/hades /system/lib/modules/pronto/pronto_wlan.ko
	chmod 644 /system/lib/modules/pronto/pronto_wlan.ko
fi

if [ -f /system/lib/modules/radio-iris-transport.ko.bkp ]; 
  then
	cp /tmp/hades/radio /system/lib/modules/radio-iris-transport.ko
	chmod 644 /system/lib/modules/radio-iris-transport.ko
  else
	mv /system/lib/modules/radio-iris-transport.ko /system/lib/modules/radio-iris-transport.ko.bkp
	cp /tmp/hades/radio /system/lib/modules/radio-iris-transport.ko
	chmod 644 /system/lib/modules/radio-iris-transport.ko
fi
exit 0
