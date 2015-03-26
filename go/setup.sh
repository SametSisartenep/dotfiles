#!/usr/bin/env bash

version='1.4.2'

if type go &>/dev/null; then
  echo "You just have Go installed ;)"
else
  wget https://storage.googleapis.com/golang/go${version}.linux-amd64.tar.gz

  if [ ! -d $HOME/tools ]; then
    mkdir -p $HOME/tools
  fi

  tar -C $HOME/tools/ -xzf go${version}.linux-amd64.tar.gz

  rm -rfv go${version}.linux-amd64.tar.gz
fi
