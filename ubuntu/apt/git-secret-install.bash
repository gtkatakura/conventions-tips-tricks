blue_text "Adds GPG key (git-secret)"
curl -fsSL https://gitsecret.jfrog.io/artifactory/api/gpg/key/public | sudo gpg --dearmor -o /etc/apt/keyrings/git-secret.gpg

blue_text "Setting up the repository (git-secret)"
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/git-secret.gpg] https://gitsecret.jfrog.io/artifactory/git-secret-deb git-secret main" \
  | sudo tee /etc/apt/sources.list.d/git-secret.list > /dev/null

green_text "Installing git-secret (using apt)"
sudo apt update
sudo apt install git-secret -y
