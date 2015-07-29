![dotfiles logo](dotfiles-logo.png)

My dotfiles and sysconfig files - vim, zsh, tmux, git, rbenv, nvm, go, etc.

> **NOTE:**
> Most of the config files are based on Arch Linux.

# Usage

Clone the repo:

`~$ git clone https://github.com/SametSisartenep/dotfiles.git`

Then setup every tool you want by applying its respective `setup` file.

> I'm going to create a Makefile to handle all this, but so far, that's the
> way I do it ^^.

# The `install.sh` file

This file is going to copy the config files listed below:

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

> You can hack it if you don't want some of the files, by the way I'm going
> to facilitate that process with the future Makefile.

## LICENSE

[![License](http://img.shields.io/badge/license-BSD3-brightgreen.svg)](http://opensource.org/licenses/BSD-3-Clause)
