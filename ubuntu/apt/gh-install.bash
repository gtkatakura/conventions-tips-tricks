# ref: https://github.com/cli/cli/blob/trunk/docs/install_linux.md

blue_text "Adding https://cli.github.com/packages to apt repositories"
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-key C99B11DEB97541F0
sudo add-apt-repository https://cli.github.com/packages -y
sudo apt update

green_text "Installing gh (using apt)"
sudo apt install gh -y
