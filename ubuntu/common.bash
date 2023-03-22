#!/bin/bash

set -e

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

current_dir="$(dirname "$0")"
root_dir="$current_dir/.."
