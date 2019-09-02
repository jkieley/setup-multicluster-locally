#!/usr/bin/env bash


# https://github.com/kubernetes-sigs/kubefed/blob/master/docs/userguide.md
VERSION=0.1.0-rc6
OS=linux
ARCH=amd64
curl -LO https://github.com/kubernetes-sigs/kubefed/releases/download/v${VERSION}/kubefedctl-${VERSION}-${OS}-${ARCH}.tgz
tar -zxvf kubefedctl-*.tgz
chmod u+x kubefedctl
sudo mv kubefedctl /usr/local/bin/ # make sure the location is in the PATH