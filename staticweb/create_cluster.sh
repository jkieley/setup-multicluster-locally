#!/usr/bin/env bash

minikube start --bootstrapper=kubeadm --vm-driver=kvm2 --memory 4096 --cpus 4 --profile cluster1