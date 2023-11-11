#!/bin/bash

HOSTNAME=node0

NAME=frr-tinc
SCRIPTPATH="$( cd -- "$(dirname "$0")" >/dev/null 2>&1 ; pwd -P )"
echo $SCRIPTPATH

docker stop $NAME
docker rm $NAME

# docker run -d \
#     --name $NAME \
#     --net=host \
#     --device=/dev/net/tun \
#     --privileged \
#     --volume $SCRIPTPATH/workspace:/workspace \
#     --restart=always \
    # -v $SCRIPTPATH/st-sync:/var/syncthing \
#     frr-tinc

docker run -d \
    --name $NAME \
    --hostname=$HOSTNAME \
    --net=host \
    --privileged \
    --restart=always \
    -v  $SCRIPTPATH/frr:/etc/frr \
    -v $SCRIPTPATH/tinc:/etc/tinc \
    -v $SCRIPTPATH/root:/root \
    frr-tinc
