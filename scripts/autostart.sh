monitors=$(xrandr -q | grep " connected" | wc -l)
if [ $"$monitors" == 2 ]; then
    xrandr --output HDMI-A-0 --pos 0x0 --mode 1920x1080 --output eDP --primary --auto --pos 100x1080
fi
./wallpaper.sh
./bar.sh &
pgrep -x fcitx5 || fcitx5 -d &
pgrep -x cfw || cfw &
pgrep -x picom || picom &
