# $Antares: .zshrc,v 2.0 2016/10/17 05:18:12 samet Exp $
#
# Interactive Z Shell resources.
#
# Copyright (C) 2016 Rodrigo González López.
# All rights reserved.
#

export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="oceanic"

DISABLE_AUTO_TITLE="true"
ENABLE_CORRECTION="true"
DISABLE_UNTRACKED_FILES_DIRTY="true"

plugins=(git docker web-search zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all
setopt correct

# Aliases
alias jump='clear && ls -Filas'
alias rmhard='rm -rfv'
alias rmwarn='rm -rfvi'
alias rmsec='bleachbit -s'
alias rmsec2='shred -uv'
alias as='as --warn --statistics'
alias hd='od -Ax -tx1z -v' # Thanks Matt!
alias jobs='jobs -l'
alias get_window_geometry="xwininfo -id $(xprop -root 2> /dev/null | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')"

# Zsh Syntax Highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'
ZSH_HIGHLIGHT_PATTERNS+=('rm' 'fg=black,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -*f*' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rmhard' 'fg=white,bold,bg=red')

# GnuPG
GPG_TTY=$(tty)

#  Docker
## Remove exited containers
alias dockrec='docker ps -a -f status=exited -q | xargs -r docker rm -v'

# Plan9 from User Space
unalias 9

# Keyboard config
if [ ! -z $DISPLAY ];then
  if [[ ! "$(setxkbmap -query | grep layout | awk '{print $2}')" == "es" ]];then
    setxkbmap es
  fi
fi
