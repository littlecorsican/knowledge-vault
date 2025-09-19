# Kubernetes

## What is Kubernetes
Automatic deployment of containerized applications across different servers
Distribution of load across multiple servers
Auto scaling of deployed apps
declarative deployment


## What can run kubenetes
VM or Container manager
Virtual box, VMware , docker, Hyper V


## Kubernetes Node breakdown
Master Node has
API server, scheduler, Kube Controller Manager, Cloud Controller Manager, etcd

All nodes have
kubelet, kube-proxy, container runtime

### API server
Main point of communication with each nodes
Only in master node - communicates to kubelet
can manage entire kubernetes cluster using kubectl over https - the CLI for k8


### Scheduler



### Kube Controller Manager
Controls Everything

### Cloud Controller Manager
Communicate with cloud services

### etcd
store logs

### DNS service
manages DNS for entire cluster