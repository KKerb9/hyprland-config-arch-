#!/bin/bash

diff=20
read -r maxval < "/sys/class/backlight/intel_backlight/max_brightness"
read -r curval < "/sys/class/backlight/intel_backlight/actual_brightness"
newval=$(($curval + $diff));
if [ "$maxval" -gt "$curval" ]; then
    echo -n $newval > /sys/class/backlight/intel_backlight/brightness
fi