#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#creating-test-resources
# ensure this is deployed to the cluster with kubefed (cluster2)
kubectl apply -R -f example/sample1