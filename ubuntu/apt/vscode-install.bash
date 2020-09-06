green_text "Installing prerequisites for vscode"
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

wget -q https://packages.microsoft.com/keys/microsoft.asc -O- | sudo apt-key add -

blue_text "Adding vscode to apt repositories"
sudo add-apt-repository 'deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main'
sudo apt update

green_text "Installing vscode (using apt)"
sudo apt install code
