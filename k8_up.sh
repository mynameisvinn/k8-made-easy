#!/bin/bash

# install aws command line interface
# conda install -c conda-forge awscli 

# install kops and kubectl (for macos)
# brew update && brew install kops kubectl

# create s3 bucket to save k8 cluster state
export KOPS_STATE_STORE=s3://mynameisvinn-kops-state-store
aws s3api create-bucket --bucket ${KOPS_STATE_STORE} --region us-east-1

# ask kops to generate cluster configuration
kops create cluster --zones=us-east-1c

# spin up ec2 instances, then install k8 on each machine
export KOPS_CLUSTER_NAME=mynameisvinn.k8s.local
kops update cluster --name ${KOPS_CLUSTER_NAME} --yes

# pause while machines are configured
sleep 3m
# kops validate cluster
kubectl get nodes