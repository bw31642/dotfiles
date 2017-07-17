
exec > $HOME/.x.log 2>&1
##
#dbus-launch --sh-syntax --exit-with-session
# start-pulseaudio-x11
xrandr --dpi 96
xrdb < $HOME/.Xdefaults
setxkbmap us
#setxkbmap gb
# conky --display :0.1 &
VBoxClient --clipboard
VBoxClient --display
VBoxClient --seamless


clipit &
# remmina -i &
feh --bg-fill  ~/backdrops/default.png
(sleep 2; bbpager ) & 
(sleep 3; wmctrl -r bbpager -b add,below ) &
#compton --config ~/.compton.conf -c -t-10 -l-14 -r10 -o1 &
conky -d ; conky -d -c $HOME/.conky-info
#(sleep 3 ; conky -d ; conky -d -c $HOME/.conky-info) &
#compton --config ~/.compton.conf &
fluxbox 
#i3
