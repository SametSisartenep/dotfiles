#!/usr/bin/env bash

FILES=( .fonts .themes .vim .vimrc .vimrc-global .zshrc .jshintrc )
XORGSYSFILES=( 20-intel.conf 52-elantech-touchpad.conf )
XORGUSRFILES=( .drirc .xbindkeysrc .xinitrc .xscreensaver )

XORGDIR='xorg/'

for file in ${FILES[@]}; do
  if [[ $file == ".vimrc-global" ]]; then
    sudo -v; sudo cp -rf $file /etc/vimrc
  else
    cp -R $file $HOME/
  fi
done

for file in ${XORGSYSFILES[@]}; do
  sudo -v; sudo cp -rf $XORGDIR/$file /etc/X11/xorg.conf.d/
done

for file in ${XORGUSRFILES[@]}; do
  sudo -v; sudo cp -rf $XORGDIR/$file $HOME/
done
