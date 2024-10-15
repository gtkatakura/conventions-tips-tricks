COLOR_OFF="\[\033[0m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

export PS1="${GREEN}\w ${YELLOW}\$(parse_git_branch)${COLOR_OFF}$ "
# export PS1="${GREEN}\w ${YELLOW}\$(parse_git_branch)${COLOR_OFF}\nλ "
# export PS1="${GREEN}\w ${COLOR_OFF}$ "
# export PS1="${YELLOW}$(parse_git_branch)${COLOR_OFF}$ "
