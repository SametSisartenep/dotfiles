#!/usr/bin/env bash

wget https://bootstrap.pypa.io/get-pip.py

sudo -v

sudo python ./get-pip.py

sudo pip install powerline-status
sudo pip install virtualenv
