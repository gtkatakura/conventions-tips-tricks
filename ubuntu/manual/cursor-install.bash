green_text "Get the download link of the latest version of Cursor"
cursor_download_link=$(
  curl -s 'https://www.cursor.com/api/dashboard/get-download-link' \
    -H 'content-type: application/json' \
    --data-raw '{"platform":5}' \
  | jq -r '.cachedDownloadLink'
)

green_text "Downloading Cursor (AppImage)"
sudo curl -L "$cursor_download_link" -o /opt/cursor.appimage

green_text "Creating the desktop shortcut"
sudo touch /usr/share/applications/cursor.desktop

green_text "Configuring the desktop shortcut"
cat <<EOF | sudo tee /usr/share/applications/cursor.desktop
[Desktop Entry]
Name=Cursor
Icon=/opt/cursor.png
Type=Application
Categories=Development;
EOF
