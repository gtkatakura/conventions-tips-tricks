green_text "Installing prerequisites for virtualbox"
sudo apt install software-properties-common apt-transport-https wget -y

green_text "Installing virtualbox (using apt)"
sudo apt install virtualbox -y

# TODO: https://askubuntu.com/questions/533071/virtualbox-4-12-shared-clipboard-not-working-in-ubuntu14-04
# green_text "Installing virtualbox-guest-dkms"
# sudo apt-get install virtualbox-guest-dkms
