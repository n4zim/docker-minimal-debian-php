#!/bin/bash

docker run -d --privileged --network=host \
    -e URL=$URL \
    -e PORT=$PORT \
    -e SECRET1=$SECRET1 \
    -e SECRET2=$SECRET2 \
    -e SECRET3=$SECRET3 \
    -e NAME=$NAME \
    -v /etc/hosts:/etc/hosts \
    --name cluster-dns \
    n4zim/images:bmct-dns-client
