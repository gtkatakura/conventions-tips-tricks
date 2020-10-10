blue_text "Adding ppa:asvm/ppa to apt repositories"
sudo add-apt-repository ppa:asvm/ppa
sudo apt update

green_text "Installing opam (using apt)"
sudo apt install opam -y

# TODO: Preferences -> Advanced -> Customize output: cpu: {cpu} mem: {mem} cputemp: {cputemp}

# npm install -g reason-cli@latest-linux
# npm install -g bs-platform
