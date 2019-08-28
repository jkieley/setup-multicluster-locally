#!/usr/bin/env bash

curl -Lo minikube https://storage.googleapis.com/minikube/releases/latest/docker-machine-driver-kvm2 \
  && chmod +x docker-machine-driver-kvm2

sudo mv docker-machine-driver-kvm2 /usr/local/bin