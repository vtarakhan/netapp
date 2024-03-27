#!/bin/bash
xhost +
docker run -it --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix vtarahan/netapp:latest
xhost -
