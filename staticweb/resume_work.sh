#!/usr/bin/env bash

minikube start -p cluster1&
minikube start -p cluster2&

#optionally verify that both clusters are running in using virtual machine manager
