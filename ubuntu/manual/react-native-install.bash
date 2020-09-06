green_text "Installing default-jdk (using apt)"
sudo apt install default-jdk -y

green_text "Installing Android Studio (using flatpak)"
flatpak install flathub com.google.AndroidStudio -y

# ref: https://github.com/flatpak/flatpak/issues/1437
flatpak override --user --filesystem=host com.google.AndroidStudio

green_text "Installing linuxbrew-wrapper (using apt)"
sudo apt install linuxbrew-wrapper -y
echo 'export PATH="/home/linuxbrew/.linuxbrew/bin:$PATH"' >> ~/.bashrc
source ~/.bashrc

green_text "Installing watchman (using brew)"
# brew install watchman

green_text "Installing qemu-kvm (using apt)"
sudo apt install qemu-kvm -y

https://stackoverflow.com/questions/37300811/android-studio-dev-kvm-device-permission-denied/45749003
# ref: https://blog.chirathr.com/android/ubuntu/2018/08/13/fix-avd-error-ubuntu-18-04/
sudo adduser $USER kvm
# sudo mkdir -p /dev/kvm
# sudo setfacl -m u:$USER:rwx /dev/kvm
