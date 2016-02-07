
###########################################################################
# Author: Rodrigo "SametSisartenep" González López <rodrigosloop@gmail.com>
# About: My dotfiles Makefile
# File: Makefile
# License: MIT
###########################################################################

BASE=.fonts .themes .vim .vimrc .vimrc-global .zshrc .tmux.conf .jshintrc

XORG_DIR=xorg/
XORG_SYS=20-intel.conf
XORG_USR=xbindkeysrc .xinitrc .xscreensaver .Xresources

setup = @./`ls -d */ | grep $(1)`setup.sh

.PHONY: *

base:
	@for file in $(BASE); do \
		if [[ $$file == ".vimrc-global" ]]; then \
			sudo -v; sudo cp -rf $$file /etc/vimrc; \
		else \
			cp -R $$file $(HOME)/; \
		fi; \
	done

xorg-sys:
	@for file in $(XORG_SYS); do \
		sudo -v; sudo cp -rf $(XORG_DIR)/$$file /etc/X11/xorg.conf.d/; \
	done

xorg-usr:
	@for file in $(XORG_USR); do \
		sudo -v; sudo cp -rf $(XORG_DIR)/$$file $(HOME)/; \
	done

xorg: xorg-sys xorg-usr

git-extras-tj:
	$(call setup,$@)

git-extras: git-extras-tj

git: git-extras-tj

msf:
	$(call setup,$@)

oh-my-zsh:
	$(call setup,$@)

rbenv:
	$(call setup,$@)
