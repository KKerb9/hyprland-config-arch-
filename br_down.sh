#!/bin/bash

diff=20
# read -r maxval < "/sys/class/backlight/intel_backlight/max_brightness"
minval=20
read -r curval < "/sys/class/backlight/intel_backlight/actual_brightness"
newval=$(($curval - $diff));
if [ "$curval" -gt "$minval" ]; then
    echo -n $newval > /sys/class/backlight/intel_backlight/brightness
fi