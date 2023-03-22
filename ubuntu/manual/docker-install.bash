# https://docs.docker.com/install/linux/docker-ce/ubuntu/

green_text "Installing prerequisites for docker"
sudo apt-get install \
  ca-certificates \
  curl \
  gnupg \
  lsb-release

blue_text "Adds GPG key (docker)"
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

blue_text "Setting up the repository (docker)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" \
  | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

green_text "Installing docker"
sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

blue_text "Configuring group for docker"
sudo groupadd docker -f
sudo usermod -aG docker "$USER"
