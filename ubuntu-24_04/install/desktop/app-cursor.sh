#!/bin/bash

blue_text "Installing AppImage dependencies"
sudo add-apt-repository universe -y
sudo apt install libfuse2t64

# https://github.com/electron/electron/issues/42510#issuecomment-2171583086
blue_text "Configuring AppImage dependencies"
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

green_text "Downloading Cursor (AppImage)"
sudo curl -L https://downloader.cursor.sh/linux/appImage/x64 -o /opt/cursor.appimage
sudo chmod +x /opt/cursor.appimage

green_text "Creating the desktop shortcut"
sudo touch /usr/share/applications/cursor.desktop

green_text "Configuring the desktop shortcut"
cat <<EOF | sudo tee /usr/share/applications/cursor.desktop
[Desktop Entry]
Name=Cursor
Exec=/opt/cursor.appimage --no-sandbox %U
Icon=/home/$USER/.local/share/takashi/ubuntu-24_04/applications/icons/cursor.png
Type=Application
Categories=Development;
EOF
