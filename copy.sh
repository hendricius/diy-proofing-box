#!/bin/bash
cd ~/camera/

FILENAME=$(date +"%Y-%m-%d_%H_%M_%S")
DIR=$(date +"%Y-%j")

rclone copy latest.jpg drive:/raspberry/
rclone mkdir drive:/raspberry/all/$DIR
mv latest.jpg $FILENAME.jpg
rclone move $FILENAME.jpg drive:/raspberry/all/$DIR/
rm -f $FILENAME.jpg