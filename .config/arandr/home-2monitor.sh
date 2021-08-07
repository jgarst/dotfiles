#!/bin/sh
xrandr \
    --output eDP-1 --primary --mode 1920x1080 --scale 2x2 --pos 0x0 --rotate normal \
    --output DP-1 --mode 1920x1080 --scale 2x2 --pos 3840x0 --rotate normal \
    --output DP-2 --off
