#!/usr/bin/env bash

kubectl create namespace keda

kubectl apply -f https://github.com/kedacore/keda/releases/download/v2.4.0/keda-2.4.0.yaml