#!/bin/bash

clear
echo "Welcome to the Installers"

echo "The following will be installed: 
	+ VS Code
	+ Git
	+ Node.js (current release)
	+ Docker 
"
echo "Install Curl First ...."
sudo apt update && sudo apt upgrade
sudo apt install curl
echo "Instlal Vim ...."
sudo apt remove --assume-yes vim-tiny 
sudo apt update
sudo apt install --assume-yes vim
vi --version

echo "Now installing VSCODE .... "
curl https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > packages.microsoft.gpg
sudo install -o root -g root -m 644 packages.microsoft.gpg /usr/share/keyrings/
sudo sh -c 'echo "deb [arch=amd64 signed-by=/usr/share/keyrings/packages.microsoft.gpg] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'

sudo apt-get install apt-transport-https -y
sudo apt-get update -y
sudo apt-get install code -y # or code-insiders

echo "VSCODE installed!"
clear

echo "Now installing GIT .... "
sudo apt install git -y

echo "Git Installed!"
clear

echo "Now installing Node.js .... "
sudo apt-get install curl -y
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
sudo apt-get install nodejs -y

echo "Node.js check"
npm -v
echo "Node.js installed"
clear

echo "Do you want to install Docker? y/n only"
read choice 

if [ $choice == "y" ] || [ $choice == "Y" ]
then
 echo "Now installing Docker .... "
 sudo apt update -y
 sudo apt install apt-transport-https ca-certificates curl software-properties-common
 curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
 sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu bionic stable"
 sudo apt update -y
 apt-cache policy docker-ce
 sudo apt install docker-ce
fi

clear

echo "Thank you for using Installers by Koji Adriano Jr. 
If you have questions send email:iisparkplugiiog@gmail.com"
echo "This script file is open source, you can add anything you want. If the folder does not exist, create."

