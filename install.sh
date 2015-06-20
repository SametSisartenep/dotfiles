#!/usr/bin/env bash

FILES=( .fonts .themes .vim .vimrc .vimrc-global .zshrc .jshintrc )

for file in ${FILES[@]}; do
  if [[ $file == ".vimrc-global" ]]; then
    sudo -v; sudo cp -rf $file /etc/vimrc
  else
    cp -R $file $HOME/
  fi
done
