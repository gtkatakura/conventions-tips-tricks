green_text "Installing Android Studio (using flatpak)"
flatpak install flathub com.google.AndroidStudio --user -y

# https://developer.android.com/studio/run/emulator-acceleration#vm-linux
# https://gist.github.com/ivgiuliani/6882218
# sudo apt-get install cpu-checker -y
# egrep -c '(vmx|svm)' /proc/cpuinfo
# green_text "Installing KVM (enabling VM acceleration to Android Studio)"
# sudo apt-get install qemu-kvm libvirt-daemon-system libvirt-clients bridge-utils -y
# sudo adduser "$USER" kvm
# sudo adduser "$USER" libvirtd

# flatpak uninstall --delete-data com.google.AndroidStudio -y
# https://github.com/facebook/react-native/issues/43320#issuecomment-1999614203
# https://developer.android.com/studio/emulator_archive
