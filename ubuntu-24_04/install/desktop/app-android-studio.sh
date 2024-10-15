#!/bin/bash

# https://reactnative.dev/docs/set-up-your-environment
# https://developer.android.com/studio/run/emulator-acceleration?hl=pt-br#vm-linux

green_text "Installing Android Studio (using flatpak)"
flatpak install flathub com.google.AndroidStudio -y --user

# ref: https://github.com/flatpak/flatpak/issues/1437
flatpak override --user --filesystem=host com.google.AndroidStudio

# ref: https://absprog.com/post/qemu-kvm-ubuntu-24-04
green_text "Installing qemu-kvm (using apt)"
sudo apt install qemu-kvm libvirt-daemon-system libvirt-clients virt-manager -y

blue_text "Adding user to kvm group"
sudo adduser "$USER" kvm
