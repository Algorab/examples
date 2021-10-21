#!/usr/bin/env bash

kubectl apply -k "github.com/fission/fission/crds/v1?ref=1.14.1"

export FISSION_NAMESPACE="fission"
kubectl create namespace $FISSION_NAMESPACE
kubectl create -k "github.com/fission/fission/crds/v1?ref=1.14.1"
helm repo add fission-charts https://fission.github.io/fission-charts/
helm repo update
helm install --set routerServiceType=ClusterIP --version 1.14.1 --namespace $FISSION_NAMESPACE fission fission-charts/fission-core


