#!/bin/bash
TAG="matejbabic/onpk-backend"
docker build . -t $TAG
docker push $TAG
