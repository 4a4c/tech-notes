echo 1 >  /sys/class/scsi_device/2\:0\:0\:0/device/rescan
cgpt resize  /dev/sda1
resize2fs /dev/sda1
