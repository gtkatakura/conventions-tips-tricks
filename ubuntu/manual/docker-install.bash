# ref https://docs.docker.com/install/linux/docker-ce/ubuntu/

# sudo apt-get remove docker docker-engine docker.io containerd runc

# sudo apt-get update

green_text "Installing prerequisites for docker"
sudo apt-get install \
  apt-transport-https \
  ca-certificates \
  curl \
  gnupg-agent \
  software-properties-common -y

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

sudo apt-key fingerprint 0EBFCD88

sudo add-apt-repository \
  "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) \
  stable"

sudo apt-get update

green_text "Installing docker"
sudo apt-get install docker-ce docker-ce-cli containerd.io -y

blue_text "Configuring group for docker"
sudo groupadd docker -f
sudo usermod -aG docker $USER

# https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers
