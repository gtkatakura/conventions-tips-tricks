#!/bin/bash

COLOR_OFF="\[\033[0m\]"
GREEN="\[\033[0;32m\]"
YELLOW="\[\033[0;33m\]"
RED="\[\033[0;91m\]"
BLUE="\[\033[0;34m\]"
NO_COLOR="\[\033[0m\]"

blue_text() {
  echo -e "${BLUE}$*${NO_COLOR}"
}

yellow_text() {
  echo -e "${YELLOW}$*${NO_COLOR}"
}

red_text() {
  echo -e "${RED}$*${NO_COLOR}"
}

green_text() {
  echo -e "${GREEN}$*${NO_COLOR}"
}