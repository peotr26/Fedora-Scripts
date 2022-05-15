#! /bin/bash

wget https://raw.githubusercontent.com/peotr26/Fedora-Scripts/main/Ressources/Nvtop_fedora/nvtop
wget https://raw.githubusercontent.com/Syllo/nvtop/master/manpage/nvtop.in

sudo cp nvtop /usr/local/bin
sudo cp nvtop.in /usr/local/share/man/man1

sudo chmod +x /usr/local/bin/nvtop

sudo mv /usr/local/share/man/man1/nvtop.in nvtop.1
