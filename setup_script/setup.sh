#!/bin/bash
echo "Start installing..."
echo "made by mattzy.tech"
echo "updating..."
sudo apt-get update && apt-get -y upgrade 
echo "Installing curl and other dependencies"
sudo apt-get install -y curl 
sudo apt-get install -y docker

echo "Do you want to install CasaOS? (y/n)"
read -r antwort

if [[ "$antwort" == "y" || "$antwort" == "Y" ]]; then
    echo "Installation wird gestartet..."
    sudo curl -fsSL https://get.casaos.io | sudo bash
else
    echo "Install of CasaOS aborted"
fi

sudo apt-get update && upgrade -y
echo "Install Finished"

echo "Do you want to reboot? (y/n)"
read -r antwort

if [[ "$antwort" == "y" || "$antwort" == "Y" ]]; then
    echo "Rebooting..."
    sudo reboot
    
else
    echo "Rebooting aborted, please reboot later"
fi
