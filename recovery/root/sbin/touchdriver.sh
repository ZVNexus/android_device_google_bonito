#!/sbin/sh

SLOT=`getprop ro.boot.slot_suffix`
mount /dev/block/by-name/vendor$SLOT /vendor -o ro
insmod /vendor/lib/modules/synaptics_dsx_core.ko
insmod /vendor/lib/modules/synaptics_dsx_fw_update.ko
insmod /vendor/lib/modules/synaptics_dsx_rmi_dev.ko
insmod /vendor/lib/modules/synaptics_dsx_test_reporting.ko
umount /vendor
