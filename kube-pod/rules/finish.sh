#!/bin/bash

objects=$(/usr/local/bin/kubectl -n myapp get pods -o json 2>&1)

# sleep 20

echo $objects
