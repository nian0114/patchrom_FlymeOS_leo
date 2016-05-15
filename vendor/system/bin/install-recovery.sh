#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 46235648 f15a486f388a966791ff76c63a18de68fd49ed7e 42426368 e89aa5683cc26738f398fc75bc0d0b79bbffebfc
fi

if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:46235648:f15a486f388a966791ff76c63a18de68fd49ed7e; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:42426368:e89aa5683cc26738f398fc75bc0d0b79bbffebfc EMMC:/dev/block/bootdevice/by-name/recovery f15a486f388a966791ff76c63a18de68fd49ed7e 46235648 e89aa5683cc26738f398fc75bc0d0b79bbffebfc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
