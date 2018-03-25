#!/bin/bashj
# this script converts a set of left and right still images into a set of left and right videos

ffmpeg -r 15 -f image2 -s 1920x1080 -start_number 1 -i ./LEFT/left%04d.png -vframes 1000 -vcodec libx264 -crf 25  -pix_fmt yuv420p ./LEFT/left.mp4
ffmpeg -r 15 -f image2 -s 1920x1080 -start_number 1 -i ./RIGHT/right%04d.png -vframes 1000 -vcodec libx264 -crf 25  -pix_fmt yuv420p ./RIGHT/right.mp4
