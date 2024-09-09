blue_text "Adds GPG key (mullvad-vpn)"
sudo curl -fsSLo /usr/share/keyrings/mullvad-keyring.asc https://repository.mullvad.net/deb/mullvad-keyring.asc

blue_text "Setting up the repository (mullvad-vpn)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/mullvad-keyring.asc] https://repository.mullvad.net/deb/stable $(lsb_release -cs) main" \
  | sudo tee /etc/apt/sources.list.d/mullvad.list > /dev/null


green_text "Installing mullvad-vpn (using apt)"
sudo apt update
sudo apt install mullvad-vpn -y
