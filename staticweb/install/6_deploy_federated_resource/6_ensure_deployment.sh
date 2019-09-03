#!/usr/bin/env bash

#Ensure nginx is running properly in each cluster:
for c in cluster1 cluster2; do
    NODE_PORT=$(kubectl --context=${c} -n test-namespace get service \
        test-service -o jsonpath='{.spec.ports[0].nodePort}')
    echo; echo ------------ ${c} ------------; echo
    NODE_IP=$(kubectl get node --context=${c} \
        -o jsonpath='{.items[].status.addresses[*].address}'|sed 's/\S*cluster1\S*//'|tr -d " ")
    curl ${NODE_IP}:${NODE_PORT}
    echo; echo
done
# todo: This command was not working