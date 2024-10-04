blue_text "Adds GPG key (warp-terminal)"
curl -fsSL https://releases.warp.dev/linux/keys/warp.asc | sudo gpg --dearmor -o /etc/apt/keyrings/warp-terminal.gpg

blue_text "Setting up the repository (warp-terminal)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/warp-terminal.gpg] https://releases.warp.dev/linux/deb stable main" \
  | sudo tee /etc/apt/sources.list.d/warp-terminal.list > /dev/null

green_text "Installing warp-terminal (using apt)"
sudo apt update
sudo apt install warp-terminal -y
