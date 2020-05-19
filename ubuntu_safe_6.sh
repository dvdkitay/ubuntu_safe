#!/bin/sh
LGREEN='\033[1;32m'
LCYAN='\033[1;36m'
LBLUE='\033[1;34m'
clear
echo -e "${LGREEN}Install Tor Browser"
tput sgr0  

sudo add-apt-repository ppa:micahflee/ppa
sudo apt update 
sudo apt install torbrowser-launcher -y


echo -e "${LGREEN}Install snapd"
tput sgr0
sudo apt install snapd -y

echo -e "${LGREEN}Install Telegram Desktop"
tput sgr0

sudo snap install telegram-desktop -y

echo -e "${LGREEN}Install Wickr Me"
tput sgr0

sudo apt update
sudo snap install wickrme -y

echo -e "${LGREEN}Install python-notify tor ip"
tput sgr0

sudo apt-get install tor python-notify -y

echo -e "${LGREEN}Install service tor"
tput sgr0

apt install tor -y

echo -e "${LGREEN}Setting tor service"
tput sgr0

sudo cp -var toriptables2.py /usr/local/bin/
cd /usr/local/bin
sudo chown root.root toriptables2.py
sudo chmod +x toriptables2.py
cd ~

echo -e "${LCYAN}Start service tor..."
tput sgr0

sudo python -m toriptables2 -l
