# step only necessary for Ubuntu 18.04
blue_text "Adding ppa:alexlarsson/flatpak to apt repositories"
sudo add-apt-repository ppa:alexlarsson/flatpak
sudo apt update

green_text "Installing flatpak (using apt)"
sudo apt install flatpak -y

green_text "Installing gnome-software-plugin-flatpak (using apt)"
sudo apt install gnome-software-plugin-flatpak -y

green_text "Adding flathub to flatpak"
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
