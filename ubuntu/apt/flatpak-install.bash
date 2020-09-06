green_text "Installing flatpak (using apt)"
sudo apt install flatpak -y

green_text "Installing gnome-software-plugin-flatpak (using apt)"
sudo apt install gnome-software-plugin-flatpak -y

green_text "Adding flathub to flatpak"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
