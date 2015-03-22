#!/usr/bin/env bash

FILES=( .fonts .nvm .rbenv .oh-my-zsh .vim .vimrc .vimrc-global .zshrc )

for file in ${FILES[@]}; do
  if [[ $file == ".vimrc-global" ]]; then
    sudo -v; sudo cp -rf $file /usr/share/vim/vimrc
  else
    cp -R $file $HOME/
  fi
done

 ./python/install.sh
