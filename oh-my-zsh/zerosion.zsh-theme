# vi: ft=zsh :
#

ruby_version='%{$fg[red]%}‹$(rbenv version | sed -e "s/ (set.*$//")›%{$reset_color%}'
python_version='%{$fg[yellow]%}‹$(python --version | sed -e "s/Python\s*//")›%{$reset_color%}'

PROMPT='%{$fg[cyan]%}%n%{$reset_color%}%{$fg_bold[cyan]%}@%m%{$reset_color%} %{$fg_bold[black]%}%2~ %{$reset_color%}$(git_prompt_info)%{$reset_color%}%0(#.%{$fg_bold[red]%}#.%{$fg[yellow]%}%%)%{$reset_color%} '
RPROMPT='%0(?..%127(?.%{$fg[blue]%}COMMAND NOT FOUND.%130(?.%{$fg[cyan]%}TERMINATED.%{$fg[red]%}ERROR)))%{$reset_color%}'"${ruby_version}${python_version}"

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg_bold[yellow]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%} "
