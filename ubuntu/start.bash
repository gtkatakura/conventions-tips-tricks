#!/bin/bash

set -e

blue_text(){
  echo -e "\e[34m$@\e[39m"
}

yellow_text(){
  echo -e "\e[33m$@\e[39m"
}

red_text(){
  echo -e "\e[91m$@\e[39m"
}

green_text(){
  echo -e "\e[32m$@\e[39m"
}

current_dir="$(dirname "$0")"
root_dir="$current_dir/.."

# configure git
blue_text "Configuring git configs (gtkatakura <gt.katakura@gmail.com)"
git config --global user.email "gt.katakura@gmail.com"
git config --global user.name "gtkatakura"

git config --global credential.helper store

source $root_dir/git/aliases.bash

# configure .termscripts
blue_text "Configuring .termscripts"
mkdir -p ~/.termscripts
cp -r $root_dir/bash ~/.termscripts

if ! $(grep "for f in ~/.termscripts/bash/*; do source \$f; done" $HOME/.bashrc &>/dev/null); then
  echo "Adding 'for f in ~/.termscripts/bash/*; do source \$f; done' to $HOME/.bashrc"
  echo "for f in ~/.termscripts/bash/*; do source \$f; done" >> $HOME/.bashrc
fi

# install vim
green_text "Installing vim (using apt)"
sudo apt install vim -y

# install curl
green_text "Installing curl (using apt)"
sudo apt install curl -y

# install pavucontrol
green_text "Installing pavucontrol (using apt)"
sudo apt install pavucontrol -y

# install indicator-multiload (apt)
# http://www.ubuntubuzz.com/2016/11/introducing-network-speed-indicator-for-ubuntu-unity.html
# green_text "Installing indicator-multiload (using apt)"
# sudo apt install indicator-multiload -y

# install indicator-sysmonitor (apt)
green_text "Installing indicator-sysmonitor (using apt)"
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt update
sudo apt install indicator-sysmonitor -y

# install xsensors
green_text "Installing xsensors (using apt)"
sudo apt install xsensors -y

# install nitrogren
# green_text "Installing nitrogen (using apt)"
# sudo apt install nitrogen -y

# install recordmydesktop
# green_text "Installing gtk-recordmydesktop (using apt)"
# sudo apt install gtk-recordmydesktop

# install chrome
green_text "Downloading Google Chrome (stable_amd64)"
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb

green_text "Installing Google Chrome (stable_amd64)"
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# install flatpak
green_text "Installing flatpak (using apt)"
sudo apt install flatpak -y

green_text "Installing gnome-software-plugin-flatpak (using apt)"
sudo apt install gnome-software-plugin-flatpak -y

# configure flathub
green_text "Adding flathub to flatpak"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install vscode
# green_text "Installing Visual Studio Code (using snap)"
# sudo snap install code --classic

# install spotify
green_text "Installing Spotify (using flatpak)"
flatpak install flathub com.spotify.Client -y

# install slack
green_text "Installing Slack (using flatpak)"
flatpak install flathub com.slack.Slack -y
flatpak override --user --env=TZ=America/Sao_Paulo com.slack.Slack

# como nao temos mais horario de verao, estou usando temporariamente
# esse TZ para o horario ficar correto, visto que o slack esta colocando
# +1hr como o horario de verao, entao preciso de um TZ com -1hr
# flatpak override --user --env=TZ=America/Campo_Grande com.slack.Slack

# install dbeaver
green_text "Installing DBeaver (using flatpak)"
flatpak install flathub io.dbeaver.DBeaverCommunity -y

# install zoom
green_text "Installing Zoom (using flatpak)"
flatpak install flathub us.zoom.Zoom -y

# install postman
green_text "Installing Postman (using flatpak)"
flatpak install flathub com.getpostman.Postman

# install heroku
green_text "Installing Heroku (using snap)"
sudo snap install --classic heroku

# install docker
# green_text "Installing docker (using snap)"
# sudo snap install docker
# sudo ln -s /snap/bin/docker /usr/local/bin/docker

# install discord
green_text "Installing Discord (using snap)"
sudo snap install discord

# install telegram
green_text "Installing Telegram (using snap)"
sudo snap install telegram-desktop

green_text "Configuring docker"
sudo groupadd docker
sudo usermod -aG docker $USER
# https://github.com/guard/listen/wiki/Increasing-the-amount-of-inotify-watchers

# install docker-compose
green_text "Installing docker-compose@1.24.0"
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose

green_text "Configuring docker-compose"
sudo chmod +x /usr/local/bin/docker-compose

# install asdf
green_text "Downloading asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1

green_text "Installing asdf"
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

# install build-essential
green_text "Installing build-essential (using apt)"
sudo apt install build-essential -y

# install libssl-dev + libreadline-dev + zlib1g-dev
green_text "Installing libssl-dev + libreadline-dev + zlib1g-dev (using apt)"
sudo apt install -y libssl-dev libreadline-dev zlib1g-dev -y

sudo source $HOME/.asdf/asdf.sh

# install asdf-ruby
green_text "Adding ruby to asdf"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# install asdf-nodejs
green_text "Adding nodedjs to asdf"
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# asdf plugin-add python

# sudo apt-get install sqlite3 libsqlite3-dev

# install yarn
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

sudo apt update && sudo apt install yarn
