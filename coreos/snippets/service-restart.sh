#!/bin/sh -e

KUBELET=kube-kubelet.service
PROXY=kube-proxy.service
CONTAINERS=docker.service

startstop_service() {
    cmd=$1
    name=$2
    systemctl $cmd $name
}

startstop_kubelet() {
    cmd=$1
    case $cmd in
        stop) systemctl stop $KUBELET ;;
        start) $systemctl start $KUBELET ;;
        restart)
            systemctl restart $KUBELET
            ;;
    esac
}

startstop_kubeproxy() {
    cmd=$1
    case $cmd in
        stop) systemctl stop $PROXY ;;
        start) systemctl start $PROXY ;;
        restart)
            systemctl restart $PROXY
            ;;
    esac
}

startstop_docker() {
    cmd=$1
    case $cmd in
        stop) systemctl stop $CONTAINERS ;;
        start) systemctl start $CONTAINERS ;;
        restart)
            systemctl restart $CONTAINERS
            ;;
    esac
}

case "$1" in
    start|stop|restart) cmd=$1 ;;
    *) echo "usage: $0 [start|stop|restart] servicenames"; exit 1
esac
shift

for name; do
    case "$name" in
        kubelet) startstop_kubelet $cmd ;;
        kube-proxy) startstop_kubeproxy $cmd ;;
        docker) startstop_docker $cmd ;;
        kubernetes) startstop_docker $cmd && startstop_kubeproxy $cmd && startstop_kubelet $cmd ;;
        *) startstop_service $cmd $name ;;
    esac
done
