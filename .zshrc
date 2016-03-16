# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="linuxonly"
ZSH_THEME="zerosion2"

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
plugins=(git docker)

# User configuration

# export PATH=$HOME/bin:/usr/local/bin:$PATH
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='vim'
fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# Linking flags
export LD_LIBRARY_PATH="/usr/local/lib/$USER:$LD_LIBRARY_PATH"

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

alias jump='clear && ls -laF'
alias rmhard='rm -rfv'
alias rmwarn='rm -rfvi'
alias rmsec='bleachbit -s'
alias rmsec2='shred -uv'
alias v='vim'
alias get_window_geometry="xwininfo -id $(xprop -root 2> /dev/null | awk '/_NET_ACTIVE_WINDOW\(WINDOW\)/{print $NF}')"

#  Docker
## Remove exited containers
alias dockrec='docker ps -a -f status=exited -q | xargs -r docker rm -v'

# Input Method configuration
# export GTK_IM_MODULE=ibus
# export XMODIFIERS=@im=ibus
# export QT_IM_MODULE=ibus
# ibus-daemon -drx

# screenshots folder
PICTURES=$HOME/Imágenes/screenshots

# Custom Utilities
export UTILS_PATH=$HOME/utils
export PATH="$UTILS_PATH:$PATH"

# Default Terminal
export TERM=screen-256color

# Rbenv setup
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

# Nvm setup
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

# MongoDB path
export PATH="$HOME/tools/mongodb/bin:$PATH"

# Go Path
export GOROOT="$HOME/tools/go"
export GOPATH=$HOME/projects/go
export PATH="$GOROOT/bin:$GOPATH/bin:$PATH"

# Google Depot Tools
export PATH="$HOME/tools/depot_tools:$PATH"

# Android Platform Tools
export PATH="/opt/android-sdk/platform-tools:$PATH"

# TMux
if which tmux >/dev/null 2>&1; then
  # If no session is started, start a new session
  test -z ${TMUX} && tty | grep pts >/dev/null && tmux

  # When quitting tmux, try to attach
  while test -z ${TMUX}; do
    tmux attach 2>/dev/null || break
  done
fi
