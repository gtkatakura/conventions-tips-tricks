green_text "Installing prerequisites for asdf-ruby"
sudo apt install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev libdb-dev

green_text "Adding ruby to asdf"
asdf plugin-add ruby https://github.com/asdf-vm/asdf-ruby.git
