#! /bin/bash

wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/Nvtop_fedora/nvtop
wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/Nvtop_fedora/nvtop.1

sudo cp nvtop /usr/local/bin
sudo cp nvtop.1 /usr/local/share/man/man1
