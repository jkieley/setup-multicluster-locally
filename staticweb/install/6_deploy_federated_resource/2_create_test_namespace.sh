#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#verify-your-deployment-is-working
# create test namespace
kubectl apply -f example/sample1/namespace.yaml \
    -f example/sample1/federatednamespace.yaml
