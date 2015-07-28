#!/usr/bin/env bash

install_file () {
  cp ./database.yml $HOME/.msf4/
}

if [ ! -f ./database.yml ]; then
  echo "File not found"
  exit 1
fi

if [ -d $HOME/.msf4 ]; then
  install_file
else
  mkdir $HOME/.msf4
  install_file
fi
