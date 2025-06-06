# theme-install tem a base

gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "RIGHT"

gnome-shell-extension-tool -e "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
gnome-shell-extension-tool -e "places-menu@gnome-shell-extensions.gcampax.github.com"

# Set max_user_watches permanently
echo "fs.inotify.max_user_watches=524288" | sudo tee -a /etc/sysctl.conf
sudo sysctl -p

# https://unix.stackexchange.com/questions/692237/ctrl-displays-e-character-and-captures-the-keyboard-shortcut
gsettings set org.freedesktop.ibus.panel.emoji hotkey "[]"
