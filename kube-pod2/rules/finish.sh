#!/bin/bash

objects=$(/usr/local/bin/kubectl -n myapp get pods -o json 2>&1)
objects=$(/usr/local/bin/kubectl -n myapp get pods -o 2>&1)
#sleep 178

echo $objects
