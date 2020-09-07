- Sign in:
  - Google Chrome
  - Spotify
  - Git
  - Heroku
  - Visual Studio Code: Settings Sync
  - Slack
    - Workspaces: React Brasil

gsettings set org.gnome.shell favorite-apps "['google-chrome.desktop', 'com.spotify.Client.desktop', 'zoom-client_zoom-client.desktop', 'com.slack.Slack.desktop', 'discord_discord.desktop', 'code.desktop', 'org.gnome.Terminal.desktop', 'org.gnome.tweaks.desktop', 'pavucontrol.desktop', 'virtualbox.desktop', 'com.getpostman.Postman.desktop', 'insomnia_insomnia.desktop', 'com.obsproject.Studio.desktop']"

utils:

sudo apt-get install ppa-purge

Placa de vídeo: sudo lshw -c video
Radeon HD 8850M / R9 M265X

https://sempreupdate.com.br/como-instalar-os-drivers-amd-radeon-no-ubuntu/

https://www.amd.com/pt/support/graphics/amd-radeon-hd/amd-radeon-hd-8000m-series/amd-radeon-hd-8850m-series-gpu

https://www.amd.com/en/support/kb/release-notes/rn-prorad-lin-18-40

- Radeon™ Software for Linux® version 18.40 for Ubuntu 18.04.1

ref: https://askubuntu.com/questions/1040474/warning-amdgpu-dkms-failed-for-running-kernel-on-both-16-04-18-04

\$ apt install amdgpu-dkms libdrm-amdgpu-amdgpu1 libdrm-amdgpu1 libdrm2-amdgpu

https://unix.stackexchange.com/questions/501267/how-to-fix-amdgpu-dkms-failed-for-running-kernel-when-installing-amd-gpu-drive

~/Downloads/amdgpu-pro-18.40-697810-ubuntu-18.04 \$ dkms status
amdgpu, 18.40-697810: added
nvidia, 450.66, 5.4.0-45-generic, x86_64: installed
virtualbox, 5.2.42, 5.4.0-45-generic, x86_64: installed

https://superuser.com/questions/1518856/amdgpu-dkms-fails-for-running-kernel

https://bugs.freedesktop.org/show_bug.cgi?id=111042

https://www.amd.com/en/support/kb/release-notes/rn-amdgpu-unified-linux-20-10

https://www.amd.com/en/support/kb/release-notes/rn-rad-lin-19-10-unified

~/Downloads/amdgpu-pro-20.10-1048554-ubuntu-18.04 \$ dkms status
amdgpu, 5.4.7.53-1048554, 5.4.0-45-generic, x86_64: installed
nvidia, 450.66, 5.4.0-45-generic, x86_64: installed
virtualbox, 5.2.42, 5.4.0-45-generic, x86_64: installed

https://diolinux.com.br/2019/09/tudo-sobre-drivers-amd-no-linux.html

dpkg -l | grep -i nvidia

sudo apt-get install deborphan

lspci -k
