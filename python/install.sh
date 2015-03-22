#!/usr/bin/env bash

if type pip &>/dev/null; then
  exit 0
else
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
