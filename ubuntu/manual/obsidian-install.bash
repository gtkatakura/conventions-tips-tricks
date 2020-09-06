green_text "Downloading obsidian@0.8.9"
wget -P /tmp https://github.com/obsidianmd/obsidian-releases/releases/download/v0.8.9/obsidian_0.8.9_amd64.snap

green_text "Installing obsidian"
sudo snap install --dangerous /tmp/obsidian_0.8.9_amd64.snap
