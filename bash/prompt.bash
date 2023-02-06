COLOR_OFF="\[\033[0m\]"
BLUE="\[\033[0;34m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"

function parse_git_branch {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/(\1) /'
}

function get_vtex_io_info {
  function get_vtex_json {
    cat "$HOME"/.config/configstore/vtex.json
  }

  function get_vtex_account {
    get_vtex_json | jq .account -r
  }

  function get_vtex_workspace {
    get_vtex_json | jq .workspace -r
  }

  if [ -d .git ]; then
    # [ $(git remote -v) =~ "github.com/vtex" ]
    if [ -f "$HOME/.config/configstore/vtex.json" ] && [ "$(get_vtex_account)" != "null" ]; then
      echo "[$(get_vtex_account)/$(get_vtex_workspace)] "
    fi
  fi
}

export PS1="${GREEN}\w ${BLUE}\$(get_vtex_io_info)${YELLOW}\$(parse_git_branch)${COLOR_OFF}$ "
# export PS1="${GREEN}\w ${YELLOW}\$(parse_git_branch)${COLOR_OFF}\nλ "
# export PS1="${GREEN}\w ${COLOR_OFF}$ "
# export PS1="${YELLOW}$(parse_git_branch)${COLOR_OFF}$ "
