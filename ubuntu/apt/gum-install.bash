blue_text "Adds GPG key (charm)"
curl -fsSL https://repo.charm.sh/apt/gpg.key | sudo gpg --dearmor -o /etc/apt/keyrings/charm.gpg

blue_text "Setting up the repository (charm)"
echo \
  "deb [signed-by=/etc/apt/keyrings/charm.gpg] https://repo.charm.sh/apt/ * *" \
  | sudo tee /etc/apt/sources.list.d/charm.list > /dev/null

green_text "Installing gum (using apt)"
sudo apt update
sudo apt install gum -y
