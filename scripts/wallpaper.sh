#!/bin/bash
#
monitors=$(xrandr -q | grep " connected" | wc -l)

WPP=$HOME/Pictures/wallpapers
wallpapers=$(find $WPP | tail -n +2 | shuf | head -n $monitors )
feh --bg-fill $wallpapers
echo $wallpapers > /tmp/wallpaper.log

