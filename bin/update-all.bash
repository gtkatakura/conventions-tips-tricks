#!/bin/bash

CURRENT_DIR="$(dirname "$(realpath "$0")")"

source $CURRENT_DIR/common.bash

green_text "Run: apt update & upgrade --autoremove -y? (y/N)"
read -rsn1 update_apt

if [[ $update_apt == 'y' ]]; then
  blue_text 'Updating...'
  sudo apt update && sudo apt upgrade --autoremove -y
else
  yellow_text 'Ok, skipping...'
fi

green_text "Run: snap refresh? (y/N)"
read -rsn1 update_snap

if [[ $update_snap == 'y' ]]; then
  blue_text 'Updating...'
  sudo snap refresh
else
  yellow_text 'Ok, skipping...'
fi

green_text "Run: flatpak update -y? (y/N)"
read -rsn1 update_flatpak

if [[ $update_flatpak == 'y' ]]; then
  blue_text 'Updating...'
  sudo flatpak update -y
else
  yellow_text 'Ok, skipping...'
fi

