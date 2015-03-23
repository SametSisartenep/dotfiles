# SametSisartenep's dotfiles

My dotfiles -- zsh . vim . rbenv . nvm

## usage

1. Clone the repo
  - `~$ git clone --recursive https://github.com/SametSisartenep/dotfiles.git`
2. Install
  - `~$ cd dotfiles && ./install.sh`

## setup LLVM + Clang

`~$ ./clang/setup.sh`

## setup V8 + Google Depot Tools

`~$ ./v8/setup.sh`

## setup Go

`~$ ./go/setup.sh`

## setup NPM (packages)

`~$ ./npm/setup.sh`

> **Why so much _setup_ files?**
>
> I'm going to design a **Makefile** to handle all that configuration, but, so
> far, I'm just building the esqueleton, so you must execute every _setup_ file in
> order to setup every tool.

## LICENSE
MIT License (MIT)

Copyright (c) 2015 Rodrigo González López
