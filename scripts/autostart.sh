autorandr -l main

pgrep wallpaper.sh && killall wallpaper.sh 
./wallpaper.sh "30m" &

pgrep -x bar.sh && killall bar.sh 
./bar.sh & 

pgrep -x fcitx5 || fcitx5 -d &

pgrep -x picom || picom --config ~/.config/picom/picom.conf &

pgrep -x dunst || dunst & 

bash ~/.dwm/scripts/poems.sh 
