green_text "Downloading mise"
curl https://mise.run | sh

green_text "Adding mise to ~/.bashrc"
echo "eval \"\$($HOME/.local/bin/mise activate bash)\"" >> ~/.bashrc
