#!/bin/bash
genisoimage -e boot/grub/efi.img -no-emul-boot -R -J -T -c boot.catalog -hide boot.catalog -V "GXDE" -o gxde.iso ISO-temp  #-o /data1/CentOS-7.9-ARM-AutoInstall.iso /data1/OS/
#genisoimage -r -loliet-long -V GXDE -o gxde.iso -no-emul-boot -boot-load-size 4 -boot-info-table -R -J -v -cache-inodes -T -b boot/grub/efi.img -no-emul-boot ISO-temp/
