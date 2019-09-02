#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/cluster-registration.md

kubefedctl join cluster1 \
    --cluster-context cluster1 \
    --host-cluster-context cluster2 --v=2
kubefedctl join cluster2 \
    --cluster-context cluster2 \
    --host-cluster-context cluster2 --v=2

# see check_status_of_joined_kubefed_clusters.sh
