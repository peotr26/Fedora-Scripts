#! /bin/bash

sudo dnf install -y https://repo.protonvpn.com/fedora-36-stable/release-packages/protonvpn-stable-release-1.0.1-1.noarch.rpm

sudo dnf install -y protonvpn

if dnf list --installed | grep "gnome-session"
then
    sudo dnf install libappindicator-gtk3 gnome-shell-extension-appindicator
    gnome-extention enable appindicator
fi

