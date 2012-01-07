
LOG_TAG="byd-wapi"
LOG_NAME="${0}:"


loge ()
{
  /system/bin/log -t $LOG_TAG -p e "$LOG_NAME $@"
}

logi ()
{
  /system/bin/log -t $LOG_TAG -p i "$LOG_NAME $@"
}


do_copy_cert ()
{

  busybox cp -f /sdcard/as.cer /data/misc/wifi/cert/as/
  chmod 666 /data/misc/wifi/cert/as/as.cer
  chown root.root /data/misc/wifi/cert/as/as.cer
  
  busybox cp -f /sdcard/user.cer /data/misc/wifi/cert/user/
  chmod 666 /data/misc/wifi/cert/user/user.cer
  chown root.root /data/misc/wifi/cert/user/user.cer
  
  logi "do copy cert"
}

do_copy_cert

exit 0
