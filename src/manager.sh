#!/bin/bash

echo " "
echo "[+] Start Installing Fterm Manager"
echo " "
sudo apt-get install software-properties-common -y
sudo apt update
echo " "
echo "[+] Essential Packages Succesful installed"
echo "[+] Start Adding PPA"
echo "[+] Please Accept, if needed"
echo " "
sudo add-apt-repository ppa:alexander314/ubuntu-amhf-unstable
sudo apt update
echo " "
echo "[+] Downlaod Manager"
echo " "
sudo apt install aptx -y
echo " "
echo "[+] Manager addet succesful"
echo "[+] Create Trigger"
echo " "
wget https://subuntux.github.io/fterm/trigger.sh
mv trigger.sh $HOME
cd $HOME
chmod +x trigger.sh
mv trigger.sh /usr/share/fterm/src/
echo " "
echo "[+] Trigger Set Succesfull"
echo "[+] Finish"
