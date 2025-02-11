#!/bin/bash

# AWS aliases
alias awslocal="AWS_ACCESS_KEY_ID=test AWS_SECRET_ACCESS_KEY=test AWS_DEFAULT_REGION=${DEFAULT_REGION:-$AWS_DEFAULT_REGION} aws --endpoint-url=http://${LOCALSTACK_HOST:-localhost}:4566"

# Cursor aliases
function cursor {
  (nohup /opt/cursor.appimage --no-sandbox "$@" > /dev/null 2>&1 &)
}

alias code='cursor'

# Git aliases
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

# Docker aliases
alias dc='docker compose'
alias dcu='dc up'
alias dcd='dc down'
alias dcs='dc stop'
alias dcr='dc run'
alias dcrr='dc run --rm'
alias dcb='dcrr --service-ports'
alias rdocker='sudo service docker restart'

# Make aliases
alias m='make'

# Node.js aliases
alias y='yarn'
alias turbo='npx turbo'
alias eas='npx eas'

# Utility aliases
function checkip {
  curl -s https://checkip.amazonaws.com
}

function reload() {
  # shellcheck disable=SC1090
  source ~/.bashrc
}

alias r='reload'
alias rr='reload && reset'
