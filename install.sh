#!/usr/bin/env bash

FILES=( .fonts .themes .vim .vimrc .vimrc-global .zshrc .jshintrc )

for file in ${FILES[@]}; do
  if [[ $file == ".vimrc-global" ]]; then
    sudo -v; sudo cp -rf $file /etc/vimrc
  else
    cp -R $file $HOME/
  fi
done

 ./python/install.sh

if type node &>/dev/null; then
  ./npm/setup.sh
else
  ./nodejs-fetcher 0.12.0

  tar xvf *.tar.gz
  rm -rfv *.tar.gz

  cd *0.12.0
  ./configure && make -j4 && sudo make install

  sudo npm update -g && ./npm/setup.sh
fi
