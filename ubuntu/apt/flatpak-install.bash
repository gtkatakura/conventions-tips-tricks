green_text "Installing flatpak (using apt)"
sudo apt install flatpak -y

green_text "Installing gnome-software-plugin-flatpak (using apt)"
sudo apt install gnome-software-plugin-flatpak -y

green_text "Adding flathub to flatpak"
flatpak remote-add flathub https://flathub.org/repo/flathub.flatpakrepo --user --if-not-exists
