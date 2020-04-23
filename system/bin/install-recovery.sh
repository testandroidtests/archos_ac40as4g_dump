#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/sdio_emmc/by-name/recovery:15820076:1f8d2af28592d4286571cf69f55769d66433c641; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/sdio_emmc/by-name/boot:13964584:6c3899de91951792d0624b8d61c0d2e76d89978b EMMC:/dev/block/platform/sdio_emmc/by-name/recovery 1f8d2af28592d4286571cf69f55769d66433c641 15820076 6c3899de91951792d0624b8d61c0d2e76d89978b:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
