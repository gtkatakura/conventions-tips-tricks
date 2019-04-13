#!/usr/bin/env bash

echo 'Downloading and executing git/aliases.sh'
curl -s https://raw.githubusercontent.com/gtkatakura/conventions-tips-tricks/master/git/aliases.sh | bash

echo
echo 'Creating ~/.termscripts'
mkdir -p ~/.termscripts

bash_files=(git-aliases prompt)

for bash_file in ${bash_files[@]}; do
  filename="$HOME/$bash_file"

  echo
  echo "Downloading bash/$bash_file.bash to ~/.termscripts/$bash_file.bash"
  curl -s https://raw.githubusercontent.com/gtkatakura/conventions-tips-tricks/master/bash/$bash_file.bash > ~/.termscripts/$bash_file.bash

  if ! $(grep "~/.termscripts/$bash_file.bash" $HOME/.bashrc &>/dev/null); then
    echo "Adding ~/.termscripts/$bash_file.bash script to $HOME/.bashrc"
    echo "source ~/.termscripts/$bash_file.bash" >> $HOME/.bashrc
  fi
done

echo
echo "Sourcing $HOME/.bashrc"
source $HOME/.bashrc