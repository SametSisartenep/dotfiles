export GTK_IM_MODULE=ibus
export XMODIFIERS=@im=ibus
export QT_IM_MODULE=ibus
ibus-daemon -drx &
[[ -f ~/.Xresources ]] && xrdb -merge -I$HOME ~/.Xresources &
exec awesome
