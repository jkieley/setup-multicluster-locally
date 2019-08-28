#!/usr/bin/env bash

# Install Kubefed: https://github.com/kubernetes-sigs/kubefed/blob/master/docs/installation.md
# https://github.com/kubernetes-sigs/kubefed/blob/master/charts/kubefed/README.md

helm repo add kubefed-charts https://raw.githubusercontent.com/kubernetes-sigs/kubefed/master/charts
helm install kubefed-charts/kubefed --name kubefed --version=v0.1.0-rc6 --namespace kube-federation-system
