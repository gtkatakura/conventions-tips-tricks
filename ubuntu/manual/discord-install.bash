green_text "Downloading Discord (deb)"
sudo curl -L 'https://discord.com/api/download?platform=linux&format=deb' -o /tmp/discord.deb

green_text "Installing Discord"
sudo apt install /tmp/discord.deb -y
