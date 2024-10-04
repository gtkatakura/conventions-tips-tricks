blue_text "Adds GPG key (charles-proxy)"
sudo curl -fsSLo /etc/apt/keyrings/charles-proxy.asc https://www.charlesproxy.com/packages/apt/charles-repo.asc

blue_text "Setting up the repository (charles-proxy)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/charles-proxy.asc] https://www.charlesproxy.com/packages/apt/ charles-proxy main" \
  | sudo tee /etc/apt/sources.list.d/charles-proxy.list > /dev/null

green_text "Installing charles-proxy (using apt)"
sudo apt update
sudo apt install charles-proxy -y
