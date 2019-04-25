# configure git
git config --global user.email "gt.katakura@gmail.com"
git config --global user.name "gtkatakura"

git config --global credential.helper store

source ../git/aliases.bash

# configure .termscripts
mkdir -p ~/.termscripts
cp -r ../bash ~/.termscripts

if ! $(grep "~/.termscripts/load-all.bash" $HOME/.bashrc &>/dev/null); then
  echo "Adding ~/.termscripts/load-all.bash script to $HOME/.bashrc"
  echo "source ~/.termscripts/load-all.bash" >> $HOME/.bashrc
fi

# install vim
sudo apt install vim -y

# install curl
sudo apt install curl -y

# install chrome
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

# install flatpak
sudo apt install flatpak -y
sudo apt install gnome-software-plugin-flatpak -y

# configure flathub
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

# install vscode
flatpak install flathub com.visualstudio.code -y

# install discord
flatpak install flathub com.discordapp.Discord -y

# install spotify
flatpak install flathub com.spotify.Client -y

# install slack
flatpak install flathub com.slack.Slack -y

# install dbeaver
flatpak install flathub io.dbeaver.DBeaverCommunity

# install zoom
flatpak install flathub us.zoom.Zoom -y

# install heroku
sudo snap install --classic heroku

# install asdf
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc

# install asdf-ruby
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git

# install asdf-nodejs
asdf plugin-add nodejs https://github.com/asdf-vm/asdf-nodejs.git
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring

# install docker
sudo snap install docker

sudo groupadd docker
sudo usermod -aG docker $USER

# install docker-compose
sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
sudo chmod +x /usr/local/bin/docker-compose