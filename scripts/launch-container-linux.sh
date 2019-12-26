#!/bin/bash

xhost +

docker run -it \
    -e DISPLAY=$DISPLAY \
    -v /tmp/.X11-unix:/tmp/.X11-unix \
    --name lsdslam_noros \
    -e "TERM=xterm-256color" \
    lsdslam_noros
