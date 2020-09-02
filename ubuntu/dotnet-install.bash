wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get update

sudo apt-get install \
  apt-transport-https \
  dotnet-sdk-3.1 \
  dotnet-runtime-3.1 \
  aspnetcore-runtime-3.1
