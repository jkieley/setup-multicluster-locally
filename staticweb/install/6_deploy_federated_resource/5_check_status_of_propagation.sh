#!/usr/bin/env bash

# ensure this is run to the cluster with kubefed (cluster2)
# status of propagation
for r in federatedconfigmaps federatedsecrets federatedservice federateddeployment federatedserviceaccount federatedjob; do
    echo; echo ------------ resource: ${r} ------------; echo
    kubectl -n test-namespace get ${r} -o yaml
    echo; echo
done

# see output checking-resources-propagation-output.yaml
