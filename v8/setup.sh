#!/usr/bin/env bash

mkdir -p $HOME/tools

git clone https://chromium.googlesource.com/chromium/tools/depot_tools.git $HOME/tools/depot_tools

# make sure you have 'depot_tools' updated
gclient

# get V8
cd $HOME/tools
fetch v8
cd v8

# get GYP if you haven't got it yet
gclient sync

# build V8 for x86_64 release-only
make x64.release -j4
