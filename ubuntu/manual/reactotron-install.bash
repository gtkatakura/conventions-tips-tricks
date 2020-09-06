green_text "Downloading reactotron@2.17.1"
wget -P /tmp https://github.com/infinitered/reactotron/releases/download/v2.17.1/reactotron-app_2.17.1_amd64.deb

green_text "Installing reactotron"
sudo apt install /tmp/reactotron-app_2.17.1_amd64.deb -y
