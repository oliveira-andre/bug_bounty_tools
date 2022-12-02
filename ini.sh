#!/bin/bash

installPython3() {
  printf "${YELLOW}[*]${CLEAN} Installing Python3${END}"

  sudo apt-get update
  sudo apt-get -y install python3-pip

  printf "${GREEN}[+]${CLEAN} Python3 Installed${END}${END}"
}

installJQ() {
  printf "${YELLOW}[*]${CLEAN} Installing JQ${END}"

  sudo apt-get -y install jq

  printf "${GREEN}[+]${CLEAN} JQ Installed${END}${END}"
}

installGo() {
  printf "${YELLOW}[*]${CLEAN} Installing GO${END}"

  wget -c https://golang.org/dl/go1.19.3.linux-amd64.tar.gz
  rm -rf /usr/local/go && sudo tar -C /usr/local -xzf go1.19.3.linux-amd64.tar.gz
  rm -rf go1.19.3.linux-amd64.tar.gz

  if [ -f "$HOME/.zshrc" ]; then
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.zshrc
  else
    echo 'export PATH=$PATH:/usr/local/go/bin' >> $HOME/.bashrc
  fi

  printf "${GREEN}[+]${CLEAN} GO Installed${END}${END}"
}

installAnew() {
  printf "${YELLOW}[*]${CLEAN} Installing Anew ${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/anew@latest
  sudo rm -rf /usr/bin/anew
  sudo ln -s $HOME/go/bin/anew /usr/bin/anew

  printf "${GREEN}[+]${CLEAN} Anew Installed${END}${END}"
}

installAssetfinder() {
  printf "${YELLOW}[*]${CLEAN} Installing Assetfinder${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/assetfinder@latest
  sudo rm -rf /usr/bin/assetfinder
  sudo ln -s $HOME/go/bin/assetfinder /usr/bin/assetfinder

  printf "${GREEN}[+]${CLEAN} Assetfinder Installed${END}${END}"
}

installAmass() {
  printf "${YELLOW}[*]${CLEAN} Installing Amass${END}"

  sudo snap install amass

  printf "${GREEN}[+]${CLEAN} Amass Installed${END}${END}"
}

installSubfinder() {
  printf "${YELLOW}[*]${CLEAN} Installing Subfinder${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/subfinder/v2/cmd/subfinder@latest

  sudo rm -rf /usr/bin/subfinder
  sudo ln -s $HOME/go/bin/subfinder /usr/bin/subfinder

  printf "${GREEN}[+]${CLEAN} Subfinder Installed${END}${END}"
}

installFindomain() {
  printf "${YELLOW}[*]${CLEAN} Installing Findomain${END}"

  cd /opt
  wget https://github.com/findomain/findomain/releases/latest/download/findomain-linux
  chmod +x findomain-linux

  sudo rm -rf /usr/bin/findomain
  sudo ln -s /opt/findomain-linux /usr/bin/findomain

  printf "${GREEN}[+]${CLEAN} Findomain Installed${END}${END}"
}

installChaos() {
  printf "${YELLOW}[*]${CLEAN} Installing Chaos${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/chaos-client/cmd/chaos@latest

  sudo rm -rf /usr/bin/chaos
  sudo ln -s $HOME/go/bin/chaos /usr/bin/chaos

  printf "${GREEN}[+]${CLEAN} Chaos Installed${END}${END}"
}

installGithubSearch() {
  printf "${YELLOW}[*]${CLEAN} Installing Github Search${END}"

  cd /opt
  git clone https://github.com/gwen001/github-search.git

  cd github-search
  pip3 install -r requirements3.txt

  printf "${GREEN}[+]${CLEAN} Github Search Installed${END}${END}"
}

installHttpx() {
  printf "${YELLOW}[*]${CLEAN} Installing HTTPX${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/httpx/cmd/httpx@latest

  sudo rm -rf /usr/bin/httpx
  sudo ln -s $HOME/go/bin/httpx /usr/bin/httpx

  printf "${GREEN}[+]${CLEAN} HTTPX Installed${END}${END}"
}

installGowitness() {
  printf "${YELLOW}[*]${CLEAN} Installing Gowitness${END}"

  /usr/local/go/bin/go install github.com/sensepost/gowitness@latest

  sudo rm -rf /usr/bin/gowitness
  sudo ln -s $HOME/go/bin/gowitness /usr/bin/gowitness

  printf "${GREEN}[+]${CLEAN} Gowitness Installed${END}${END}"
}

installWaybackurls() {
  printf "${YELLOW}[*]${CLEAN} Installing Waybackurls${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/waybackurls@latest

  sudo rm -rf /usr/bin/waybackurls
  sudo ln -s $HOME/go/bin/waybackurls /usr/bin/waybackurls

  printf "${GREEN}[+]${CLEAN} Waybackurls Installed${END}${END}"
}

installGauplus() {
  printf "${YELLOW}[*]${CLEAN} Installing GauPlus${END}"

  /usr/local/go/bin/go install -v github.com/bp0lr/gauplus@latest

  sudo rm -rf /usr/bin/gauplus
  sudo ln -s $HOME/go/bin/gauplus /usr/bin/gauplus

  printf "${GREEN}[+]${CLEAN} GauPlus Installed${END}${END}"
}

installGau() {
  printf "${YELLOW}[*]${CLEAN} Installing Gau${END}"

  /usr/local/go/bin/go install github.com/lc/gau@latest

  sudo rm -rf /usr/bin/gau
  sudo ln -s $HOME/go/bin/gau /usr/bin/gau

  printf "${GREEN}[+]${CLEAN} Gau Installed${END}${END}"
}

installMetabigor() {
  printf "${YELLOW}[*]${CLEAN} Installing Metabigor${END}"

  sudo apt-get install prips -y
  /usr/local/go/bin/go install github.com/j3ssie/metabigor@latest

  sudo rm -rf /usr/bin/metabigor
  sudo ln -s $HOME/go/bin/metabigor /usr/bin/metabigor

  printf "${GREEN}[+]${CLEAN} Metabigor Installed${END}${END}"
}

installHakrevdns() {
  printf "${YELLOW}[*]${CLEAN} Installing Hakrevdns${END}"

  /usr/local/go/bin/go install github.com/hakluke/hakrevdns@latest

  sudo rm -rf /usr/bin/hakrevdns
  sudo ln -s $HOME/go/bin/hakrevdns /usr/bin/hakrevdns

  printf "${GREEN}[+]${CLEAN} Hakrevdns Installed${END}${END}"
}

installHakcheckurl() {
  printf "${YELLOW}[*]${CLEAN} Installing Hakcheckurl${END}"

  /usr/local/go/bin/go install github.com/hakluke/hakcheckurl@latest

  sudo rm -rf /usr/bin/hakcheckurl
  sudo ln -s $HOME/go/bin/hakcheckurl /usr/bin/hakcheckurl

  printf "${GREEN}[+]${CLEAN} Hakcheckurl Installed${END}${END}"
}

installKxss() {
  printf "${YELLOW}[*]${CLEAN} Installing Kxss${END}"

  /usr/local/go/bin/go install github.com/Emoe/kxss@latest

  sudo rm -rf /usr/bin/kxss
  sudo ln -s $HOME/go/bin/kxss /usr/bin/kxss

  printf "${GREEN}[+]${CLEAN} Kxss Installed${END}${END}"
}

installDalfox() {
  printf "${YELLOW}[*]${CLEAN} Installing Dalfox${END}"

  /usr/local/go/bin/go install github.com/hahwul/dalfox/v2@latest

  sudo rm -rf /usr/bin/dalfox
  sudo ln -s $HOME/go/bin/dalfox /usr/bin/dalfox

  printf "${GREEN}[+]${CLEAN} Dalfox Installed${END}${END}"
}

installGF() {
  printf "${YELLOW}[*]${CLEAN} Installing GF${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/gf@latest

  sudo rm -rf /usr/bin/gf
  sudo ln -s $HOME/go/bin/gf /usr/bin/gf

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

  printf "${GREEN}[+]${CLEAN} GF Installed${END}${END}"
}

installParamSpider() {
  printf "${YELLOW}[*]${CLEAN} Installing ParamSpider${END}"

  cd /opt
  git clone https://github.com/devanshbatham/ParamSpider.git
  pip3 install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} ParamSpider Installed${END}${END}"
}

installUnfur() {
  printf "${YELLOW}[*]${CLEAN} Installing Unfur${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/unfurl@latest

  sudo rm -rf /usr/bin/unfurl
  sudo ln -s $HOME/go/bin/unfurl /usr/bin/unfurl

  printf "${GREEN}[+]${CLEAN} Unfur Installed${END}${END}"
}

installArjun() {
  printf "${YELLOW}[*]${CLEAN} Installing Arjun${END}"

  cd /opt
  git clone https://github.com/s0md3v/Arjun.git
  sudo python3 /opt/Arjun/setup.py install

  printf "${GREEN}[+]${CLEAN} Arjun Installed${END}${END}"
}

installSubjs() {
  printf "${YELLOW}[*]${CLEAN} Installing Subjs${END}"

  /usr/local/go/bin/go install -v github.com/lc/subjs@latest

  sudo rm -rf /usr/bin/subjs
  sudo ln -s $HOME/go/bin/subjs /usr/bin/subjs

  printf "${GREEN}[+]${CLEAN} Subjs Installed${END}${END}"
}

installAntiBurl() {
  printf "${YELLOW}[*]${CLEAN} Installing Antiburl${END}"

  cd /opt
  wget https://raw.githubusercontent.com/tomnomnom/hacks/master/anti-burl/main.go
  /usr/local/go/bin/go build main.go

  rm -rf main.go
  mv main $HOME/go/bin/anti-burl

  sudo ln -s $HOME/go/bin/anti-burl /usr/bin/anti-burl

  printf "${GREEN}[+]${CLEAN} Antiburl Installed${END}${END}"
}

installJsCollector() {
  printf "${YELLOW}[*]${CLEAN} Installing Js collector${END}"

  cd /opt
  wget https://raw.githubusercontent.com/KingOfBugbounty/Bug-Bounty-Toolz/master/collector.py

  printf "${GREEN}[+]${CLEAN} Js collector Installed${END}${END}"
}

installKiterunner() {
  printf "${YELLOW}[*]${CLEAN} Installing Kiterunner${END}"

  cd /opt
  wget https://github.com/assetnote/kiterunner/releases/download/v1.0.2/kiterunner_1.0.2_linux_amd64.tar.gz
  sudo ln -s /opt/kr /usr/bin/kite

  printf "${GREEN}[+]${CLEAN} Kiterunner Installed${END}${END}"
}

installFfuf() {
  printf "${YELLOW}[*]${CLEAN} Installing Ffuf${END}"

  /usr/local/go/bin/go install github.com/ffuf/ffuf@latest

  sudo rm -rf /usr/bin/ffuf
  sudo ln -s $HOME/go/bin/ffuf /usr/bin/ffuf

  printf "${GREEN}[+]${CLEAN} Ffuf Installed${END}${END}"
}

installNuclei() {
  printf "${YELLOW}[*]${CLEAN} Installing Nuclei${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/nuclei/v2/cmd/nuclei@latest

  sudo rm -rf /usr/bin/nuclei
  sudo ln -s $HOME/go/bin/nuclei /usr/bin/nuclei
  nuclei -update-templates

  printf "${GREEN}[+]${CLEAN} Nuclei Installed${END}${END}"
}

installJSscanner() {
  printf "${YELLOW}[*]${CLEAN} Installing JSscanner${END}"

  cd /opt
  git clone https://github.com/0x240x23elu/JSScanner.git
  cd JSScanner
  pip3 install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} JSscanner Installed${END}${END}"
}

installDnsx() {
  printf "${YELLOW}[*]${CLEAN} Installing DNSX${END}"

  /usr/local/go/bin/go install github.com/projectdiscovery/dnsx/cmd/dnsx@latest

  sudo rm -rf /usr/bin/dnsx
  sudo ln -s $HOME/go/bin/dnsx /usr/bin/dnsx

  printf "${GREEN}[+]${CLEAN} DNSX Installed${END}${END}"
}

installGoop() {
  printf "${YELLOW}[*]${CLEAN} Installing GOOP${END}"

  /usr/local/go/bin/go install github.com/deletescape/goop@latest

  sudo rm -rf /usr/bin/goop
  sudo ln -s $HOME/go/bin/goop /usr/bin/goop

  printf "${GREEN}[+]${CLEAN} GOOP Installed${END}${END}"
}

installKnockPy() {
  printf "${YELLOW}[*]${CLEAN} Installing Knock.py${END}"

  cd /opt
  git clone https://github.com/guelfoweb/knock.git
  cd knock
  pip3 install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} Knock.py Installed${END}${END}"
}

installPhoton() {
  printf "${YELLOW}[*]${CLEAN} Installing Photon${END}"

  cd /opt
  git clone https://github.com/s0md3v/Photon.git
  cd Photon
  pip3 install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} Photon Installed${END}${END}"
}

installMeg() {
  printf "${YELLOW}[*]${CLEAN} Installing Meg${END}"

  /usr/local/go/bin/go install github.com/tomnomnom/meg

  sudo rm -rf /usr/bin/meg
  sudo ln -s $HOME/go/bin/meg /usr/bin/meg

  printf "${GREEN}[+]${CLEAN} Meg Installed${END}${END}"
}

installSudomy() {
  printf "${YELLOW}[*]${CLEAN} Installing Sudomy${END}"

  cd /opt
  git clone --recursive https://github.com/screetsec/Sudomy.git
  cd Sudomy
  python3 -m pip install -r requirements.txt

  printf "${GREEN}[+]${CLEAN} Sudomy Installed${END}${END}"
}

installUro() {
  printf "${YELLOW}[*]${CLEAN} Installing Uro${END}"

  pip3 install uro

  printf "${GREEN}[+]${CLEAN} Uro Installed${END}${END}"
}

installFreq() {
  printf "${YELLOW}[*]${CLEAN} Installing Freq${END}"

  /usr/local/go/bin/go install github.com/takshal/freq@latest

  sudo rm -rf /usr/bin/freq
  sudo ln -s $HOME/go/bin/freq /usr/bin/freq

  printf "${GREEN}[+]${CLEAN} Freq Installed${END}${END}"
}

installSdlookup() {
  printf "${YELLOW}[*]${CLEAN} Installing Sdlookup${END}"

  /usr/local/go/bin/go install github.com/j3ssie/sdlookup@latest

  sudo rm -rf /usr/bin/sdlookup
  sudo ln -s $HOME/go/bin/sdlookup /usr/bin/sdlookup

  printf "${GREEN}[+]${CLEAN} Sdlookup Installed${END}${END}"
}

installDnsValidator() {
  printf "${YELLOW}[*]${CLEAN} Installing DnsValidator${END}"

  cd /opt
  git clone https://github.com/vortexau/dnsvalidator.git
  cd dnsvalidator
  python3 setup.py install

  printf "${GREEN}[+]${CLEAN} DnsValidator Installed${END}${END}"
}

installPureDns() {
  printf "${YELLOW}[*]${CLEAN} Installing PureDns${END}"

  cd /opt
  git clone https://github.com/blechschmidt/massdns.git
  cd massdns
  make
  sudo make install

  /usr/local/go/bin/go install github.com/d3mondev/puredns/v2@latest

  sudo rm -rf /usr/bin/puredns
  sudo ln -s $HOME/go/bin/puredns /usr/bin/puredns

  printf "${GREEN}[+]${CLEAN} PureDns Installed${END}${END}"
}

installSigurlfinder() {
  printf "${YELLOW}[*]${CLEAN} Installing Sigurlfind3r${END}"

  /usr/local/go/bin/go install github.com/signedsecurity/sigurlfind3r/cmd/sigurlfind3r@latest

  sudo rm -rf /usr/bin/sigurlfind3r
  sudo ln -s $HOME/go/bin/sigurlfind3r /usr/bin/sigurlfind3r

  printf "${GREEN}[+]${CLEAN} Sigurlfind3r Installed${END}${END}"
}

installAirixss() {
  printf "${YELLOW}[*]${CLEAN} Installing AiriXss${END}"

  /usr/local/go/bin/go install github.com/chromedp/chromedp@latest
  sudo rm -rf /usr/bin/chromedp
  sudo ln -s $HOME/go/bin/chromedp /usr/bin/chromedp

  /usr/local/go/bin/go install github.com/ferreiraklet/airixss@latest
  sudo rm -rf /usr/bin/airixss
  sudo ln -s $HOME/go/bin/airixss /usr/bin/airixss

  printf "${GREEN}[+]${CLEAN} AiriXss Installed${END}${END}"
}

installNilo() {
  printf "${YELLOW}[*]${CLEAN} Installing Nilo${END}"

  /usr/local/go/bin/go install github.com/ferreiraklet/nilo@latest

  sudo rm -rf /usr/bin/nilo
  sudo ln -s $HOME/go/bin/nilo /usr/bin/nilo
  
  printf "${GREEN}[+]${CLEAN} Nilo Installed${END}${END}"
}

installMassTrufflehog() {
  printf "${YELLOW}[*]${CLEAN} Installing MassTrufflehog${END}"

  if [ -f "$HOME/.zshrc" ]; then
    echo 'alias masstrufflehog="sudo docker run --rm mswell/masstrufflehog"' >> $HOME/.zshrc
  else
    echo 'alias masstrufflehog="sudo docker run --rm mswell/masstrufflehog"' >> $HOME/.bashrc
  fi
  
  printf "${GREEN}[+]${CLEAN} MassTrufflehog Installed${END}${END}"
}

dependenciesLinux() {
  installPython3
  installJQ
  installGo
  installAnew
  installAssetfinder
  installAmass
  installSubfinder
  installFindomain
  installChaos
  installGithubSearch
  installGowitness
  installWaybackurls
  installGauplus
  installGau
  installMetabigor
  installHakrevdns
  installHakcheckurl
  installKxss
  installDalfox
  installGF
  installParamSpider
  installUnfur
  installArjun
  installSubjs
  installAntiBurl
  installJsCollector
  installKiterunner
  installFfuf
  installNuclei
  installJSscanner
  installDnsx
  installGoop
  installKnockPy
  installPhoton
  installMeg
  installSudomy
  installUro
  installFreq
  installSdlookup
  installDnsValidator
  installPureDns
  installSigurlfinder
  installAirixss
  installNilo
  installMassTrufflehog

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

CLEAN='\033[0m'
RED='\033[01;31m'
YELLOW='\033[01;33m'
WHITE='\033[01;37m'
GREEN='\033[01;32m'
BOLD='\033[1m'
END='\n'

main() {
  printf "${CLEAN}Welcome to ${CLEAN}${GREEN}BugBountyTools${CLEAN} installation${END}"
  printf "${YELLOW}[*]${CLEAN} Searching for your current OS${END}${END}"
  findCurrentOS

  case "$currentOs" in
    "LINUX")
      printf "${GREEN}[+]${CLEAN} Linux OS detected${END}"
      printf "${YELLOW}[*]${CLEAN} Installing dependencies ...${END}${END}"
      dependenciesLinux
    ;;
    "OSX")
      printf "${GREEN}[+]${CLEAN} MacOSX detected${END}"
      printf "${RED}[-]${CLEAN} Sorry! still Work In Progress${END}${END}"
    ;;
    "UNKNOWN")
      printf "${RED}[-]${CLEAN}Not supported OS${END}"
    ;;
  esac
}

main
