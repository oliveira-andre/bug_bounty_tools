#!/bin/bash

dependencies() {
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


  echo "Installing Assetfinder"

  snap install amass


  echo "Installing Subfinder"

  GO111MODULE=on go get -v github.com/projectdiscovery/subfinder/v2/cmd/subfinder
  ln -s $HOME/go/bin/subfinder /usr/bin/subfinder


  echo "Installing Findomain"

  cd /opt
  wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
  chmod +x findomain-linux
  ln -s /opt/findomain-linux /usr/bin/findomain


  echo "Installing Chaos"

  GO111MODULE=on go get -v github.com/projectdiscovery/chaos-client/cmd/chaos
  ln -s $HOME/go/bin/chaos /usr/bin/chaos


  echo "Installing Github Search"

  cd /opt
  git clone https://github.com/gwen001/github-search.git
  cd github-search
  pip3 install -r requirements3.txt


  echo "Installing HTTPX"

  GO111MODULE=on go get -v github.com/projectdiscovery/httpx/cmd/httpx
  ln -s $HOME/go/bin/httpx /usr/bin/httpx


  echo "Installing Gowitness"

  go get -u -v github.com/sensepost/gowitness
  ln -s $HOME/go/bin/gowitness /usr/bin/gowitness


  echo "Installing Waybackurls"

  go get -u -v github.com/tomnomnom/waybackurls
  ln -s $HOME/go/bin/waybackurls /usr/bin/waybackurls


  echo "Installing GauPlus"

  GO111MODULE=on go get -u -v github.com/bp0lr/gauplus
  ln -s $HOME/go/bin/gauplus /usr/bin/gauplus



  echo "Installing Gau"

  GO111MODULE=on go get -u -v github.com/lc/gau
  ln -s $HOME/go/bin/gau /usr/bin/gau


  echo "Installing Metabigor"

  sudo apt-get install prips -y
  GO111MODULE=on go get github.com/j3ssie/metabigor
  ln -s $HOME/go/bin/metabigor /usr/bin/metabigor


  echo "Installing Hakrevdns"

  go get github.com/hakluke/hakrevdns
  ln -s $HOME/go/bin/hakrevdns /usr/bin/hakrevdns


  echo "Installing hakcheckurl"

  go install github.com/hakluke/hakcheckurl@latest
  ln -s $HOME/go/bin/hakcheckurl /usr/bin/hakcheckurl


  echo "Installing Kxss"

  go get github.com/Emoe/kxss
  ln -s $HOME/go/bin/kxss /usr/bin/kxss

  echo "Installing Dalfox"

  GO111MODULE=on go get -v github.com/hahwul/dalfox/v2
  ln -s $HOME/go/bin/dalfox /usr/bin/dalfox


  echo "Installing GF"

  go get -u github.com/tomnomnom/gf
  ln -s $HOME/go/bin/gf /usr/bin/gf

  if [ -d "$HOME/.gf" ]
  then
    cd /opt
    git clone https://github.com/tomnomnom/gf.git

    mkdir /opt/shell_plugins
    mv /opt/gf/gf-completion.zsh /opt/shell_plugins/gf-completion.zsh
    echo 'source /opt/shell_plugins/gf-completion.zshrc' >> $HOME/.zshrc

    cp -r /opt/gf/gf/examples $HOME/.gf
    rm -rf /opt/gf

    git clone https://github.com/1ndianl33t/Gf-Patterns
    mv /opt/Gf-Patterns/*.json $HOME/.gf
    rm -rf /opt/Gf-Patterns

    source /opt/shell_plugins/gf-completion.zshrc
  else
    mkdir $HOME/.gf
    cd /opt
    git clone https://github.com/tomnomnom/gf.git

    mkdir /opt/shell_plugins
    mv /opt/gf/gf-completion.zsh /opt/shell_plugins/gf-completion.zsh
    echo 'source /opt/shell_plugins/gf-completion.zsh' >> $HOME/.zshrc

    cp -r /opt/gf/gf/examples/* $HOME/.gf
    rm -rf /opt/gf

    git clone https://github.com/1ndianl33t/Gf-Patterns
    mv /opt/Gf-Patterns/*.json $HOME/.gf
    rm -rf /opt/Gf-Patterns

    source /opt/shell_plugins/gf-completion.zshrc
  fi


  echo "Installing ParamSpider"

  cd /opt
  git clone https://github.com/devanshbatham/ParamSpider
  pip3 install -r requirements.txt


  echo "Installing Unfur"

  go get -u github.com/tomnomnom/unfurl
  ln -s $HOME/go/bin/unfurl /usr/bin/unfurl


  echo "Installing Arjun"

  cd /opt
  git clone https://github.com/s0md3v/Arjun.git
  sudo python3 /opt/Arjun/setup.py install


  echo "Installing Subjs"

  GO111MODULE=on go get -u -v github.com/lc/subjs
  ln -s $HOME/go/bin/subjs /usr/bin/subjs


  echo "Installing Antiburl"

  cd /opt
  wget https://raw.githubusercontent.com/tomnomnom/hacks/master/anti-burl/main.go
  go build main.go

  rm -rf main.go
  mv main $HOME/go/bin/anti-burl

  ln -s $HOME/go/bin/anti-burl /usr/bin/anti-burl


  echo "Installing Js collector"

  cd /opt
  wget https://raw.githubusercontent.com/KingOfBugbounty/Bug-Bounty-Toolz/master/collector.py


  echo "Installing Kiterunner"

  cd /opt
  wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz
  ln -s /opt/kr /usr/bin/kite


  echo "Installing Ffuf"

  go get -u github.com/ffuf/ffuf
  ln -s $HOME/go/bin/ffuf /usr/bin/ffuf


  echo "Installing Nuclei"

  GO111MODULE=on go get -v github.com/projectdiscovery/nuclei/v2/cmd/nuclei
  ln -s $HOME/go/bin/nuclei /usr/bin/nuclei
  nuclei -update-templates


  echo "Installing JSscanner"

  cd /opt
  git clone https://github.com/0x240x23elu/JSScanner.git
  cd JSScanner
  pip3 install -r requirements.txt


  echo "Installing DNSX"
  go install -v github.com/projectdiscovery/dnsx/cmd/dnsx@latest
  ln -s $HOME/go/bin/dnsx /usr/bin/dnsx


  echo "Installing GOOP"
  go get -u github.com/deletescape/goop@latest
  ln -s $HOME/go/bin/goop /usr/bin/goop


  echo "Installing Knock.py"
  cd /opt
  git clone https://github.com/guelfoweb/knock.git
  cd knock
  pip3 install -r requirements.txt


  echo "Installing Photon"
  cd /opt
  git clone https://github.com/s0md3v/Photon.git
  cd Photon
  pip3 install -r requirements.txt


  echo "Installing Meg"
  go install -v github.com/tomnomnom/meg
  ln -s $HOME/go/bin/meg /usr/bin/meg


  echo "Don't forget to put the API keys on Subfinder on: $HOME/.config/subfinder/config.yaml"
  echo "Don't forget to put the API key on Chaos like this: echo 'export CHAOS_KEY="*************bd853b95252690b3ff86c2c2c08b*******************"' >> $HOME/.bashrc"
  echo "Don't forget to put the API key on Github Search like this: echo 'export GITHUB_KEY="ghp_dxU8VCHT3bWQybKpfM***********"' >> $HOME/.bashrc"
}

currentOs="LINUX"
findCurrentOS() {
  osType=$(uname)
  case "$osType" in
    "Darwin")
      currentOs="OSX"
    ;;
    "Linux")
      currentOs="LINUX"
    ;;
    *)
      currentOs="UNKNOWN"
    ;;
  esac
}

main() {
  echo "Welcome"
  echo "Searching for your current OS..."
  findCurrentOS

  case "$currentOs" in
    "LINUX")
      echo "Linux OS detected"
      echo "Installing dependencies..."
      dependencies
    ;;
    "OSX")
      echo "MacOSX detected"
      echo "Sorry! still Work In Progress"
    ;;
    "UNKNOWN")
      echo "Not supported OS"
    ;;
  esac
}

main
