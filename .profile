#
# .profile: Login Korn Shell resources.
#
# Copyright (C) 2016 Rodrigo González López.
# All rights reserved.
#
# Load environment
if [ -f $HOME/.kshrc -a -r $HOME/.kshrc ]; then
  ENV=$HOME/.kshrc
  export ENV
fi

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='nvim'
else
  export EDITOR='vim'
fi

# Pager settings
PAGER=less
LESS=-R

# Preprocessing flags
export CPPFLAGS='-D_FORTIFY_SOURCE=2'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"
export CFLAGS='-Wall -Wextra -Werror -Wformat-security -Wpointer-arith -Wformat-nonliteral -fno-exceptions -fstack-protector-strong -fsanitize=safe-stack -Winit-self --param=ssp-buffer-size=4 -Wpedantic -pedantic -pipe -O2 -fpie -pie -Wl,--no-undefined -Wl,--build-id=sha1 -Wl,-z,relro -Wl,-z,now -Wl,-O1a -s'
export CXXFLAGS='-Wall -Wextra -Werror -fno-exceptions -fstack-protector-strong -Wl,-z,relro -Wl,-z,now -Wformat-security -Wpointer-arith -Wformat-nonliteral -Winit-self -Wl,-O1a -Wl,--no-undefined -Wl,--build-id=sha1 -Wpedantic -pedantic'

# Linking flags
#export LD_LIBRARY_PATH="/usr/local/lib/$USER:$LD_LIBRARY_PATH"
export LDFLAGS='-Wall -Werror'

# Custom Utilities
export UTILS_PATH=$HOME/utils
export PATH="$UTILS_PATH:$PATH"

# Default Terminal
export TERM=st-256color

# Go Path
export GOPATH=$HOME/Go
export PATH="$GOPATH/bin:$PATH"

# Plan9
export PLAN9=/usr/lib/plan9

# Android Platform Tools
#export PATH="/opt/android-sdk/platform-tools:$PATH"
