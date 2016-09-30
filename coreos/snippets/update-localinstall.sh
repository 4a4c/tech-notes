#!/usr/bin/env bash

# Update coreos local install to free bootbank and set to boot from bank on next boot

# declare variables
CHANNEL=stable
RELEASE=835.8.0
IMAGE=coreos_production_update.bin.bz2
TMPMNT="/mnt/tmpmnt"

USR_PARTTYPE="5dfbf5f4-2848-4bac-aa5e-0d9a20b745a6"
declare -a DEV_LIST
mapfile DEV_LIST < <(lsblk -P -o NAME,PARTTYPE,MOUNTPOINT)
for dev_info in "${DEV_LIST[@]}"; do
    eval "$dev_info"
    if [[ "${PARTTYPE}" = "${USR_PARTTYPE}" ]] && [[ -z ${MOUNTPOINT} ]]; then
        #echo "$dev_info"
        PARTITION="/dev/${NAME}"
        echo "Found unused bootbank ${PARTITION}"
    fi
done

# remove existing image
rm -f $IMAGE

# set base URL
BASEURL="http://${CHANNEL}.release.core-os.net/amd64-usr/${RELEASE}"
#BASEURL="http://INTERNAL/REPO/coreos/images/${CHANNEL}/${RELEASE}"

# download IMAGE
wget ${BASEURL}/${IMAGE}

# unzip to PARITION
bunzip2 -c ${IMAGE} > ${PARTITION}

# mount > finalize > unmount
mkdir ${TMPMNT}
mount -o ro ${PARTITION} ${TMPMNT}
${TMPMNT}/postinst ${PARTITION}
umount ${PARTITION}
rmdir ${TMPMNT}

# cleanup downloaded image
rm -f $IMAGE
