#!/bin/bash
# Check if HDMI-1-0 exists
if xrandr | grep "HDMI-1-0 connected"; then
    # Turn off eDP-1
    xrandr --output eDP-1 --off

    # Set HDMI-1-0 as the primary output with desired resolution
    xrandr --output HDMI-1-0 --primary --mode 1920x1080
else
    echo "HDMI-1-0 is not connected"
fi

