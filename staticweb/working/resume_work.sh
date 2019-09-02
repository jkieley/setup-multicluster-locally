#!/usr/bin/env bash

minikube start -p cluster1&
minikube start -p cluster2& #kubefed is installed here

#optionally verify that both clusters are running in using virtual machine manager
