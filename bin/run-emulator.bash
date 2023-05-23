#!/bin/bash

PS3='Please enter your choice: '
devices=$("$ANDROID_HOME"/emulator/emulator -list-avds)
option=$1

if [ -n "$option" ]; then
  device=${devices[$option - 1]}

  if [ -n "$device" ]; then
    echo "Opening the device: $device"
    "$ANDROID_HOME"/emulator/emulator -avd "$device" &> /dev/null &
    exit
  fi
fi

select device in "${devices[@]}"
do
  if [ -z "$device" ]; then
    echo "Invalid option $REPLY"
  else
    echo "Opening the device: $device"
    "$ANDROID_HOME"/emulator/emulator -avd "$device" &> /dev/null &
    exit
  fi
done
