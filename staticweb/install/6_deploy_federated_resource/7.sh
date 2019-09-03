#!/usr/bin/env bash

#Ensure nginx is running properly in each cluster:
cat ~/.kube/config | grep current-context