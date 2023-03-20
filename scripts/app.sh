#!/bin/bash
datestr=$(date +'%F-%T')
command=$1
echo $datestr $command >> /tmp/dwm.log
case $command in
    "firefox")
    firefox ;;
    "chrome")
    google-chrome-stable --proxy-server="127.0.0.1:7890" ;;
    "chromium")
    chromium --proxy-server="127.0.0.1:7890" ;;
    "obsidian")
    obsidian ;;
    "flameshot")
    flameshot gui -c -p ~/Pictures/screenshots ;;
    "dolphin")
    dolphin ~ ;;
    *)
    echo "err !! $command" >>  /tmp/dwm.log
    ;;
esac