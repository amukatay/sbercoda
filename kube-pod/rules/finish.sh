#!/bin/bash

objects=$(kubectl -n bookinfo get deployments,pods,replicasets,destinationrules,peerauthentications -o json 2>&1)

# try without peerauthentications
[ "$objects" = "No resources found" ] && objects=$(kubectl -n bookinfo get deployments,pods,replicasets,destinationrules -o json 2>&1)

# give up
[ "$objects" = "No resources found" ] && echo "$objects" && exit 1

echo $objects
