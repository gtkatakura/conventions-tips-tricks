green_text "Downloading 1Password (deb)"
sudo curl -L 'https://downloads.1password.com/linux/debian/amd64/stable/1password-latest.deb' -o /tmp/1password.deb

green_text "Installing 1Password"
sudo apt install /tmp/1password.deb -y
