![dotfiles logo](dotfiles-logo.png)

My dotfiles -- zsh . vim . rbenv . nvm

## usage

1. Clone the repo
  - `~$ git clone --recursive https://github.com/SametSisartenep/dotfiles.git`
2. Install
  - `~$ cd dotfiles && ./install.sh`

> *Recursive installation* is still needed because of Vim modules.

## _Setup.sh_ files

- clang/setup.sh
- v8/setup.sh
- npm/setup.sh
- nvm/setup.sh
- rbenv/setup.sh
- oh-my-zsh/setup.sh
- go/setup.sh
- qemu/setup.sh
- git-extras-tj/setup.sh

> **Why so many _setup_ files?**
>
> I'm going to design a **Makefile** to handle all that configuration, but, so
> far, I'm just building the esqueleton, so you must execute every _setup_ file in
> order to setup every tool.

## LICENSE
MIT License (MIT)

Copyright (c) 2015 Rodrigo González López
