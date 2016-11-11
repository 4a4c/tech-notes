# Calico Install Notes

[install guide](https://github.com/projectcalico/calico-containers/blob/master/docs/cni/kubernetes/KubernetesIntegration.md)

[calico container releases](https://github.com/projectcalico/calico-containers/releases)

[calico cni releases](https://github.com/projectcalico/calico-cni/releases)

## Download components

`VERSION=v0.22.0; wget https://github.com/projectcalico/calico-containers/releases/download/${VERSION}/calicoctl`

`VERSION=v1.4.2; wget https://github.com/projectcalico/calico-cni/releases/download/${VERSION}/calico \
wget https://github.com/projectcalico/calico-cni/releases/download/${VERSION}/calico-ipam`

```
#!/usr/bin/env bash

# Download calico binaries

CALICO_CTL_VERSION=v0.22.0
CALICO_CNI_VERSION=v1.4.2
LOCAL_DIR="$PWD"

mkdir -p $LOCAL_DIR/calicoctl/$CALICO_CTL_VERSION/
mkdir -p $LOCAL_DIR/calicocni/$CALICO_CNI_VERSION/

curl -L https://github.com/projectcalico/calico-containers/releases/download/${CALICO_CTL_VERSION}/calicoctl \
  -o $LOCAL_DIR/calicoctl/$CALICO_CTL_VERSION/calicoctl
curl -L https://github.com/projectcalico/calico-cni/releases/download/${CALICO_CNI_VERSION}/calico \
  -o $LOCAL_DIR/calicocni/$CALICO_CNI_VERSION/calico
curl -L https://github.com/projectcalico/calico-cni/releases/download/${CALICO_CNI_VERSION}/calico-ipam \
  -o $LOCAL_DIR/calicocni/$CALICO_CNI_VERSION/calico-ipam
```
