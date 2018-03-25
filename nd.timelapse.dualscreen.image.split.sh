#!/bin/bash
#  This script splits a screenshot that spans 2 monitors

convert *.png -gravity East -crop 50%x100%+0+0 ./RIGHT/right%04d.png
convert *.png -gravity West -crop 50%x100%+0+0 ./LEFT/left%04d.png
