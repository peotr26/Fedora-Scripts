#! /bin/bash

while true; do
    echo "Do you want to have a multi-user or single-user installation, if you want more information check: https://nixos.org/download.html:"
    read -rp "M: multi-user; S: single-user" ms
    case $ms in
        [Mm]* ) sh <(curl -L https://nixos.org/nix/install) --daemon; break;;
        [Ss]* ) sh <(curl -L https://nixos.org/nix/install) --no-daemon; break;;
        * ) break;;
    esac
done