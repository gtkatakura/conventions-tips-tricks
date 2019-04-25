alias gs='git status'
alias ga='git add'
alias gr='git reset'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gls='git ls'
alias gldr='git ldr'

function gor {
  gb | grep $1 | head -1 | sed -e s/\\s//g | sed -e s/\*//g | xargs git checkout
}
