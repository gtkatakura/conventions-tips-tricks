# theme-install tem a base

gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position "RIGHT"

gnome-shell-extension-tool -e "workspace-indicator@gnome-shell-extensions.gcampax.github.com"
gnome-shell-extension-tool -e "places-menu@gnome-shell-extensions.gcampax.github.com"

sudo sysctl fs.inotify.max_user_watches=524288
