# https://brave.com/linux

blue_text "Adds GPG key (opera-browser)"
curl -fsSL https://deb.opera.com/archive.key | sudo gpg --dearmor -o /etc/apt/keyrings/opera-browser.gpg

blue_text "Setting up the repository (opera-browser)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/opera-browser.gpg] https://deb.opera.com/opera-stable/ stable non-free" \
  | sudo tee /etc/apt/sources.list.d/opera-browser.list > /dev/null

green_text "Installing opera"
sudo apt-get update
sudo apt-get install opera-stable -y
