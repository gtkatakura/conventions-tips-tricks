green_text "Downloading Watchman (deb)"
sudo curl -L 'https://github.com/facebook/watchman/releases/download/v2023.04.10.00/watchman_ubuntu22.04_v2023.04.10.00.deb' -o /tmp/watchman.deb

green_text "Installing Watchman"
sudo apt install /tmp/watchman.deb -y
