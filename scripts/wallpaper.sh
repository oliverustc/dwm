#!/bin/bash
WPP="$HOME/Pictures/wallpapers"
MWPP="$WPP/main"
VWPP="$WPP/virtical"
wallpapers=$(find $MWPP | tail -n +2 | shuf | head -n 2 )
virtical_wallpaper=$(find $VWPP | tail -n +2 | shuf | head -n 1)
echo $wallpapers > /tmp/wallpaper.log
echo $virtical_wallpaper >> /tmp/wallpaper.log
feh --bg-scale $wallpapers $virtical_wallpaper