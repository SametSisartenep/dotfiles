# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
#ZSH_THEME="oceanic"
ZSH_THEME="oceanic"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git docker web-search zsh-syntax-highlighting)

# User configuration

# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

unsetopt correct_all
setopt correct

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Preprocessing flags
CPPFLAGS='-D_FORTIFY_SOURCE=2'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export CFLAGS='-Wall -Wextra -Werror -Wformat-security -Wpointer-arith -Wformat-nonliteral -fno-exceptions -fstack-protector-strong -fsanitize=safe-stack -Winit-self --param=ssp-buffer-size=4 -Wpedantic -pedantic -pipe -O2 -fpie -pie -Wl,--no-undefined -Wl,--build-id=sha1 -Wl,-z,relro -Wl,-z,now -Wl,-O1a -s'
export CXXFLAGS='-Wall -Wextra -Werror -fno-exceptions -fstack-protector-strong -Wl,-z,relro -Wl,-z,now -Wformat-security -Wpointer-arith -Wformat-nonliteral -Winit-self -Wl,-O1a -Wl,--no-undefined -Wl,--build-id=sha1 -Wpedantic -pedantic'

# Linking flags
#export LD_LIBRARY_PATH="/usr/local/lib/$USER:$LD_LIBRARY_PATH"
export LDFLAGS='-Wall -Werror'

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias jump='clear && ls -Filas'
alias rmhard='rm -rfv'
alias rmwarn='rm -rfvi'
alias rmsec='bleachbit -s'
alias rmsec2='shred -uv'
alias as='as --warn --statistics'
alias hd='od -Ax -tx1z -v' # Thanks Matt!
alias jobs='jobs -l'
alias get_window_geometry="xwininfo -id $(xprop -root 2> /dev/null | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')"

#  Docker
## Remove exited containers
alias dockrec='docker ps -a -f status=exited -q | xargs -r docker rm -v'

# Input Method configuration
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
# ibus-daemon -drx

# Keyboard config
if [ ! -z $DISPLAY ];then
  if [[ ! "$(setxkbmap -query | grep layout | awk '{print $2}')" == "es" ]];then
    setxkbmap es
  fi
fi

# Zsh Syntax Highlighters
ZSH_HIGHLIGHT_HIGHLIGHTERS=(main brackets pattern cursor)
ZSH_HIGHLIGHT_STYLES[alias]='fg=magenta,bold'
ZSH_HIGHLIGHT_STYLES[precommand]='fg=magenta'
ZSH_HIGHLIGHT_STYLES[command]='fg=blue,bold'
ZSH_HIGHLIGHT_PATTERNS+=('rm' 'fg=black,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rm -*f*' 'fg=white,bold,bg=red')
ZSH_HIGHLIGHT_PATTERNS+=('rmhard' 'fg=white,bold,bg=red')

# Custom Utilities
export UTILS_PATH=$HOME/utils
export PATH="$UTILS_PATH:$PATH"

# Default Terminal
export TERM=screen-256color

# Go Path
export GOPATH=$HOME/Go
export PATH="$GOPATH/bin:$PATH"

# Plan9 from User Space
unalias 9
export PLAN9=/usr/lib/plan9/

# Android Platform Tools
#export PATH="/opt/android-sdk/platform-tools:$PATH"

# TMux
#if which tmux >/dev/null 2>&1; then
#   If no session is started, start a new session
#  test -z ${TMUX} && tty | grep pts >/dev/null && tmux
#
#   When quitting tmux, try to attach
#  while test -z ${TMUX}; do
#    tmux attach 2>/dev/null || break
#  done
#fi
