alias gp='git pull'
alias gs='git status'
alias ga='git add'
alias gr='git reset'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gls='git ls'
alias gldr='git ldr'
alias gcm='npx git-cz'

function gor {
  gb | grep "$1" | head -1 | sed -e s/\\s//g | sed -e s/\*//g | xargs git checkout
}

function gom {
  gb | grep -E 'main|master' | sed -e s/\*//g | xargs git checkout
}
