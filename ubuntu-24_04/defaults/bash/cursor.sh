#!/bin/bash

if ! command -v cursor >/dev/null 2>&1; then
  function cursor {
    if [[ $1 =~ ^cursor:// ]]; then
      (nohup /opt/cursor.appimage --no-sandbox --open-url "$1" > /dev/null 2>&1 &)
    else
      (nohup /opt/cursor.appimage --no-sandbox "$@" > /dev/null 2>&1 &)
    fi
  }
fi
