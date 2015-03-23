#!/usr/bin/env bash

NPM_PACKAGES=( jshint node-gyp grunt-cli nodemon markdown )

for PACKAGE in ${NPM_PACKAGES[@]}; do
  sudo npm install -g $PACKAGE
done
