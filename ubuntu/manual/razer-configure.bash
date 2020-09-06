blue_text "Adding ppa:openrazer/stable to apt repositories"
sudo add-apt-repository ppa:openrazer/stable

blue_text "Adding ppa:polychromatic/stable to apt repositories"
sudo add-apt-repository ppa:polychromatic/stable
sudo apt update

green_text "Installing openrazer-meta + polychromatic (using apt)"
sudo apt install openrazer-meta polychromatic -y

# TODO: how to configure Razer BlackWidow Ultimate 2016
# to changes from static to starlight effects when ubuntu
# enter in suspends state?
