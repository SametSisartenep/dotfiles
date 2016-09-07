export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
xbindkeys &
pulseaudio &
awesome-locker &
ibus-daemon -drx &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
while true
do
	#xsetroot -name "$(date +"%a %b %d %I:%M %p")"
	#sleep 3s
	slstatus
done &
exec dwm
