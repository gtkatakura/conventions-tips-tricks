#!/bin/bash

function keyboard_code {
 setxkbmap -model pc105 -layout us -variant alt-intl,euro,
}

function keyboard_text {
 setxkbmap -model pc105 -layout us -variant intl
}

alias kc='keyboard_code'
alias kt='keyboard_text'
