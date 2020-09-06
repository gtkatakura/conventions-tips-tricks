CURRENT_DIR="$(dirname "$(realpath "$0")")"
ROOT_DIR="$CURRENT_DIR/.."

source $CURRENT_DIR/common.bash

# configure git
blue_text "Configuring git configs (gtkatakura <gt.katakura@gmail.com>)"
git config --global user.email "gt.katakura@gmail.com"
git config --global user.name "gtkatakura"

git config --global credential.helper store

source $ROOT_DIR/git/aliases.bash

# configure .termscripts
blue_text "Configuring .termscripts"
mkdir -p ~/.termscripts
cp -r $ROOT_DIR/bash ~/.termscripts

if ! $(grep "for f in ~/.termscripts/bash/*; do source \$f; done" $HOME/.bashrc &>/dev/null); then
  echo "Adding 'for f in ~/.termscripts/bash/*; do source \$f; done' to $HOME/.bashrc"
  echo "for f in ~/.termscripts/bash/*; do source \$f; done" >> $HOME/.bashrc
fi

for f in $CURRENT_DIR/apt/*; do source $f; done
for f in $CURRENT_DIR/snap/*; do source $f; done
for f in $CURRENT_DIR/flatpak/*; do source $f; done
for f in $CURRENT_DIR/manual/*; do source $f; done

# asdf plugin-add python

# install yarn
# curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
# echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list

# sudo apt update && sudo apt install yarn
