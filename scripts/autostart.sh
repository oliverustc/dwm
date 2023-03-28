autorandr -l main
./wallpaper.sh
pgrep -x bar.sh || ./bar.sh &
pgrep -x fcitx5 || fcitx5 -d &
#pgrep -x cfw || cfw &
pgrep -x picom || picom &
