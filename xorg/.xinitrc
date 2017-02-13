#!/bin/sh

for f in /etc/X11/xinit/xinitrc.d/*; do [ -x "$f" ] && . "$f"; done && unset f

[[ -z `ps aux | grep -v grep | compton` ]] && compton -b &
[[ -z `ps aux | grep -v grep | xiccd` ]] && xiccd &
[[ -z `ps aux | grep -v grep | sxhkd` ]] && sxhkd &
[ -f ~/.Xresources ] && xrdb -merge -I$HOME ~/.Xresources &
feh --bg-scale ~/Pictures/Wallpapers/the-sun-rises.jpeg &
gpg-agent --homedir ~/.gnupg --daemon &
sct 4000 &
awesome-locker &
unclutter --jitter 10 --timeout 3 &
batlvlmon &
setxkbmap es &
xset r rate 200 25 &
while true
do
	slstatus
done &
exec ck-launch-session dwm
