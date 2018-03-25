#!/bin/bash
# this script takes 2 videos and creates an overlayed picture in picture video

ffmpeg -i ./LEFT/left.mp4 -i ./RIGHT/right.mp4 -filter_complex "[0]scale=iw/5:ih/5 [pip]; [1][pip] overlay=main_w-overlay_w-10:main_h-overlay_h-10" PIP_video.mp4
