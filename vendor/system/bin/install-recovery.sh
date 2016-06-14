#!/system/bin/sh
if [ -f /system/etc/recovery-transform.sh ]; then
  exec sh /system/etc/recovery-transform.sh 11550720 2f9f35888fe43eb560a3a7f0971de925cb1e86dc 8118272 b3145f91aafb04c2fc364fdeb200e3764dc462fc
fi

if ! applypatch -c EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery:11550720:2f9f35888fe43eb560a3a7f0971de925cb1e86dc; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/mtk-msdc.0/by-name/boot:8118272:b3145f91aafb04c2fc364fdeb200e3764dc462fc EMMC:/dev/block/platform/mtk-msdc.0/by-name/recovery 2f9f35888fe43eb560a3a7f0971de925cb1e86dc 11550720 b3145f91aafb04c2fc364fdeb200e3764dc462fc:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
