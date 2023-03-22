blue_text "Adds GPG key (awsvpnclient)"
curl -fsSL https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo/awsvpnclient_public_key.asc | sudo gpg --dearmor -o /etc/apt/keyrings/awsvpnclient.gpg

blue_text "Setting up the repository (awsvpnclient)"
echo \
  "deb [arch=amd64 signed-by=/etc/apt/keyrings/awsvpnclient.gpg] https://d20adtppz83p9s.cloudfront.net/GTK/latest/debian-repo ubuntu-20.04 main" \
  | sudo tee /etc/apt/sources.list.d/awsvpnclient.list > /dev/null

green_text "Installing awsvpnclient (using apt)"
sudo apt update

# https://repost.aws/questions/QUNJeF_ja_Suykous7EvfX5Q/aws-client-vpn-on-ubuntu-22-04
wget -P /tmp http://archive.ubuntu.com/ubuntu/pool/main/o/openssl/libssl1.1_1.1.0g-2ubuntu4_amd64.deb
sudo dpkg -i /tmp/libssl1.1_1.1.0g-2ubuntu4_amd64.deb

sudo apt install awsvpnclient -y
