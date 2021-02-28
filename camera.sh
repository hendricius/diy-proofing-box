#!/bin/bash
cd /home/pi/camera
rm -f latest.jpg
raspistill -v -vf -q 10 -o latest.jpg