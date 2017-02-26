# $Antares: .profile,v 1.0 2017/02/16 06:01 sam Exp $
#
# Login [MirBSD] Korn Shell resources.
#
# Copyright (C) 2016-2017 Rodrigo González López.
# All rights reserved.
#
# Load environment
case $0 in
  *mksh)
      if [ -f $HOME/.mkshrc -a -r $HOME/.mkshrc ]; then
        ENV=$HOME/.mkshrc
        export ENV
      fi
      ;;
  *ksh)
      if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
        ENV=$HOME/.kshrc
        export ENV
      fi
      ;;
esac

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvi'
  export VISUAL='nvi'
else
  export EDITOR='vis'
  export VISUAL='vis'
fi

# Pager settings
export PAGER=less
export LESS=-R

# grep highlighting color
export GREP_COLOR='4;30'

# Custom Utilities
BIN=~/bin
export PATH="$BIN:$PATH"

# Default Terminal
export TERM=st-256color

# Go Path
export GOPATH=$HOME/Go
export PATH="$GOPATH/bin:$PATH"

# Plan9
export PLAN9=/usr/lib/plan9

# Freetype Properties
export FREETYPE_PROPERTIES="truetype:interpreter-version=40"
