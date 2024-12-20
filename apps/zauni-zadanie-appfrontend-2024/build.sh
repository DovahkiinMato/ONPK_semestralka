#!/bin/bash
TAG="matejbabic/onpk-frontend"
docker build . -t $TAG
docker push $TAG
