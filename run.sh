#!/bin/bash
xhost +
docker run -it --rm --shm-size 1000000000 -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix vtarahan/netapp:java8
xhost -
