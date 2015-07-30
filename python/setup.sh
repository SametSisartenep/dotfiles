#!/usr/bin/env bash

if -n type pip &>/dev/null; then
  if [ -f get-pip.py ]; then
    echo "You just have get-pip downloaded."
  else
    wget https://bootstrap.pypa.io/get-pip.py
  fi
fi

sudo -v

sudo python ./get-pip.py

sudo pip install powerline-status
sudo pip install virtualenv
