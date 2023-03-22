green_text "Installing openssh-server (using apt)"
sudo apt install openssh-server -y

blue_text "Disabling ssh server (systemctl disable ssh)"
sudo systemctl disable ssh
