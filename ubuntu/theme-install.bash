# reference: https://drasite.com/flat-remix

# Adding ppa:daniruiz/flat-remix to apt repositories
sudo add-apt-repository ppa:daniruiz/flat-remix
sudo apt update

# Installing flat-remix (using apt)
sudo apt install flat-remix -y

# Installing flat-remix-gtk (using apt)
sudo apt install flat-remix-gtk -y

# gsettings list-keys org.gnome.desktop.interface
gsettings set org.gnome.desktop.interface gtk-theme 'Flat-Remix-GTK-Blue-Dark-Solid'
gsettings set org.gnome.desktop.interface icon-theme 'Flat-Remix-Blue-Dark'

# Installing gnome-tweak-tool (using apt)
sudo apt install gnome-tweak-tool -y
