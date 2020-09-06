green_text "Installing prerequisites for asdf-ruby"
sudo apt install build-essential libssl-dev libreadline-dev zlib1g-dev -y

green_text "Adding ruby to asdf"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
