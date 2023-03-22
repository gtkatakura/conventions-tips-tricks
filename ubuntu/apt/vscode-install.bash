green_text "Installing prerequisites for vscode"
sudo apt update
sudo apt install software-properties-common apt-transport-https wget -y

blue_text "Adds GPG key (vscode)"
curl -fsSL https://packages.microsoft.com/keys/microsoft.asc | sudo gpg --dearmor -o /etc/apt/keyrings/packages.microsoft.gpg

blue_text "Setting up the repository (vscode)"
echo \
  "deb [arch=amd64,arm64,armhf signed-by=/etc/apt/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/code stable main" \
  | sudo tee /etc/apt/sources.list.d/vscode.list > /dev/null

green_text "Installing vscode (using apt)"
sudo apt update
sudo apt install code -y
