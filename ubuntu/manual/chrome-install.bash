green_text "Downloading Google Chrome (stable_amd64)"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

green_text "Installing Google Chrome (stable_amd64)"
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb
