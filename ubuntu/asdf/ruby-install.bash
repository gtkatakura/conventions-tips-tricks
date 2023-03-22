# https://github.com/rbenv/ruby-build/wiki#ubuntudebianmint
green_text "Installing prerequisites for asdf-ruby"
sudo apt install autoconf bison patch build-essential rustc libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libgmp-dev libncurses5-dev libffi-dev libgdbm6 libgdbm-dev libdb-dev uuid-dev -y

green_text "Adding ruby to asdf"
asdf plugin add ruby https://github.com/asdf-vm/asdf-ruby.git
