#!/bin/bash

blue_text "Installing AppImage dependencies"
sudo add-apt-repository universe -y
sudo apt install libfuse2t64

# https://github.com/electron/electron/issues/42510#issuecomment-2171583086
blue_text "Configuring AppImage dependencies"
sudo sysctl -w kernel.apparmor_restrict_unprivileged_userns=0

green_text "Downloading Cursor (AppImage)"
cursor_download_link=$(
  curl -sL 'https://www.cursor.com/api/download?platform=linux-x64&releaseTrack=stable' \
    -H 'content-type: application/json' \
  | jq -r '.downloadUrl'
)

sudo curl -L "$cursor_download_link" -o /opt/cursor.appimage
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
