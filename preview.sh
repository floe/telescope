#!/bin/bash
#ffmpeg -f video4linux2 -input_format mjpeg -video_size 1280x720 -i /dev/video0 -framerate 10 -vcodec copy -f rtp rtp://192.168.178.23:5000
raspivid -t 0 -cd MJPEG -b 5000000 -ISO 800 -fps 5 -rot 180 -w 960 -h 720 -n -roi 0.25,0.25,0.5,0.5 -o - | ffmpeg -re -r 5 -i pipe:0 -vcodec copy -f rtp rtp://192.168.178.23:5000
