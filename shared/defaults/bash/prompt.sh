#!/bin/bash

COLOR_OFF="\[\033[0m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

if [ -n "$ALACRITTY_WINDOW_ID" ]; then
  PS1=$' \uf0a9'
  PS1="\[\e]0;\w\a\]${GREEN}$PS1 ${YELLOW}\$(parse_git_branch)${COLOR_OFF}$ "
else
  PS1="${GREEN}\w ${YELLOW}\$(parse_git_branch)${COLOR_OFF}$ "
fi

export PS1
