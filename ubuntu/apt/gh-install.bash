# https://github.com/cli/cli/blob/trunk/docs/install_linux.md

blue_text "Adds GPG key (github-cli)"
curl -fsSL https://cli.github.com/packages/githubcli-archive-keyring.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/githubcli.gpg

blue_text "Setting up the repository (github-cli)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/githubcli.gpg] https://cli.github.com/packages stable main" \
  | sudo tee /etc/apt/sources.list.d/github-cli.list > /dev/null

green_text "Installing gh (using apt)"
sudo apt update
sudo apt install gh -y
