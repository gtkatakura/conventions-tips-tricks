green_text "Downloading asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.11.3

green_text "Adding asdf bash files to ~/.bashrc"
echo $'\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo $'. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
