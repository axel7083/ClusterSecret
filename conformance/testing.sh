#!/bin/sh

kubectl get node

helm install cluster-secret .\charts\cluster-secret\ -n cluster-secret --create-namespace
