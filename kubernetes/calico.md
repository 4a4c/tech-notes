# Calico Install Notes

[install guide](https://github.com/projectcalico/calico-containers/blob/master/docs/cni/kubernetes/KubernetesIntegration.md)

[calico container releases](https://github.com/projectcalico/calico-containers/releases)

[calico cni releases](https://github.com/projectcalico/calico-cni/releases)

## Download components

`VERSION=v0.22.0; wget https://github.com/projectcalico/calico-containers/releases/download/${VERSION}/calicoctl`

`VERSION=v1.4.2; wget https://github.com/projectcalico/calico-cni/releases/download/${VERSION}/calico \
wget https://github.com/projectcalico/calico-cni/releases/download/${VERSION}/calico-ipam`
