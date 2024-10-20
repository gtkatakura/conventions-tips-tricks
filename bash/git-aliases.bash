alias gp='git pull'
alias gs='git status'
alias ga='git add'
alias gr='git reset'
alias gb='git branch'
alias gd='git diff'
alias gc='git checkout'
alias gco='git commit'
alias gls='git ls'
alias gldr='git ldr'
alias gcm='npx git-cz'
alias gcwip='git commit -m "wip" --no-verify'

function gor {
  gb | grep "$1" | head -1 | sed -e s/\\s//g | sed -e s/\*//g | xargs git checkout
}

function gom {
  gb | grep -E '^\s*(main|master)\s*$' | sed -e s/\*//g | xargs git checkout
}

export GIT_EDITOR='vim'
