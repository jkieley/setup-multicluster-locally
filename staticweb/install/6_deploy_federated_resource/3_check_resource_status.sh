#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#checking-resources-status

for r in configmaps secrets service deployment serviceaccount job; do
    for c in cluster1 cluster2; do
        echo; echo ------------ ${c} resource: ${r} ------------; echo
        kubectl --context=${c} -n test-namespace get ${r}
        echo; echo
    done
done
#see output:  checking-resources-status-output.txt