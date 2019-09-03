#!/usr/bin/env bash

# status of propagation
for r in federatedconfigmaps federatedsecrets federatedservice federateddeployment federatedserviceaccount federatedjob; do
    echo; echo ------------ resource: ${r} ------------; echo
    kubectl -n test-namespace get ${r} -o yaml
    echo; echo
done

# see output checking-resources-propagation-output.yaml
