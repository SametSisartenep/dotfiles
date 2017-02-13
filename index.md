![dotfiles logo](dotfiles-logo.png)

My dotfiles and sysconfig files - neovim, vis, mksh, git, etc.

> **NOTE:**
> Most of the config files are based on Void Linux.

# Some info about the config files.

**Base** config files (System Independent)

- `.fonts` *// Personal collection of fonts.*
- `.config/nvim` *// NeoVim infrastructure directory (include Pathogen + Plugins).*
- `.profile` *// [MirBSD] Korn Shell login session resources.*
- `.mkshrc` *// MirBSD Korn Shell interactive session resources.*
- `.kshrc` *// Korn Shell interactive session resources.*
- `.zshrc` *// Zsh interactive session resources.*
- `.zprofile` *// Zsh login session resources.*
- `.gnupg` *// GnuPG hardened config file.*
- `.gitconfig` *// Git config file (diff colors + gpg signing + custom extensions).*
- `.gdbinit` *// GDB config file (python skin to improve UI).*
- `tcpdump` *// Use tcpdump without root.*
- `tor` *// Tor config file.*
- `shen` *// A set of scripts and console games.*

**Xorg** config files (System Dependent)

- `20-intel.conf` *// Enables Tear Free Intel graphics option.*
- `52-elantech-touchpad.conf` *// Detailed spec for the touchpad.*
- `.drirc` *// Disables VSync, so you use Intel Triple Buffering.*
- `.xinitrc` *// Xorg init file. Based on DWM*

## LICENSE
```
Copyright (c) 2017 Rodrigo González López <rodrigosloop at gmail dot com>

Permission to use, copy, modify, and distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY
SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF OR
IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
```

