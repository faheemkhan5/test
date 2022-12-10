#!/usr/bin/sh
cd /var/lib/jenkins/workspace/test1-freestyle-1/
ssh root@k8s
rm /deployments/*
exit
scp website.yaml root@k8s:/deployments/website.yaml
ssh root@k8s
cd /deployments/
kubectl apply -f website.yaml
