# CoreOSfest 2017 Notes

## Intro to Kube

[setup](http://gist-reveal.it/bit.ly/k8s-fest#/kubernetes-hands-on)
[source](https://gist.github.com/ryanj/659dda8b090ca78065433e782a20f2d5)

@ryanj from CoreOS

GCP Temp Creds
```
Username:   devstar1020@gcplab.me
Password:   Avys2Fygy9
```

### Primitives
1. Node
2. Pod
3. Service - single endpoint to all pods of similar service
4. Deployment - specify requirements in terms of pods
5. Replicaset -  

### Notes

`--dry-run` can be used to simulate request then `-o json` to inspect
`--watch` to watch api


### DEMO

kubectl create -f https://raw.githubusercontent.com/ryanj/metrics-k8s/master/pod.json

http://play.etcd.io/play

Fire Drills: https://github.com/philips/2016-OSCON-containers-at-scale-with-Kubernetes#fire-drills

CRI (Container Runtime Interface): https://coreos.com/blog/rkt-accepted-into-the-cncf.html

SRE:
https://landing.google.com/sre/book.html
https://medium.com/@jerub/googles-approach-4bcdc0533c0a

### Operators
https://coreos.com/blog/introducing-operators.html

Certs:
https://github.com/kelseyhightower/kube-cert-manager


elasticsearch:
https://github.com/upmc-enterprises/elasticsearch-operator

postgres:
https://github.com/CrunchyData/postgres-operator

storage - coreos:
https://github.com/coreos/quartermaster

slides:
http://gist-reveal.it/#/try-it
