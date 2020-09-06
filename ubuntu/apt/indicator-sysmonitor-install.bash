blue_text "Adding ppa:fossfreedom/indicator-sysmonitor to apt repositories"
sudo add-apt-repository ppa:fossfreedom/indicator-sysmonitor
sudo apt update

green_text "Installing indicator-sysmonitor (using apt)"
sudo apt install indicator-sysmonitor -y

# TODO: Preferences -> Advanced -> Customize output: cpu: {cpu} mem: {mem} cputemp: {cputemp}
