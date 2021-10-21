#!/usr/bin/env bash

microk8s enable storage
microk8s enable dns
microk8s enable rbac
microk8s enable host-access
