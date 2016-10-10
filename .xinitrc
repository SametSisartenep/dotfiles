export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
compton -b &
xbindkeys &
pulseaudio &
awesome-locker &
ibus-daemon -drx &
xrdb -merge -I$HOME ~/.Xresources &
feh --bg-scale ~/Pictures/Wallpapers/earthlings_far_away_by_heavenwill-d4ov0bk.jpg
redshift &
while true
do
	#xsetroot -name "$(date +"%a %b %d %I:%M %p")"
	#sleep 3s
	slstatus
done &
exec dwm
