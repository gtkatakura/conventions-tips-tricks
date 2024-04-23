# npx envinfo --system --markdown

alias ..='cd ..'
alias ...='cd ../..'

blue_text() {
  echo -e "\e[34m$*\e[39m"
}

yellow_text() {
  echo -e "\e[33m$*\e[39m"
}

red_text() {
  echo -e "\e[91m$*\e[39m"
}

green_text() {
  echo -e "\e[32m$*\e[39m"
}
