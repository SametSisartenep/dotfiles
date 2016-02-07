#!/usr/bin/env bash

git clone https://github.com/tj/git-extras.git ~/tools/git-extras

cd ~/tools/git-extras

# Checkout the latest tag
git checkout $(git describe --tags $(git rev-list --tags --max-count=1))

sudo make install
