green_text "Downloading dotnet"
wget https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb -O packages-microsoft-prod.deb

green_text "Installing dotnet"
sudo dpkg -i packages-microsoft-prod.deb
rm packages-microsoft-prod.deb

green_text "Installing dotnet (sdk-3.1, runtime-3.1, aspnetcore-runtime-3.1)"
sudo apt-get update
sudo apt-get install \
  apt-transport-https \
  dotnet-sdk-3.1 \
  dotnet-runtime-3.1 \
  aspnetcore-runtime-3.1 -y
