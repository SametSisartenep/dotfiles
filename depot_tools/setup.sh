#!/usr/bin/env bash

mkdir -p $HOME/tools

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git $HOME/tools/depot_tools

# make sure you have 'depot_tools' updated
gclient
