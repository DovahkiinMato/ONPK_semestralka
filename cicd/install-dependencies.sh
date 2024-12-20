#!/bin/bash

# Tekton installation
# https://tekton.dev/docs/installation/pipelines/
kubectl apply --filename https://storage.googleapis.com/tekton-releases/pipeline/latest/release.yaml

echo "Sleeping 10s.."
sleep 10

# Tasks (kaniko, git-clone, helm-upgrade-from-source)
# https://hub.tekton.dev
kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/kaniko/0.6/raw
kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/git-clone/0.9/raw
kubectl apply -f https://api.hub.tekton.dev/v1/resource/tekton/task/helm-upgrade-from-source/0.4/raw
