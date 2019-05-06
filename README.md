# what is this?
a bash script to launch a kubernetes cluster on aws. 

## usage
to run, do `sh k8_up.sh`. (note: it will take a few minutes to spin up ec2 instances, install kubernetes, and configure them accordingly.) you can inspect the cluster with `kops validate cluster`, or with `kubectl get nodes`.

## what do you need? 
* [aws account](https://aws.amazon.com/account/)
* [aws command line interface](https://aws.amazon.com/cli/)
* [kops kubernetes operations](https://github.com/kubernetes/kops)
* [kubernetes command line interface](https://kubernetes.io/docs/reference/kubectl/overview/)