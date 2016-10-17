# -*- mode: ksh -*-
# vi: set ft=ksh :
#
# .kshrc: Interactive Korn Shell resources.
#
# Copyright (C) 2016 Rodrigo González López.
# All rights reserved.
#
# Prompt
case $LOGNAME in
  root) PS1="\# "
    ;;
  *) PS1="\% "
    ;;
esac

# Functions
clipcopy() {
  file=$1
  if [[ -z $file ]]; then
    xsel --clipboard --input
  else
    cat "$file" | xsel --clipboard --input
  fi
}

clippaste() {
      xsel --clipboard --output
}

# Aliases
alias ls='ls --color=tty'
alias jump='clear && ls -Filas'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias rmhard='rm -rfv'
alias rmwarn='rm -rfvi'
alias rmsec='bleachbit -s'
alias rmsec2='shred -uv'
alias as='as --warn --statistics'
alias memcheck='valgrind --leak-check=full -v'
alias hd='od -Ax -tx1z -v' # Thanks Matt!
alias jobs='jobs -l'
alias get_window_geometry="xwininfo -id $(xprop -root 2> /dev/null | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')"

# GnuPG
GPG_TTY=$(tty)

#  Docker
## Remove exited containers
alias dockrec='docker ps -a -f status=exited -q | xargs -r docker rm -v'

# Keyboard config
if [ ! -z $DISPLAY ];then
  if [[ ! "$(setxkbmap -query | grep layout | awk '{print $2}')" == "es" ]];then
    setxkbmap es
  fi
fi

# Emacs Mode
set -o emacs
