sudo apt install default-jdk -y

flatpak install flathub com.google.AndroidStudio -y

# ref: https://github.com/flatpak/flatpak/issues/1437
flatpak override --user --filesystem=host com.google.AndroidStudio

sudo apt install linuxbrew-wrapper -y
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc
brew install watchman

# ref: https://blog.chirathr.com/android/ubuntu/2018/08/13/fix-avd-error-ubuntu-18-04/
sudo apt install qemu-kvm -y
sudo adduser $USER kvm
sudo mkdir -p /dev/kvm
sudo setfacl -m u:$USER:rwx /dev/kvm
