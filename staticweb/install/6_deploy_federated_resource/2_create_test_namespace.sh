#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#verify-your-deployment-is-working
# create test namespace
# ensure this is deployed to the cluster with kubefed (cluster2)
kubectl apply -f example/sample1/namespace.yaml \
    -f example/sample1/federatednamespace.yaml
