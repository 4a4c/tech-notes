#!/usr/bin/env bash

# Download kubernetes binaries

ARCH=linux
VERSION=v1.1.1
FILES="hyperkube kubectl kubelet kube-apiserver kube-controller-manager kube-scheduler kube-proxy"
LOCAL_DIR="$HOME/Downloads/save/kubernetes/binaries"

mkdir -p $LOCAL_DIR/$VERSION/bin/$ARCH/amd64

for F in $FILES; do
        curl -L https://storage.googleapis.com/kubernetes-release/release/$VERSION/bin/$ARCH/amd64/$F \
        -o $LOCAL_DIR/$VERSION/bin/$ARCH/amd64/$F
done
