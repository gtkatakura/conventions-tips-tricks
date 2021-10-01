green_text "Installing nixos"
sh <(curl -L https://nixos.org/nix/install) --no-daemon

if ! $(grep "source \$HOME/.nix-profile/etc/profile.d/nix.sh" $HOME/.bashrc &>/dev/null); then
  echo "source \$HOME/.nix-profile/etc/profile.d/nix.sh" >> "$HOME"/.bashrc
fi

green_text "Installing direnv"
curl -sfL https://direnv.net/install.sh | bash

if ! $(grep 'eval "$(direnv hook bash)"' $HOME/.bashrc &>/dev/null); then
  echo 'eval "$(direnv hook bash)"' >> "$HOME"/.bashrc
fi

# nix-env -iA nixpkgs.niv
