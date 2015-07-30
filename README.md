![dotfiles logo](dotfiles-logo.png)

My dotfiles and sysconfig files - vim, zsh, tmux, git, rbenv, nvm, go, etc.

> **NOTE:**
> Most of the config files are based on Arch Linux.

# Usage

Clone the repo:

`~$ git clone https://github.com/SametSisartenep/dotfiles.git`

> **Make** sure you have `make` on your system ;-)

Apply the options following the command below.

`~$ make [option]`

Setup Options:

- `base` _// Base configuration files._
- `xorg-sys` _// Xorg system wide config files._
- `xorg-usr` _// Xorg user config files._
- `xorg` _// Intalls system + user config files._
- `clang` _// LLVM + Clang setup._
- `llvm-clang` _// LLVM + Clang setup._
- `git-extras-tj` _// Git extras (By @tj) setup._
- `git-extras` _// Shortcut to **git-extras-tj**._
- `git` _// Shorcut to **git-extras-tj**._
- `go` _// Go setup._
- `msf` _// Metasploit Framework database config file._
- `npm` _// NPM modules installation._
- `nvm` _// NVM setup._
- `oh-my-zsh` _// oh-my-zsh Framework setup._
- `python` _// Python pip -> powerline + virtualenv setup._
- `qemu` _// Qemu setup._
- `rbenv` _// rbenv ruby (2.2.2) setup._
- `v8` _// V8 Engine setup._

# Some info about the config files.

**Base** config files (System Independent)

- `.fonts` *// Personal collection of fonts.*
- `.themes` *// GTK2, GTK3 themes.*
- `.vim` *// Vim infrastructure directory (include Pathogen + Mods).*
- `.vimrc` *// Vim config file.*
- `.vimrc-global` *// Vim global config file (copied to /etc/vimrc).*
- `.zshrc` *// Zsh config file (custom ENV variables + aliases).*
- `.tmux.conf` *// Tmux config file.*
- `.jshintrc` *// JSHint code style spec file.*

**Xorg** config files (System Dependent)

- `20-intel.conf` *// Enables Tear Free Intel graphics option.*
- `52-elantech-touchpad.conf` *// Detailed spec for the touchpad.*
- `.drirc` *// Disables VSync, so you use Intel Triple Buffering.*
- `.xbindkeysrc` *// Keyboard shortcuts config.*
- `.xinitrc` *// Xorg init file. Based on LXDE*
- `.xscreensaver` *// Screensaver preferences file.*

## LICENSE

[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
