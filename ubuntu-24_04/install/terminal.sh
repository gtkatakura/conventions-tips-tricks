#!/bin/bash
# shellcheck source=/dev/null

sudo apt update -y

# Run terminal installers
for installer in ~/.local/share/takashi/ubuntu-24_04/install/terminal/*.sh; do source "$installer"; done
