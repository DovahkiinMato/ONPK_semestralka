#!/bin/bash
kubectl apply -f ci-docker-secret.yaml
kubectl apply -f ci.yaml
kubectl apply -f ci-run.yaml

kubectl apply -f cd-rbac.yaml # EDIT THIS ONE WITH CORRESPONDING DOCKER.CONF BASE64
kubectl apply -f cd.yaml
kubectl apply -f cd-run.yaml
