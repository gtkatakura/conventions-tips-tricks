#!/bin/bash

PS3='Please enter your choice: '
devices=($($ANDROID_HOME/emulator/emulator -list-avds))

select device in "${devices[@]}"
do
  if [ -z "$device" ]
  then
    echo "Invalid option $REPLY"
  else
    $ANDROID_HOME/emulator/emulator -avd $device &> /dev/null &
    exit
  fi
done
