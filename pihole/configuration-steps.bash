dcu

# sudo lsof -i -P -n | grep 67
# sudo lsof -i -P -n | grep 53

# https://discourse.pi-hole.net/t/docker-unable-to-bind-to-port-53/45082/7
sudo systemctl disable systemd-resolved.service
sudo systemctl stop systemd-resolved

# replaces nameserver 127.0.0.53 to 127.0.0.1
# sudo vim /etc/resolv.conf

# https://unix.stackexchange.com/questions/673610/why-has-dnsmasq-started-running-and-taking-up-53-so-that-my-unbound-cant-start
virsh net-destroy default
virsh net-autostart --disable default
