#!/bin/bash

echo "Installing Python3"

sudo apt-get update
sudo apt-get -y install python3-pip


echo "Installing JQ"

sudo apt-get -y install jq


echo "Installing Go"

wget -c https://golang.org/dl/go1.16.5.linux-amd64.tar.gz
rm -rf /usr/local/go && tar -C /usr/local -xzf go1.16.5.linux-amd64.tar.gz
rm -rf go1.16.5.linux-amd64.tar.gz

if [ -f "$HOME/.zshrc" ]; then
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.zshrc
else
  echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
fi


echo "Installing Anew"

/usr/local/go/bin/go get -u github.com/tomnomnom/anew
ln -s $HOME/go/bin/anew /usr/bin/anew


echo "Installing Assetfinder"

/usr/local/go/bin/go get -u github.com/tomnomnom/assetfinder
ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder


echo "Installing Subfinder"

GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
ln -s $HOME/go/bin/subfinder /usr/bin/subfinder


echo "Installing Findomain"

cd /opt
wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
chmod +x findomain-linux
ln -s /opt/findomain-linux /usr/bin/findomain


echo "Don't forget to put the API keys on Subfinder"
