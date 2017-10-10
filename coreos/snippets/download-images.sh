#!/usr/bin/env bash

# Download coreos images for ipxe booting

CHANNEL=stable
BUILD=1465.8.0
FILES="coreos_production_pxe_image.cpio.gz coreos_production_pxe_image.cpio.gz.sig coreos_production_pxe.vmlinuz coreos_production_pxe.vmlinuz.sig coreos_production_image.bin.bz2 coreos_production_image.bin.bz2.sig coreos_production_update.bin.bz2 coreos_production_update.bin.bz2.sig coreos_production_vmware_ova.ova coreos_production_vmware_ova.ova.sig"
LOCAL_DIR="$HOME/Downloads/save/coreos/images"

mkdir -p $LOCAL_DIR/$CHANNEL/$BUILD

for F in $FILES; do
        curl -L http://$CHANNEL.release.core-os.net/amd64-usr/$BUILD/$F \
        -o $LOCAL_DIR/$CHANNEL/$BUILD/$F
done
