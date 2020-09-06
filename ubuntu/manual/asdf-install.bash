green_text "Downloading asdf"
git clone https://github.com/asdf-vm/asdf.git ~/.asdf --branch v0.7.1

green_text "Adding asdf bash files to ~/.bashrc"
echo -e '\n. $HOME/.asdf/asdf.sh' >> ~/.bashrc
echo -e '\n. $HOME/.asdf/completions/asdf.bash' >> ~/.bashrc
