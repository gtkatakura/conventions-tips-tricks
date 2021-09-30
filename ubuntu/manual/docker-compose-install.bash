green_text "Installing docker-compose@1.29.2"
sudo curl -L "https://github.com/docker/compose/releases/download/1.29.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

green_text "Configuring docker-compose"
sudo chmod +x /usr/local/bin/docker-compose
