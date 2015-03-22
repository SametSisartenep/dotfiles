#!/usr/bin/env bash

FILES=( .fonts .nvm .rbenv .oh-my-zsh .vim .vimrc .vimrc-global .zshrc .jshintrc )

for file in ${FILES[@]}; do
  if [[ $file == ".vimrc-global" ]]; then
    sudo -v; sudo cp -rf $file /usr/share/vim/vimrc
  else
    cp -R $file $HOME/
  fi
done

 ./python/install.sh

if type node &>/dev/null; then
  if type jshint &>/dev/null; then
    exit 0
  else
    sudo npm install -g jshint
  fi
else
  ./nodejs-fetcher 0.12.0

  tar xvf *.tar.gz
  rm -rfv *.tar.gz

  cd *0.12.0
  ./configure && make && sudo make install

  sudo npm update -g && sudo npm install -g jshint
fi
