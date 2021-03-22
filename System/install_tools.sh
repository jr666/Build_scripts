#!/bin/bash

# Define colors...
RED=`tput bold && tput setaf 1`
GREEN=`tput bold && tput setaf 2`
YELLOW=`tput bold && tput setaf 3`
BLUE=`tput bold && tput setaf 4`
NC=`tput sgr0`

function RED(){
	echo -e "\n${RED}${1}${NC}"
}
function GREEN(){
	echo -e "\n${GREEN}${1}${NC}"
}
function YELLOW(){
	echo -e "\n${YELLOW}${1}${NC}"
}
function BLUE(){
	echo -e "\n${BLUE}${1}${NC}"
}

# Testing if root...
if [ $UID -ne 0 ]
then
	RED "You must run this script as root!" && echo
	exit
fi

BLUE "Updating repositories..."
sudo apt update

BLUE "Installing git..."
sudo apt install -y git

BLUE "Installing terminator..."
sudo apt install -y terminator

BLUE "Installing guake..."
sudo apt-get install -y guake

## Logitech Unifying Receiver
BLUE "Installing solarr (Logitech Unifying Receiver"
sudo apt install -y solaar

## Insert LOGIN BANNER items/tool status' into /etc/update-motd.d/
# 

## Performance Tools
## NVidia GPU htop-type monitor
BLUE "Installing nvtop"
sudo apt install -y nvtop

BLUE "Installing htop"
sudo apt install -y htop

## Network Utilities
BLUE "Installing curl..."
sudo apt-get install -y curl

## Security Tools
