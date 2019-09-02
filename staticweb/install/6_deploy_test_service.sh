#!/usr/bin/env bash

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#enabling-federation-of-an-api-type
#kubefedctl enable <target kubernetes API type>
kubefedctl enable deployments

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#verify-your-deployment-is-working
# create test namespace
kubectl apply -f example/sample1/namespace.yaml \
    -f example/sample1/federatednamespace.yaml

# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md#checking-resources-status

for r in configmaps secrets service deployment serviceaccount job; do
    for c in cluster1 cluster2; do
        echo; echo ------------ ${c} resource: ${r} ------------; echo
        kubectl --context=${c} -n test-namespace get ${r}
        echo; echo
    done
done
#see output:  checking-resources-status-output.txt

# status of propagation
for r in federatedconfigmaps federatedsecrets federatedservice federateddeployment federatedserviceaccount federatedjob; do
    echo; echo ------------ resource: ${r} ------------; echo
    kubectl -n test-namespace get ${r} -o yaml
    echo; echo
done

# see output checking-resources-propagation-output.yaml

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