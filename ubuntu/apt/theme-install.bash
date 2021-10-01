blue_text "Adding ppa:daniruiz/flat-remix to apt repositories"
sudo add-apt-repository ppa:daniruiz/flat-remix -y
sudo apt update

green_text "Installing Flat ICON theme (using apt)"
sudo apt install flat-remix -y

blue_text "Configuring Flat ICON theme"
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Blue-Dark"

green_text "Installing Flat GTK theme (using apt)"
sudo apt install flat-remix-gtk -y

green_text "Installing Flat GNOME theme (using apt)"
sudo apt install make -y
sudo apt install flat-remix-gnome -y

# TODO: move to another script
green_text "Installing GNOME Shell Extensions"
sudo apt install gnome-shell-extensions -y

# blue_text "Configuring gsettings to use Flat-Remix"
gsettings set org.gnome.desktop.interface icon-theme "Flat-Remix-Blue-Dark"

gsettings set org.gnome.desktop.interface gtk-theme "Flat-Remix-GTK-Blue-Dark-Solid"

gsettings set org.gnome.shell disable-user-extensions false
gnome-shell-extension-tool -e "user-theme@gnome-shell-extensions.gcampax.github.com"
gsettings set org.gnome.shell.extensions.user-theme name "Flat-Remix-Dark-fullPanel"

# TODO: move to another script
green_text "Installing gnome-tweak-tool (using apt)"
sudo apt install gnome-tweak-tool -y

# gnome-shell-extension-tool -e "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
# gnome-shell-extension-tool -e "places-menu@gnome-shell-extensions.gcampax.github.com"
# gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
# gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "RIGHT"

# sudo apt-get install chrome-gnome-shell
# https://extensions.gnome.org/extension/841/freon/
# https://extensions.gnome.org/extension/750/openweather/
