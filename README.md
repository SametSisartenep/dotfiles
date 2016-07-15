![dotfiles logo](dotfiles-logo.png)

My dotfiles and sysconfig files - vim, neovim, zsh, tmux, git, rbenv, etc.

> **NOTE:**
> Most of the config files are based on Arch Linux.

# Some info about the config files.

**Base** config files (System Independent)

- `.fonts` *// Personal collection of fonts.*
- `.themes` *// GTK2, GTK3 themes.*
- `.vim` *// Vim infrastructure directory (include Pathogen + Mods).*
- `.vimrc` *// Vim config file.*
- `.vimrc-global` *// Vim global config file (copied to /etc/vimrc).*
- `.config/nvim` *// NeoVim infrastructure directory (include Pathogen + Plugins).*
- `.zshrc` *// Zsh config file (custom ENV variables + aliases).*
- `.oh-my-zsh` *// Oh My Zsh repo.*
- `.tmux.conf` *// Tmux config file.*
- `.gnupg` *// GnuPG hardened config file.*
- `.gitconfig` *// Git config file (diff colors + gpg signing + custom extensions).*
- `.gdbinit` *// GDB config file (python skin to improve UI).*
- `clang` *// Clang latest release (from repo).*
- `tcpdump` *// Use tcpdump without root.*
- `tor` *// Tor config file.*
- `shen` *// A set of scripts and console games.*
- `msf` *// Metasploit Framework basic config file.*

**Xorg** config files (System Dependent)

- `20-intel.conf` *// Enables Tear Free Intel graphics option.*
- `52-elantech-touchpad.conf` *// Detailed spec for the touchpad.*
- `.drirc` *// Disables VSync, so you use Intel Triple Buffering.*
- `.xbindkeysrc` *// Keyboard shortcuts config.*
- `.xinitrc` *// Xorg init file. Based on AwesomeWM*
- `.xscreensaver` *// XScreensaver preferences file.*

## LICENSE

[![License](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)
