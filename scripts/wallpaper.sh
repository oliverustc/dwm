#!/bin/bash
WPP="$HOME/Pictures/wallpapers"
MWPP="$WPP/main"
VWPP="$WPP/virtical"
function setWallpaper() {
  wallpapers=$(find $MWPP | tail -n +2 | shuf | head -n 2 )
  virtical_wallpaper=$(find $VWPP | tail -n +2 | shuf | head -n 1)
  echo $wallpapers > /tmp/wallpaper.log
  echo $virtical_wallpaper >> /tmp/wallpaper.log
  feh --bg-fill $wallpapers $virtical_wallpaper
}

delay=$*

if [ -z $delay ]; then
  setWallpaper
else 
  while [[ true ]]; do
    setWallpaper 
    sleep $delay
  done
fi 
