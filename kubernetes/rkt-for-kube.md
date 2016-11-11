# Running kube svcs with rkt

## Links

[hyperkube aci images](https://quay.io/repository/coreos/hyperkube?tab=tags)
[pod lifecycel](https://coreos.com/rkt/docs/latest/devel/pod-lifecycle.html)

## Commands

rkt run --insecure-options=image --net=host --interactive docker://alpine --exec sh

kubelet wrapper on coreos `/usr/lib/coreos/kubelet-wrapper`


