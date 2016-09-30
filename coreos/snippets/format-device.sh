#!/usr/bin/env bash

# Format target disk for coreos install
DEVICE="/dev/sda"

# zap existing partition table
sgdisk --zap-all $DEVICE

# create new partiion table
parted -s $DEVICE mktable gpt

# create new partition1
parted -s $DEVICE mkpart root 0% 100%

# format partition1
mkfs.ext4 -F "${DEVICE}1"
